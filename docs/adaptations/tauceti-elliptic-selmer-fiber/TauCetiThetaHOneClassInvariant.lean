/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Pinned Tau Ceti contributors, Apache-2.0, upstream
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Build ONLY with Tau Ceti Lean v4.36.0-rc1 and isolated adapter LEAN_PATH.
-/
import TauCetiThetaHOneRepresentativeGauge
import TauCetiThetaBrauerH2Transport

set_option autoImplicit false
noncomputable section

/-!
# An ACTUAL theta H¹ -> continuous Brauer H² obstruction

A genuine H¹ representative change is b = a + d⁰t, not just
a change of the arbitrary scalar SECTION. The source adapter
TauCetiThetaHOneRepresentativeGauge supplies the real
t∈E[n], gauge v = thetaLift(t), and unique CONTINUOUS scalar
1-cochain k such that

    v⁻¹ s(aσ) σ(v) = scalarLift(kσ) s(bσ).

This file proves the connecting-factor identity
    c_a(σ,τ) =
      kσ σ(kτ) kστ⁻¹ c_b(σ,τ)

directly from the nonabelian theta GROUP law, original
Galois action and centrality, then passes through the
ORIGINAL Tau Ceti H2pi_eq_iff and mem_B2_iff' with
a continuous 1-cochain. It never assumes that the
desired H¹-representative independence is true.

The resulting map on actual original H¹ exists as a
quotient SET MAP, not an additive homomorphism:
the period-index theta obstruction is quadratic and
must not be treated as a linear regulator.

Its Weil commutator polarization and Brauer n-torsion
remain independent arithmetic/geometric obligations.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneClassInvariant

open TauCeti TauCeti.ContCohomology
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneRepresentativeGauge

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev G := AbsoluteGaloisGroup F
private abbrev K := SeparableClosure F
private abbrev EW := (W⁄(SeparableClosure F)).toAffine
private abbrev A := W.TorsionCoeff n
private abbrev Theta := ThetaLift (EW W) n

/-! ## Pure nonabelian gauge group calculus, in pinned toolchain -/

/-- Original nonabelian boundary, with the SAME exact
σ-twist and multiplication order as the source scalar. -/
private def bdy {G₀ Θ₀ : Type*} [Group G₀] [Group Θ₀]
    [MulDistribMulAction G₀ Θ₀] (u : G₀ → Θ₀)
    (σ τ : G₀) : Θ₀ :=
  u σ * (σ • u τ) * (u (σ * τ))⁻¹

/-- A genuine 0-cochain gauges a theta 1-cochain;
its boundary changes by constant conjugation. -/
private theorem bdy_gauge
    {G₀ Θ₀ : Type*} [Group G₀] [Group Θ₀]
    [MulDistribMulAction G₀ Θ₀]
    (u : G₀ → Θ₀) (v : Θ₀) (σ τ : G₀) :
    bdy (fun g => v⁻¹ * u g * (g • v)) σ τ =
      v⁻¹ * bdy u σ τ * v := by
  change (v⁻¹ * u σ * (σ • v)) *
      (σ • (v⁻¹ * u τ * (τ • v))) *
      (v⁻¹ * u (σ * τ) * ((σ * τ) • v))⁻¹ =
        v⁻¹ * (u σ * (σ • u τ) *
          (u (σ * τ))⁻¹) * v
  simp only [smul_mul', smul_inv', mul_smul]
  group

/-- Central scalar correction of two theta lift families.
No cohomology class equality is built into the premise:
only the ACTUAL function-level relation of their lifts. -/
private theorem bdy_scalar
    {G₀ Θ₀ C : Type*} [Group G₀] [Group Θ₀]
    [CommGroup C] [MulDistribMulAction G₀ Θ₀]
    [MulDistribMulAction G₀ C]
    (i : C →* Θ₀)
    (hi : ∀ g c, i (g • c) = g • i c)
    (hcentral : ∀ c z, Commute (i c) z)
    (u u' : G₀ → Θ₀) (k : G₀ → C)
    (heq : ∀ g, u g = i (k g) * u' g)
    (σ τ : G₀) :
    bdy u σ τ =
      i (k σ * (σ • k τ) * (k (σ * τ))⁻¹) *
        bdy u' σ τ := by
  have hf : u = fun g => i (k g) * u' g := by
    funext g
    exact heq g
  let A₀ := i (k σ)
  let B₀ := σ • i (k τ)
  let C₀ := i (k (σ * τ))
  let X := u' σ
  let Y := σ • u' τ
  let Z := u' (σ * τ)
  have hXB : X * B₀ = B₀ * X := by
    change u' σ * (σ • i (k τ)) =
      (σ • i (k τ)) * u' σ
    rw [← hi σ (k τ)]
    exact (hcentral (σ • k τ) (u' σ)).eq.symm
  have hZC : (X * Y * Z⁻¹) * C₀⁻¹ =
      C₀⁻¹ * (X * Y * Z⁻¹) := by
    have hc := (hcentral (k (σ * τ)) (X * Y * Z⁻¹)).eq
    dsimp [C₀]
    calc
      (X * Y * Z⁻¹) * (i (k (σ * τ)))⁻¹ =
        (i (k (σ * τ)))⁻¹ * i (k (σ * τ)) *
          (X * Y * Z⁻¹) * (i (k (σ * τ)))⁻¹ := by group
      _ = (i (k (σ * τ)))⁻¹ *
          (i (k (σ * τ)) * (X * Y * Z⁻¹)) *
          (i (k (σ * τ)))⁻¹ := by group
      _ = (i (k (σ * τ)))⁻¹ *
          ((X * Y * Z⁻¹) * i (k (σ * τ))) *
          (i (k (σ * τ)))⁻¹ := by rw [hc]
      _ = (i (k (σ * τ)))⁻¹ * (X * Y * Z⁻¹) := by group
  rw [hf]
  change (A₀ * X) * (B₀ * Y) * (C₀ * Z)⁻¹ =
      i (k σ * (σ • k τ) * (k (σ * τ))⁻¹) *
        (X * Y * Z⁻¹)
  calc
    (A₀ * X) * (B₀ * Y) * (C₀ * Z)⁻¹ =
      A₀ * (X * B₀) * Y * Z⁻¹ * C₀⁻¹ := by group
    _ = A₀ * B₀ * ((X * Y * Z⁻¹) * C₀⁻¹) := by
      rw [hXB]
      group
    _ = (A₀ * B₀ * C₀⁻¹) * (X * Y * Z⁻¹) := by
      rw [hZC]
      group
    _ = i (k σ * (σ • k τ) * (k (σ * τ))⁻¹) *
        (X * Y * Z⁻¹) := by
      simp only [A₀, B₀, C₀, map_mul, map_inv, hi]

/-! ## Actual elliptic source Galois factor identities -/

/-- The original raw theta scalars of two genuine
H¹-cohomologous E[n] cocycles differ by the exact
continuous scalar 1-cochain produced from their
genuine rational-function theta lifts. This is the
source-level connection needed for Brauer H². -/
theorem originalThetaScalar_representativeChange
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t)
    (σ τ : G (F := F)) :
    thetaObstructionScalar W n a σ τ =
      thetaRepresentativeCorrection W n a b t ht σ *
      (σ • thetaRepresentativeCorrection W n a b t ht τ) *
      (thetaRepresentativeCorrection W n a b t ht (σ * τ))⁻¹ *
        thetaObstructionScalar W n b σ τ := by
  let u : G (F := F) → Theta W n :=
    fun g => geometricLift W n (a g)
  let u' : G (F := F) → Theta W n :=
    fun g => geometricLift W n (b g)
  let v : Theta W n := geometricLift W n t
  let k : G (F := F) → (K (F := F))ˣ :=
    thetaRepresentativeCorrection W n a b t ht
  let i : (K (F := F))ˣ →* Theta W n :=
    scalarLiftHom (EW W) n
  have hsource (g h : G (F := F)) :
      bdy u g h = i (thetaObstructionScalar W n a g h) := by
    exact
      (scalarLift_originalThetaObstruction_eq_groupBoundary
        W n a g h).symm
  have htarget (g h : G (F := F)) :
      bdy u' g h = i (thetaObstructionScalar W n b g h) := by
    exact
      (scalarLift_originalThetaObstruction_eq_groupBoundary
        W n b g h).symm
  have hgauge (g : G (F := F)) :
      v⁻¹ * u g * (g • v) = i (k g) * u' g :=
    thetaRepresentativeCorrection_spec W n a b t ht g
  have hcentral : ∀ (c : (K (F := F))ˣ) (z : Theta W n),
      Commute (i c) z := by
    intro c z
    exact ⟨scalarLift_central (EW W) n c z⟩
  have hfactor : Commute (bdy u σ τ) v := by
    rw [hsource σ τ]
    exact hcentral _ _
  have hfirst :
      bdy u σ τ =
        bdy (fun g => v⁻¹ * u g * (g • v)) σ τ := by
    rw [bdy_gauge]
    calc
      v⁻¹ * bdy u σ τ * v =
        v⁻¹ * (bdy u σ τ * v) := by group
      _ = v⁻¹ * (v * bdy u σ τ) := by rw [hfactor.eq]
      _ = bdy u σ τ := by group
  have hsecond :=
    bdy_scalar i (fun g c =>
      (scalarLiftHom_galois W n g c).symm)
      hcentral
      (fun g => v⁻¹ * u g * (g • v)) u' k
      hgauge σ τ
  have hgroup :
      i (thetaObstructionScalar W n a σ τ) =
        i (k σ * (σ • k τ) * (k (σ * τ))⁻¹ *
          thetaObstructionScalar W n b σ τ) := by
    rw [← hsource σ τ, hfirst, hsecond, htarget σ τ]
    simp only [map_mul]
  exact (scalarLiftHom_injective (EW W) n hgroup)

/-- Exact additive form in Tau Ceti's ORIGINAL
UnitsCoeff F=Additive(Fsep×), with the signed
inhomogeneous d¹ convention. -/
theorem originalThetaUnits_representativeChange
    (a b : Z1 (G (F := F)) (A W n))
    (t : A W n)
    (ht : ∀ σ : G (F := F),
      b σ = a σ + σ • t - t)
    (σ τ : G (F := F)) :
    originalThetaUnitsCochain W n a (σ,τ) =
      Additive.ofMul (thetaRepresentativeCorrection W n a b t ht σ) +
      σ • Additive.ofMul (thetaRepresentativeCorrection W n a b t ht τ) -
      Additive.ofMul (thetaRepresentativeCorrection W n a b t ht (σ * τ)) +
      originalThetaUnitsCochain W n b (σ,τ) := by
  apply Additive.toMul.injective
  simpa [originalThetaUnitsCochain] using
    (originalThetaScalar_representativeChange W n a b t ht σ τ)

/-! ## Genuine continuous H² class and well-defined H¹ map -/

/-- The actual source H² classes of H¹-equivalent
E[n]-cocycles are equal. The continuous scalar
cochain is CONSTRUCTED from original elliptic
rational functions; the equality is derived using
Tau Ceti's original H²pi_eq_iff / mem_B2_iff',
not supplied as a circular arithmetic hypothesis. -/
theorem originalThetaBrauerH2_eq_of_HOne_eq
    (a b : Z1 (G (F := F)) (A W n))
    (hab : (a : H1 (G (F := F)) (A W n)) =
      (b : H1 (G (F := F)) (A W n))) :
    originalThetaBrauerH2 W n a =
      originalThetaBrauerH2 W n b := by
  obtain ⟨t,ht⟩ :=
    (originalHOne_eq_iff_coboundary W n a b).mp hab
  let k : G (F := F) → UnitsCoeff F :=
    fun σ => Additive.ofMul
      (thetaRepresentativeCorrection W n a b t ht σ)
  have hk : Continuous k :=
    thetaRepresentativeCorrection_continuous W n a b t ht
  let za : Z2 (G (F := F)) (UnitsCoeff F) :=
    ⟨originalThetaUnitsCochain W n a,
      originalThetaUnitsCochain_mem_Z2_of_continuous
        W n a (originalThetaScalarContinuous W n a)⟩
  let zb : Z2 (G (F := F)) (UnitsCoeff F) :=
    ⟨originalThetaUnitsCochain W n b,
      originalThetaUnitsCochain_mem_Z2_of_continuous
        W n b (originalThetaScalarContinuous W n b)⟩
  have hchange : ∀ σ τ : G (F := F),
      (za : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ) =
      k σ + σ • k τ - k (σ * τ) +
        (zb : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ) := by
    intro σ τ
    exact originalThetaUnits_representativeChange W n a b t ht σ τ
  have hh : (za : H2 (G (F := F)) (UnitsCoeff F)) =
      (zb : H2 (G (F := F)) (UnitsCoeff F)) :=
    originalUnitsH2_eq_of_continuousSectionChange
      (F := F) za zb k hk hchange
  change
    explicitH2AddEquivContinuousCohomology (G (F := F)) (UnitsCoeff F)
      (za : H2 (G (F := F)) (UnitsCoeff F)) =
    explicitH2AddEquivContinuousCohomology (G (F := F)) (UnitsCoeff F)
      (zb : H2 (G (F := F)) (UnitsCoeff F))
  exact congrArg (explicitH2AddEquivContinuousCohomology
    (G (F := F)) (UnitsCoeff F)) hh

/-- The original geometric theta obstruction is a
well-defined SET MAP on the ACTUAL source continuous
H¹(F,E[n]) quotient (not an additive homomorphism:
theta period-index obstructions are quadratic).
This uses the true source quotient surjection
and the PROVED representative-invariance statement. -/
noncomputable def originalThetaObstructionOnHOne :
    H1 (G (F := F)) (A W n) →
      continuousCohomology 2
        (ofDiscreteModule ℤ (G (F := F)) (UnitsCoeff F)) :=
  fun x =>
    originalThetaBrauerH2 W n
      (Classical.choose (QuotientAddGroup.mk_surjective x))

/-- The descended map evaluates at a cohomology class
exactly as the original rational-function construction
evaluates at any representative. No dependence on the
chosen quotient representative survives. -/
theorem originalThetaObstructionOnHOne_mk
    (a : Z1 (G (F := F)) (A W n)) :
    originalThetaObstructionOnHOne W n
      (a : H1 (G (F := F)) (A W n)) =
      originalThetaBrauerH2 W n a := by
  let x := (a : H1 (G (F := F)) (A W n))
  let chosen : Z1 (G (F := F)) (A W n) :=
    Classical.choose (QuotientAddGroup.mk_surjective x)
  have hchosen : (chosen : H1 (G (F := F)) (A W n)) =
      (a : H1 (G (F := F)) (A W n)) :=
    Classical.choose_spec (QuotientAddGroup.mk_surjective x)
  exact originalThetaBrauerH2_eq_of_HOne_eq W n chosen a hchosen

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneClassInvariant
