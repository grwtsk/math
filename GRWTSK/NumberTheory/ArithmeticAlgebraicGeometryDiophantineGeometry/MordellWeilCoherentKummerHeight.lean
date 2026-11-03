/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The genuine elliptic Kummer tower's arithmetic height boundary

For an elliptic curve E/Q, the TRUE arithmetic maps are the classical
Kummer maps E(Q) / p^n E(Q) -> Sel_(p^n)(E/Q). Their actual Lean
constructors and the Selmer--Sha exactness supplier have been identified
in Tau Ceti's GaloisCohomology/Selmer/Basic.lean (2026).
This file is an ISOLATED general algebra consumer, not a redefinition
of those classes and not a proof that the incompatible external Lean
package is already linked to grwtsk/math.

Inputs kappa_n are actual level homomorphisms WHEN supplied. The
level kernel law must come from the authentic Kummer exact sequence.
On the complete tower, the common kernel is the p-divisible
intersection, not automatically zero on all E(Q) (prime-to-p
torsion is a counterexample).

A real Neron--Tate pairing can be transported to the IMAGE of the
complete coherent Kummer tower once the common kernel is shown to
be annihilated by that original height pairing. This is true for
the classical Mordell--Weil group, but the real height CANNOT be
defined on an individual finite Selmer quotient: nP and 0 have
identical n-Kummer class yet different heights for nontorsion P.

No noncanonical Q_p -> C identification, p-adic height/real height
equality, higher-rank analytic zero multiplicity, or BSD is assumed.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.CoherentKummerHeight

variable {A : Type*} [AddCommGroup A]
variable {S : ℕ → Type*} [∀ n, AddCommGroup (S n)]

/-- The full family of level classes, with no invented
finite-dimensional spectral data. -/
def kummerTower (kappa : ∀ n, A →+ S n) (a : A) : ∀ n, S n :=
  fun n => kappa n a

theorem kummerTower_zero (kappa : ∀ n, A →+ S n) :
    kummerTower kappa (0 : A) = 0 := by
  funext n
  simp [kummerTower]

theorem kummerTower_add (kappa : ∀ n, A →+ S n) (a b : A) :
    kummerTower kappa (a + b) =
      kummerTower kappa a + kummerTower kappa b := by
  funext n
  simp [kummerTower, map_add, Pi.add_apply]

/-- Equality of all coherent Kummer observations kills their difference
at EVERY level. This is not yet an injectivity assertion on E(Q). -/
theorem tower_equal_implies_level_kernel
    (kappa : ∀ n, A →+ S n) (a b : A)
    (h : kummerTower kappa a = kummerTower kappa b) (n : ℕ) :
    kappa n (a - b) = 0 := by
  have hn : kappa n a = kappa n b :=
    congrArg (fun t : ∀ n, S n => t n) h
  simpa [map_sub, hn]

/-- The EXACT Kummer-level kernel law is an external arithmetic
supplier, not an assumed rank bound. Its all-level consequence
retains the complete common p-divisibility obstruction. -/
theorem tower_kernel_iff_power_divisible
    (p : ℕ) (kappa : ∀ n, A →+ S n)
    (hkernel : ∀ n a, kappa n a = 0 ↔
       ∃ b : A, a = (p ^ n) • b)
    (a : A) :
    (∀ n, kappa n a = 0) ↔
      (∀ n, ∃ b : A, a = (p ^ n) • b) := by
  constructor
  · intro h n
    exact (hkernel n a).mp (h n)
  · intro h n
    exact (hkernel n a).mpr (h n)

/-- A TRUE torsion-free separated Mordell--Weil lattice (or a chosen
torsion-free section with an exact Kummer kernel) embeds in the tower.
Separation is explicit because it fails on prime-to-p torsion. -/
theorem tower_injective_of_power_separated
    (p : ℕ) (kappa : ∀ n, A →+ S n)
    (hkernel : ∀ n a, kappa n a = 0 ↔
       ∃ b : A, a = (p ^ n) • b)
    (hseparated : ∀ a : A,
       (∀ n, ∃ b : A, a = (p ^ n) • b) → a = 0) :
    Function.Injective (kummerTower kappa) := by
  intro a b hab
  apply sub_eq_zero.mp
  apply hseparated
  intro n
  exact (hkernel n (a - b)).mp
    (tower_equal_implies_level_kernel kappa a b hab n)

/-- Exact source image; it is NOT the entire Selmer group. -/
abbrev KummerImage (kappa : ∀ n, A →+ S n) :=
  { t : (∀ n, S n) // t ∈ Set.range (kummerTower kappa) }

def packSource (kappa : ∀ n, A →+ S n) (a : A) :
    KummerImage kappa :=
  ⟨kummerTower kappa a, ⟨a, rfl⟩⟩

/-- A representative exists by definition of the *actual image*.
Its noncanonical choice does not affect the transported Neron--Tate
pairing when the common Kummer kernel is height-orthogonal. -/
noncomputable def chooseSource (kappa : ∀ n, A →+ S n)
    (t : KummerImage kappa) : A :=
  Classical.choose t.property

theorem chooseSource_spec (kappa : ∀ n, A →+ S n)
    (t : KummerImage kappa) :
    kummerTower kappa (chooseSource kappa t) = t.val :=
  Classical.choose_spec t.property

/-- Original source pairing transport is only on the authentic
coherent image. This does NOT define a native p-adic Selmer height,
and its real values are not asserted to extend continuously. -/
noncomputable def heightOnImage (kappa : ∀ n, A →+ S n)
    (B : A → A → ℝ) (u v : KummerImage kappa) : ℝ :=
  B (chooseSource kappa u) (chooseSource kappa v)

/-- Exactly the arithmetic hypotheses needed for the transported
height to be independent of the representatives. For a genuine
Mordell--Weil source, these follow from bilinearity and the
annihilation of torsion by the actual Neron--Tate pairing. -/
def KernelHeightCompatible (kappa : ∀ n, A →+ S n)
    (B : A → A → ℝ) : Prop :=
  (∀ u v w, B (u - v) w = B u w - B v w) ∧
  (∀ u v w, B u (v - w) = B u v - B u w) ∧
  (∀ d, (∀ n, kappa n d = 0) →
       ∀ z, B d z = 0 ∧ B z d = 0)

/-- Complete original-height return along the ACTUAL image; the
finite-level and common-kernel obligations remain visible. -/
theorem heightOnImage_packSource
    (kappa : ∀ n, A →+ S n) (B : A → A → ℝ)
    (hcompat : KernelHeightCompatible kappa B) (a b : A) :
    heightOnImage kappa B (packSource kappa a)
      (packSource kappa b) = B a b := by
  rcases hcompat with ⟨hleft, hright, hkernel⟩
  let a' := chooseSource kappa (packSource kappa a)
  let b' := chooseSource kappa (packSource kappa b)
  have ha : kummerTower kappa a' = kummerTower kappa a := by
    simpa [a', packSource] using
      (chooseSource_spec kappa (packSource kappa a))
  have hb : kummerTower kappa b' = kummerTower kappa b := by
    simpa [b', packSource] using
      (chooseSource_spec kappa (packSource kappa b))
  have ha0 : ∀ n, kappa n (a' - a) = 0 :=
    tower_equal_implies_level_kernel kappa a' a ha
  have hb0 : ∀ n, kappa n (b' - b) = 0 :=
    tower_equal_implies_level_kernel kappa b' b hb
  have hA : B a' b' = B a b' := by
    have hz := (hkernel (a' - a) ha0 b').1
    rw [hleft a' a b'] at hz
    exact sub_eq_zero.mp hz
  have hB : B a b' = B a b := by
    have hz := (hkernel (b' - b) hb0 a).2
    rw [hright a b' b] at hz
    exact sub_eq_zero.mp hz
  change B a' b' = B a b
  exact hA.trans hB

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

def originalSourceGram (B : A → A → ℝ) (P : ι → A) :
    Matrix ι ι ℝ :=
  fun i j => B (P i) (P j)

def coherentImageGram (kappa : ∀ n, A →+ S n)
    (B : A → A → ℝ) (P : ι → A) : Matrix ι ι ℝ :=
  fun i j => heightOnImage kappa B
    (packSource kappa (P i)) (packSource kappa (P j))

/-- All arithmetic off-diagonal height terms are returned unchanged
when observations are taken in the FULL coherent Kummer image. -/
theorem coherentImageGram_eq_source
    (kappa : ∀ n, A →+ S n) (B : A → A → ℝ)
    (hcompat : KernelHeightCompatible kappa B) (P : ι → A) :
    coherentImageGram kappa B P = originalSourceGram B P := by
  ext i j
  exact heightOnImage_packSource kappa B hcompat (P i) (P j)

/-- Determinant of the actual source Gram is conserved on its coherent
Kummer image. To call it Reg(E), P MUST be a genuine integral
Mordell--Weil basis and B the true Neron--Tate pairing. -/
theorem coherentImageGram_det_eq_source
    (kappa : ∀ n, A →+ S n) (B : A → A → ℝ)
    (hcompat : KernelHeightCompatible kappa B) (P : ι → A) :
    (coherentImageGram kappa B P).det =
      (originalSourceGram B P).det := by
  rw [coherentImageGram_eq_source kappa B hcompat P]

/-- Positive definite height on a torsion-free lattice rules out
a nontrivial common Kummer kernel. On E(Q), positive definiteness
holds only AFTER removing torsion, so do not use this statement on
the full rational point group. -/
theorem tower_injective_of_height_kernel
    (kappa : ∀ n, A →+ S n) (B : A → A → ℝ)
    (hcompat : KernelHeightCompatible kappa B)
    (hpositive : ∀ a : A, B a a = 0 → a = 0) :
    Function.Injective (kummerTower kappa) := by
  intro a b hab
  have hk : ∀ n, kappa n (a - b) = 0 :=
    tower_equal_implies_level_kernel kappa a b hab
  have hz : B (a - b) (a - b) = 0 :=
    (hcompat.2.2 (a - b) hk (a - b)).1
  exact sub_eq_zero.mp (hpositive (a - b) hz)

/-- A genuine finite Kummer level identifies n*P with the zero
class. For positive canonical height, the real quadratic height
cannot factor through this finite group: all claimed finite
Selmer-height descendings must be rejected. -/
theorem positive_height_not_factor_through_finite_kummer
    {T : Type*} [AddCommGroup T]
    (delta : A →+ T) (height : A → ℝ)
    (n : ℕ) (hn : 0 < n) (P : A)
    (hkill : delta (n • P) = 0)
    (hzero : height 0 = 0)
    (hquad : height (n • P) = (n : ℝ) ^ 2 * height P)
    (hpositive : 0 < height P) :
    ¬ ∃ h : T → ℝ, ∀ x : A, h (delta x) = height x := by
  rintro ⟨h, hfactor⟩
  have hz : height (n • P) = 0 := by
    calc
      height (n • P) = h (delta (n • P)) := (hfactor _).symm
      _ = h (delta 0) := by rw [hkill, map_zero]
      _ = height 0 := hfactor 0
      _ = 0 := hzero
  rw [hquad] at hz
  have hnreal : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hp : 0 < (n : ℝ) ^ 2 * height P :=
    mul_pos (sq_pos_of_pos hnreal) hpositive
  exact (ne_of_gt hp) hz


/-! ## Coherence is a separate real Galois-cohomological obligation.

The Tau Ceti Kummer class at level p^(n+1) must be compatible with the
actual cohomological transition E[p^(n+1)] -> E[p^n]. An arbitrary family
of homomorphisms does not automatically have this property.
-/

/-- Exact transition maps and a PROOF they preserve the authentic
Kummer classes. The compatibility fields must be proved from the
underlying Galois cohomology; they are not arbitrary Euler factors. -/
structure KummerTransitionData (kappa : ∀ n, A →+ S n) where
  restriction : ∀ n, S (n + 1) →+ S n
  commutes : ∀ n a,
    restriction n (kappa (n + 1) a) = kappa n a

/-- The actual coherent inverse-limit conditions, not the raw
unrestricted product of finite Selmer groups. -/
def CoherentKummerClasses (kappa : ∀ n, A →+ S n)
    (t : KummerTransitionData kappa) :=
  { packet : (∀ n, S n) //
      ∀ n, t.restriction n (packet (n + 1)) = packet n }

/-- An authentic compatible Kummer map sends each original point
to a COHERENT tower element. The proof is a direct use of the supplied
natural cohomological compatibility, not an assumed rank equality. -/
def coherentClassOfSource (kappa : ∀ n, A →+ S n)
    (t : KummerTransitionData kappa) (a : A) :
    CoherentKummerClasses kappa t :=
  ⟨kummerTower kappa a, by
    intro n
    exact t.commutes n a⟩

/-- The separated, positive-height arithmetic lattice injects into
the genuine coherent inverse limit, not merely the product, once
the actual level Kummer and height-kernel suppliers are provided. -/
theorem coherentClass_injective_of_positive_height
    (kappa : ∀ n, A →+ S n) (t : KummerTransitionData kappa)
    (B : A → A → ℝ)
    (hcompat : KernelHeightCompatible kappa B)
    (hpositive : ∀ a : A, B a a = 0 → a = 0) :
    Function.Injective (coherentClassOfSource kappa t) := by
  intro a b hab
  exact tower_injective_of_height_kernel kappa B hcompat hpositive
    (congrArg Subtype.val hab)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.CoherentKummerHeight
