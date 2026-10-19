import DAF.Terrain.WindowCover
import DAF.FiniteDynamics.InvolutiveConvolution

/-!
# Globally anchored finite-window fusion

Every local operator below acts on the exact subtype carried by one absolute
window.  Its result is zero-extended back into the fixed maximal coordinate
frame and combined with static nonnegative weights.  The positive-cover proof
ensures that the normalization denominator is never zero.

The fused map is linear because the local maps are linear and the weights do
not depend on the signal.  Global involutivity is deliberately a separate
certificate: even when every local core is involutive, weighted overlap fusion
does not automatically square to the identity.
-/

namespace DAF.Integration

open scoped BigOperators
open DAF.Terrain

universe uState

/-- A real-linear operator for every exact absolute window. -/
abbrev WindowLinearOperators
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G) :=
  ∀ i : W.WindowId,
    ((W.region i).LocalCoord → ℝ) →ₗ[ℝ]
      ((W.region i).LocalCoord → ℝ)

/--
A globally anchored family whose operator at every window is not merely
linear, but is the operator of a certified cycle convolution that squares to
the identity.  The instances for each dependent local-coordinate subtype are
supplied explicitly from the absolute region, so this structure does not
install global orphan instances.

This certificate concerns the local cores.  Weighted overlap fusion is still
not called involutive unless a separate `GlobalWindowInvolutionCertificate`
is supplied.
-/
structure AnchoredWindowFusion
    {State : Type uState}
    (G : KnownMaximalState State)
    (W : GlobalWindowSystem G) where
  localCore : ∀ i : W.WindowId,
    @FinitePermutationDynamics.InvolutiveConvolutionCore
      (W.region i).LocalCoord
      (W.region i).localFintype
      (W.region i).localDecidableEq

namespace AnchoredWindowFusion

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {W : GlobalWindowSystem G}

/-- Construct an anchored fusion certificate from one certified core per window. -/
def ofCores
    (cores : ∀ i : W.WindowId,
      @FinitePermutationDynamics.InvolutiveConvolutionCore
        (W.region i).LocalCoord
        (W.region i).localFintype
        (W.region i).localDecidableEq) :
    AnchoredWindowFusion G W :=
  ⟨cores⟩

/-- Forget only the convolution/involution certificates, retaining their operators. -/
def localOperators
    (fusion : AnchoredWindowFusion G W) : WindowLinearOperators W :=
  fun i ↦ by
    letI : Fintype (W.region i).LocalCoord := (W.region i).localFintype
    letI : DecidableEq (W.region i).LocalCoord :=
      (W.region i).localDecidableEq
    exact (fusion.localCore i).operator

/-- Every selected local operator squares to the identity. -/
@[simp]
theorem localOperator_apply_twice
    (fusion : AnchoredWindowFusion G W)
    (i : W.WindowId)
    (signal : (W.region i).LocalCoord → ℝ) :
    fusion.localOperators i (fusion.localOperators i signal) = signal :=
  by
    letI : Fintype (W.region i).LocalCoord := (W.region i).localFintype
    letI : DecidableEq (W.region i).LocalCoord :=
      (W.region i).localDecidableEq
    exact (fusion.localCore i).operator_operator signal

end AnchoredWindowFusion

/-- The unnormalized global numerator of absolute-window fusion. -/
def fusedWindowNumerator
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (signal : G.Coord → ℝ)
    (c : G.Coord) : ℝ := by
  letI : Fintype W.WindowId := W.windowFintype
  exact ∑ i : W.WindowId,
    W.weight i c *
      extendSignal (W.region i)
        (localOps i (restrictSignal (W.region i) signal)) c

/-- The denotational globally fused operator. -/
noncomputable def fusedWindowOperator
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (signal : G.Coord → ℝ) : G.Coord → ℝ :=
  fun c ↦ (W.denominator c)⁻¹ *
    fusedWindowNumerator W localOps signal c

/-- Weighted absolute-window fusion is real-linear. -/
noncomputable def fusedWindowLinear
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W) :
    (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ) where
  toFun := fusedWindowOperator W localOps
  map_add' f g := by
    funext c
    letI : Fintype W.WindowId := W.windowFintype
    letI : DecidableEq G.Coord := G.coordDecEq
    unfold fusedWindowOperator fusedWindowNumerator
    simp only [Pi.add_apply]
    rw [← mul_add]
    apply congrArg (fun z : ℝ ↦ (W.denominator c)⁻¹ * z)
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    have hrestrict :
        restrictSignal (W.region i) (f + g) =
          restrictSignal (W.region i) f +
            restrictSignal (W.region i) g := rfl
    rw [hrestrict, LinearMap.map_add]
    by_cases hc : c ∈ (W.region i).coordinates
    · simp [extendSignal, hc]
      ring
    · simp [extendSignal, hc]
  map_smul' a f := by
    funext c
    letI : Fintype W.WindowId := W.windowFintype
    letI : DecidableEq G.Coord := G.coordDecEq
    unfold fusedWindowOperator fusedWindowNumerator
    have hsum :
        (∑ i : W.WindowId,
          W.weight i c *
            extendSignal (W.region i)
              (localOps i (restrictSignal (W.region i) (a • f))) c) =
          a * ∑ i : W.WindowId,
            W.weight i c *
              extendSignal (W.region i)
                (localOps i (restrictSignal (W.region i) f)) c := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      have hrestrict :
          restrictSignal (W.region i) (a • f) =
            a • restrictSignal (W.region i) f := rfl
      rw [hrestrict, LinearMap.map_smul]
      by_cases hc : c ∈ (W.region i).coordinates
      · simp [extendSignal, hc, smul_eq_mul]
        ring
      · simp [extendSignal, hc]
    rw [hsum]
    simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    ring_nf

namespace AnchoredWindowFusion

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {W : GlobalWindowSystem G}

/-- The globally fused linear operator induced by the certified local cores. -/
noncomputable def operator
    (fusion : AnchoredWindowFusion G W) :
    (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ) :=
  fusedWindowLinear W fusion.localOperators

/-- Evaluation is exactly the globally anchored weighted-overlap formula. -/
theorem operator_apply
    (fusion : AnchoredWindowFusion G W)
    (signal : G.Coord → ℝ)
    (c : G.Coord) :
    fusion.operator signal c =
      (W.denominator c)⁻¹ *
        fusedWindowNumerator W fusion.localOperators signal c :=
  rfl

/-- Linearity is inherited structurally from the fused linear map. -/
theorem operator_add
    (fusion : AnchoredWindowFusion G W)
    (left right : G.Coord → ℝ) :
    fusion.operator (left + right) =
      fusion.operator left + fusion.operator right :=
  fusion.operator.map_add left right

/-- Scalar compatibility of certified anchored fusion. -/
theorem operator_smul
    (fusion : AnchoredWindowFusion G W)
    (scalar : ℝ)
    (signal : G.Coord → ℝ) :
    fusion.operator (scalar • signal) = scalar • fusion.operator signal :=
  fusion.operator.map_smul scalar signal

/-- Query evaluation is restriction of the unique global fused result. -/
noncomputable def query
    (fusion : AnchoredWindowFusion G W)
    (region : AbsoluteRegion G)
    (signal : G.Coord → ℝ) : region.LocalCoord → ℝ :=
  restrictSignal region (fusion.operator signal)

@[simp]
theorem query_eq_restriction
    (fusion : AnchoredWindowFusion G W)
    (region : AbsoluteRegion G)
    (signal : G.Coord → ℝ) :
    fusion.query region signal =
      restrictSignal region (fusion.operator signal) :=
  rfl

end AnchoredWindowFusion

/-! ## Finite immutable-snapshot timestep schedules -/

namespace AnchoredWindowFusion

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {W : GlobalWindowSystem G}

/--
The input seen by one position in a finite window ordering.  Every position is
restricted from the same explicit immutable `snapshot`; the order changes only
which window identifier is evaluated at that position.
-/
def orderedWindowInput
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ)
    (slot : W.WindowId) : (W.region (order slot)).LocalCoord → ℝ :=
  restrictSignal (W.region (order slot)) snapshot

@[simp]
theorem orderedWindowInput_eq_snapshot_restriction
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ)
    (slot : W.WindowId) :
    orderedWindowInput order snapshot slot =
      restrictSignal (W.region (order slot)) snapshot :=
  rfl

/-- The fusion numerator evaluated through an explicit permutation of windows. -/
def orderedWindowNumerator
    (fusion : AnchoredWindowFusion G W)
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ)
    (c : G.Coord) : ℝ := by
  letI : Fintype W.WindowId := W.windowFintype
  exact ∑ slot : W.WindowId,
    W.weight (order slot) c *
      extendSignal (W.region (order slot))
        (fusion.localOperators (order slot)
          (orderedWindowInput order snapshot slot)) c

/--
Reordering the finite windows cannot change the numerator computed from one
immutable snapshot.
-/
theorem orderedWindowNumerator_eq_fused
    (fusion : AnchoredWindowFusion G W)
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ)
    (c : G.Coord) :
    orderedWindowNumerator fusion order snapshot c =
      fusedWindowNumerator W fusion.localOperators snapshot c := by
  letI : Fintype W.WindowId := W.windowFintype
  unfold orderedWindowNumerator fusedWindowNumerator orderedWindowInput
  simpa using Equiv.sum_comp order (fun i : W.WindowId ↦
    W.weight i c *
      extendSignal (W.region i)
        (fusion.localOperators i (restrictSignal (W.region i) snapshot)) c)

/-- One timestep computed in an explicit finite window order. -/
noncomputable def orderedTimestep
    (fusion : AnchoredWindowFusion G W)
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ) : G.Coord → ℝ :=
  fun c ↦ (W.denominator c)⁻¹ *
    orderedWindowNumerator fusion order snapshot c

/-- Every finite evaluation order gives the unique denotational fusion result. -/
theorem orderedTimestep_eq_operator
    (fusion : AnchoredWindowFusion G W)
    (order : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ) :
    orderedTimestep fusion order snapshot = fusion.operator snapshot := by
  funext c
  unfold orderedTimestep
  rw [operator_apply, orderedWindowNumerator_eq_fused]

/-- Same-snapshot window evaluation is exactly independent of finite order. -/
theorem orderedTimestep_order_independent
    (fusion : AnchoredWindowFusion G W)
    (left right : Equiv.Perm W.WindowId)
    (snapshot : G.Coord → ℝ) :
    orderedTimestep fusion left snapshot =
      orderedTimestep fusion right snapshot := by
  rw [orderedTimestep_eq_operator, orderedTimestep_eq_operator]

end AnchoredWindowFusion

/--
A finite proof-bearing schedule.  Windows within timestep `t` consume
`state (Fin.castSucc t)` as one immutable snapshot.  The next state is the
output of that timestep, so different timesteps retain a strict sequential
recurrence even though the finite same-snapshot sum is order independent.

This is declarative scheduling metadata, not a claim that any runtime actually
launches parallel workers.
-/
structure WindowTimestepSchedule
    {State : Type uState}
    {G : KnownMaximalState State}
    {W : GlobalWindowSystem G}
    (fusion : AnchoredWindowFusion G W)
    (steps : Nat) where
  initialState : G.Coord → ℝ
  state : Fin (steps + 1) → G.Coord → ℝ
  order : Fin steps → Equiv.Perm W.WindowId
  state_zero : state 0 = initialState
  state_succ : ∀ t : Fin steps,
    state t.succ =
      fusion.orderedTimestep (order t) (state (Fin.castSucc t))

namespace WindowTimestepSchedule

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {W : GlobalWindowSystem G}
variable {fusion : AnchoredWindowFusion G W}
variable {steps : Nat}

/-- Every window position at timestep `t` reads the exact same prior snapshot. -/
theorem window_input_eq_prior_snapshot
    (schedule : WindowTimestepSchedule fusion steps)
    (t : Fin steps)
    (slot : W.WindowId) :
    AnchoredWindowFusion.orderedWindowInput (schedule.order t)
        (schedule.state (Fin.castSucc t)) slot =
      restrictSignal (W.region (schedule.order t slot))
        (schedule.state (Fin.castSucc t)) :=
  rfl

/-- The sequential recurrence is independent of the chosen within-step order. -/
theorem state_succ_eq_operator
    (schedule : WindowTimestepSchedule fusion steps)
    (t : Fin steps) :
    schedule.state t.succ =
      fusion.operator (schedule.state (Fin.castSucc t)) := by
  rw [schedule.state_succ, AnchoredWindowFusion.orderedTimestep_eq_operator]

/-- Any alternative finite order computes the same scheduled next state. -/
theorem alternative_order_eq_next_state
    (schedule : WindowTimestepSchedule fusion steps)
    (t : Fin steps)
    (alternative : Equiv.Perm W.WindowId) :
    fusion.orderedTimestep alternative (schedule.state (Fin.castSucc t)) =
      schedule.state t.succ := by
  rw [AnchoredWindowFusion.orderedTimestep_eq_operator,
    schedule.state_succ_eq_operator]

end WindowTimestepSchedule

@[simp]
theorem fusedWindowLinear_apply
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (signal : G.Coord → ℝ) :
    fusedWindowLinear W localOps signal =
      fusedWindowOperator W localOps signal :=
  rfl

/-- A query is exactly restriction of the single global fused result. -/
noncomputable def fusedWindowQuery
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (region : AbsoluteRegion G)
    (signal : G.Coord → ℝ) :
    region.LocalCoord → ℝ :=
  restrictSignal region (fusedWindowOperator W localOps signal)

@[simp]
theorem fusedWindowQuery_eq_restriction
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W)
    (region : AbsoluteRegion G)
    (signal : G.Coord → ℝ) :
    fusedWindowQuery W localOps region signal =
      restrictSignal region (fusedWindowLinear W localOps signal) :=
  rfl

/-- Optional evidence that the already fused global map is involutive. -/
structure GlobalWindowInvolutionCertificate
    {State : Type uState}
    {G : KnownMaximalState State}
    (W : GlobalWindowSystem G)
    (localOps : WindowLinearOperators W) where
  involutive :
    (fusedWindowLinear W localOps).comp (fusedWindowLinear W localOps) =
      LinearMap.id

namespace GlobalWindowInvolutionCertificate

@[simp]
theorem apply_twice
    {State : Type uState}
    {G : KnownMaximalState State}
    {W : GlobalWindowSystem G}
    {localOps : WindowLinearOperators W}
    (certificate : GlobalWindowInvolutionCertificate W localOps)
    (signal : G.Coord → ℝ) :
    fusedWindowLinear W localOps (fusedWindowLinear W localOps signal) = signal := by
  have h := LinearMap.congr_fun certificate.involutive signal
  simpa using h

end GlobalWindowInvolutionCertificate

end DAF.Integration
