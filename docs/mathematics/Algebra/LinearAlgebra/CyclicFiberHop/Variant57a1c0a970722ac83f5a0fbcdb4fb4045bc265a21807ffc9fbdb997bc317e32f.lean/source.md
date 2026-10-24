# Complete source: GRWTSK.Algebra.LinearAlgebra.CyclicFiberHop.Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03dc33b9273d4e9dfd0e528d4746248e8a08f31e` · SHA-256 `57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Algebra.Group.Units.Equiv
public import Mathlib.Data.PNat.Basic
public import Mathlib.Data.Real.Basic
public import Mathlib.Data.ZMod.Basic
public import Mathlib.LinearAlgebra.Pi
import Mathlib.Tactic

/-!
# Linear fiber hopping on an even cyclic cover

This module models an exact finite cover independently of the real analytic
phase used by `Surface.Core.CyclicNeutral`.  A positive half-period `h` gives
the finite phase type `ZMod (2h)`.  Each phase carries a three-coordinate real
fiber, and every step to the successor phase is an invertible linear map.

Half-period compatibility is an explicit hypothesis on the step family.  It
implies that the global hopping operator commutes with the half-period shift
and preserves sections whose antipodal fibers are negatives of one another.

The final section records the honest permutation specialization.  Adjacent
coordinate swaps satisfy the braid relation, but they also square to the
identity.  They therefore belong to the `S₃` permutation representation and
carry no claim of a faithful `B₃` representation.
-/

public section

namespace Surface.Core.CyclicFiberHop

noncomputable section

/-- The exact finite phase cover with positive half-period `h`. -/
abbrev CoverPhase (h : ℕ+) :=
  ZMod (2 * (h : ℕ))

private instance coverModulusNeZero (h : ℕ+) :
    NeZero (2 * (h : ℕ)) :=
  ⟨Nat.mul_ne_zero (by norm_num) (Nat.ne_of_gt h.2)⟩

/-- A fiber with exactly three real input coordinates. -/
abbrev Fiber3 :=
  Fin 3 → ℝ

/-- A section of the rank-three trivial bundle over the finite cover. -/
abbrev Section3 (h : ℕ+) :=
  CoverPhase h → Fiber3

/-- Advance by one phase in the finite cyclic cover. -/
@[expose]
def successor (h : ℕ+) : Equiv.Perm (CoverPhase h) :=
  Equiv.addRight 1

/-- Move back by one phase in the finite cyclic cover. -/
@[expose]
def predecessor (h : ℕ+) : Equiv.Perm (CoverPhase h) :=
  Equiv.addRight (-1)

/-- Translate by the exact half-period. -/
@[expose]
def antipode (h : ℕ+) : Equiv.Perm (CoverPhase h) :=
  Equiv.addRight ((h : ℕ) : CoverPhase h)

@[simp]
theorem successor_apply (h : ℕ+) (p : CoverPhase h) :
    successor h p = p + 1 :=
  rfl

@[simp]
theorem predecessor_apply (h : ℕ+) (p : CoverPhase h) :
    predecessor h p = p - 1 := by
  simp [predecessor, sub_eq_add_neg]

@[simp]
theorem antipode_apply (h : ℕ+) (p : CoverPhase h) :
    antipode h p = p + ((h : ℕ) : CoverPhase h) :=
  rfl

@[surface_novel, surface_published, simp]
theorem successor_predecessor (h : ℕ+) (p : CoverPhase h) :
    successor h (predecessor h p) = p := by
  simp [successor, predecessor]

@[surface_novel, surface_published, simp]
theorem predecessor_successor (h : ℕ+) (p : CoverPhase h) :
    predecessor h (successor h p) = p := by
  simp [successor, predecessor]

@[surface_novel, surface_published, simp]
theorem antipode_involutive (h : ℕ+) (p : CoverPhase h) :
    antipode h (antipode h p) = p := by
  change
    (p + ((h : ℕ) : CoverPhase h)) + ((h : ℕ) : CoverPhase h) = p
  rw [add_assoc, ← Nat.cast_add]
  have hdouble : (h : ℕ) + (h : ℕ) = 2 * (h : ℕ) := by omega
  rw [hdouble, ZMod.natCast_self, add_zero]

@[surface_novel, surface_published]
theorem successor_commutes_antipode (h : ℕ+) (p : CoverPhase h) :
    successor h (antipode h p) = antipode h (successor h p) := by
  simp only [successor_apply, antipode_apply]
  ac_rfl

@[surface_novel, surface_published]
theorem predecessor_commutes_antipode (h : ℕ+) (p : CoverPhase h) :
    predecessor h (antipode h p) = antipode h (predecessor h p) := by
  simp only [predecessor_apply, antipode_apply]
  abel

/--
An invertible phase-indexed step family.  The second field says that the same
fiber map is used at antipodal phases.
-/
structure StepSystem (h : ℕ+) where
  step : CoverPhase h → Fiber3 ≃ₗ[ℝ] Fiber3
  half_compatible : ∀ p, step (antipode h p) = step p

namespace StepSystem

variable {h : ℕ+}

/-- Product of the next `n` invertible steps beginning at phase `p`. -/
@[expose]
def forwardProduct (system : StepSystem h) :
    CoverPhase h → Nat → Fiber3 ≃ₗ[ℝ] Fiber3
  | _, 0 => LinearEquiv.refl ℝ Fiber3
  | p, n + 1 =>
      (system.step p).trans
        (forwardProduct system (successor h p) n)

/-- The explicitly reversed product of the corresponding inverse steps. -/
@[expose]
def backwardProduct (system : StepSystem h) :
    CoverPhase h → Nat → Fiber3 ≃ₗ[ℝ] Fiber3
  | _, 0 => LinearEquiv.refl ℝ Fiber3
  | p, n + 1 =>
      (backwardProduct system (successor h p) n).trans
        (system.step p).symm

@[simp]
theorem forwardProduct_zero (system : StepSystem h) (p : CoverPhase h) :
    forwardProduct system p 0 = LinearEquiv.refl ℝ Fiber3 :=
  rfl

@[simp]
theorem forwardProduct_succ (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) :
    forwardProduct system p (n + 1) =
      (system.step p).trans
        (forwardProduct system (successor h p) n) :=
  rfl

@[simp]
theorem backwardProduct_zero (system : StepSystem h) (p : CoverPhase h) :
    backwardProduct system p 0 = LinearEquiv.refl ℝ Fiber3 :=
  rfl

@[simp]
theorem backwardProduct_succ (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) :
    backwardProduct system p (n + 1) =
      (backwardProduct system (successor h p) n).trans
        (system.step p).symm :=
  rfl

@[surface_novel, surface_published]
theorem backwardProduct_eq_forwardProduct_symm
    (system : StepSystem h) (p : CoverPhase h) (n : Nat) :
    backwardProduct system p n = (forwardProduct system p n).symm := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [forwardProduct_succ, backwardProduct_succ, ih]
      rfl

@[surface_novel, surface_published, simp]
theorem backward_forward_apply (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) (x : Fiber3) :
    backwardProduct system p n (forwardProduct system p n x) = x := by
  rw [backwardProduct_eq_forwardProduct_symm]
  exact LinearEquiv.symm_apply_apply _ _

@[surface_novel, surface_published, simp]
theorem forward_backward_apply (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) (x : Fiber3) :
    forwardProduct system p n (backwardProduct system p n x) = x := by
  rw [backwardProduct_eq_forwardProduct_symm]
  exact LinearEquiv.apply_symm_apply _ _

@[surface_novel, surface_published]
theorem forwardProduct_bijective (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) :
    Function.Bijective (forwardProduct system p n) :=
  (forwardProduct system p n).bijective

@[surface_novel, surface_published]
theorem forwardProduct_half_compatible (system : StepSystem h)
    (p : CoverPhase h) (n : Nat) :
    forwardProduct system (antipode h p) n =
      forwardProduct system p n := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [forwardProduct_succ, forwardProduct_succ,
        system.half_compatible, successor_commutes_antipode, ih]

/--
The global section operator: the value at phase `p + 1` is obtained by
applying the step at `p` to the old value at `p`.
-/
@[expose]
def hopEquiv (system : StepSystem h) :
    Section3 h ≃ₗ[ℝ] Section3 h where
  toFun value phase :=
    system.step (predecessor h phase) (value (predecessor h phase))
  invFun value phase :=
    (system.step phase).symm (value (successor h phase))
  left_inv value := by
    funext phase
    simp
  right_inv value := by
    funext phase
    simp
  map_add' left right := by
    funext phase
    exact map_add (system.step (predecessor h phase)) _ _
  map_smul' scalar value := by
    funext phase
    exact map_smul (system.step (predecessor h phase)) scalar _

@[surface_novel, surface_published, simp]
theorem hopEquiv_apply_successor (system : StepSystem h)
    (value : Section3 h) (phase : CoverPhase h) :
    hopEquiv system value (successor h phase) =
      system.step phase (value phase) := by
  simp [hopEquiv]

@[surface_novel, surface_published, simp]
theorem hopEquiv_symm_apply (system : StepSystem h)
    (value : Section3 h) (phase : CoverPhase h) :
    (hopEquiv system).symm value phase =
      (system.step phase).symm (value (successor h phase)) :=
  rfl

@[surface_novel, surface_published]
theorem hopEquiv_bijective (system : StepSystem h) :
    Function.Bijective (hopEquiv system) :=
  (hopEquiv system).bijective

/-- Pull a section through the exact half-period translation. -/
@[expose]
def halfShiftEquiv (h : ℕ+) :
    Section3 h ≃ₗ[ℝ] Section3 h where
  toFun value phase := value (antipode h phase)
  invFun value phase := value (antipode h phase)
  left_inv value := by
    funext phase
    change value (antipode h (antipode h phase)) = value phase
    rw [antipode_involutive]
  right_inv value := by
    funext phase
    change value (antipode h (antipode h phase)) = value phase
    rw [antipode_involutive]
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

@[simp]
theorem halfShiftEquiv_apply (value : Section3 h) (phase : CoverPhase h) :
    halfShiftEquiv h value phase = value (antipode h phase) :=
  rfl

@[surface_novel, surface_published]
theorem hopEquiv_commutes_halfShift (system : StepSystem h)
    (value : Section3 h) :
    hopEquiv system (halfShiftEquiv h value) =
      halfShiftEquiv h (hopEquiv system value) := by
  funext phase
  change
    system.step (predecessor h phase)
        (value (antipode h (predecessor h phase))) =
      system.step (predecessor h (antipode h phase))
        (value (predecessor h (antipode h phase)))
  rw [predecessor_commutes_antipode, system.half_compatible]

/-- Antipodal sections negate their three-coordinate fiber after a half turn. -/
def IsAntipodal (value : Section3 h) : Prop :=
  ∀ phase, value (antipode h phase) = -value phase

@[surface_novel, surface_published]
theorem hopEquiv_preserves_antipodal (system : StepSystem h)
    {value : Section3 h} (hvalue : IsAntipodal value) :
    IsAntipodal (hopEquiv system value) := by
  intro phase
  change
    system.step (predecessor h (antipode h phase))
        (value (predecessor h (antipode h phase))) =
      -system.step (predecessor h phase) (value (predecessor h phase))
  rw [predecessor_commutes_antipode, system.half_compatible,
    hvalue]
  exact map_neg (system.step (predecessor h phase)) _

end StepSystem

/-! ## The honest `S₃` permutation specialization -/

/-- Reindex the three input coordinates by a permutation. -/
@[expose]
def permuteFiber (permutation : Equiv.Perm (Fin 3)) :
    Fiber3 ≃ₗ[ℝ] Fiber3 where
  toFun vector coordinate := vector (permutation.symm coordinate)
  invFun vector coordinate := vector (permutation coordinate)
  left_inv vector := by
    funext coordinate
    simp
  right_inv vector := by
    funext coordinate
    simp
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- The three-coordinate permutation representation of `S₃`. -/
@[expose]
def permutationRepresentation :
    Equiv.Perm (Fin 3) →* (Fiber3 ≃ₗ[ℝ] Fiber3) where
  toFun := permuteFiber
  map_one' := by
    ext vector coordinate
    rfl
  map_mul' left right := by
    ext vector coordinate
    rfl

/-- Swap the first and second coordinates. -/
@[expose]
def adjacentSwap01 : Equiv.Perm (Fin 3) :=
  Equiv.swap 0 1

/-- Swap the second and third coordinates. -/
@[expose]
def adjacentSwap12 : Equiv.Perm (Fin 3) :=
  Equiv.swap 1 2

@[surface_novel, surface_published]
theorem adjacentSwap01_sq :
    adjacentSwap01 * adjacentSwap01 = 1 := by
  ext coordinate
  fin_cases coordinate <;> rfl

@[surface_novel, surface_published]
theorem adjacentSwap12_sq :
    adjacentSwap12 * adjacentSwap12 = 1 := by
  ext coordinate
  fin_cases coordinate <;> rfl

@[surface_novel, surface_published]
theorem adjacentSwap_braid :
    adjacentSwap01 * adjacentSwap12 * adjacentSwap01 =
      adjacentSwap12 * adjacentSwap01 * adjacentSwap12 := by
  ext coordinate
  fin_cases coordinate <;> rfl

/--
The adjacent linear hops satisfy the braid relation and both Coxeter
square-one relations.  This is explicit `S₃` quotient data: it does not assert
a faithful representation of the braid group `B₃`.
-/
@[surface_novel, surface_published]
theorem adjacentPermutationHops_satisfy_s3_relations :
    let left := permutationRepresentation adjacentSwap01
    let right := permutationRepresentation adjacentSwap12
    left * right * left = right * left * right ∧
      left * left = 1 ∧ right * right = 1 := by
  dsimp
  constructor
  · exact congrArg permutationRepresentation adjacentSwap_braid
  · constructor
    · exact congrArg permutationRepresentation adjacentSwap01_sq
    · exact congrArg permutationRepresentation adjacentSwap12_sq

end

end Surface.Core.CyclicFiberHop
```
