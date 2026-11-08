/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. New file: Lean elaboration, fresh kernel replay,
transitive axiom audit and independent mathematical review NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.FreeGroupReducedVoltage
import Mathlib

/-!
# A uniform finite two-group observation of bounded reduced histories

This file consumes the ACTUAL Mathlib FreeGroup quotient, the matrix groups and
matrix coefficient defined in InverseEdgeFreeGroupVoltage, and the existing
source-returning VoltageCover.liftPath/erasePath operations.

For each L, every matrix pattern of length at most 2*L is included in ONE
finite direct-product group, independently of an inventory of source paths.
Its components use the existing TruncatedMagnus.representation, not a new
quotient or an endpoint-only replacement history. Every factor is a finite
2-group and the product has one explicit common 2-power exponent.

The source's TruncatedMagnus.syllableCoefficientLaw and
TruncatedMagnus.separates_syllables are already proved in the current
InverseEdgeFreeGroupVoltage module (main at ae0f6cd3b374e3520a3980271d704b865c897116).
This file adds unconditional uniform finite-group, exponent, and bounded
syllable-witness observation returns. Only the precise RadiusSyllableLaw,
which bounds the normal-form witness degree by 2*L in the canonical word metric,
remains a PROPOSITION INPUT rather than a completed Lean theorem.

The written argument for that remaining length bound appears in the supplied
dream-bounded-radius note. No new axiom is introduced, and the conditional
radius-injectivity theorem is not represented as an unconditional proof. The product of matrix groups is also not identified with
the smaller full truncated free associative algebra of order
2^(sum_{j=1}^{2*L} |A|^j). No cardinality claim for that algebra is made here.

A group-valued reduced observation loses raw inverse-pair events. The exact
path erasure theorem below remains the independent lossless source return.
There is no physical-spin, runtime-effect, Weil-form, RH, or GRH implication.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace UniformFiniteMagnusRadius

open InverseEdgeVoltage
open InverseEdgeVoltage.TruncatedMagnus

universe u v

/-- One preselected group of ALL source-pattern matrix observers through
    degree 2*L. Each coordinate is a concrete existing finite matrix group. -/
abbrev ObserverGroup (A : Type u) (L : ℕ) :=
  (i : Fin (2 * L + 1)) →
    (Fin i.val → A) → TruncatedMagnus.Group i.val

/-- This is a finite carrier for a finite source alphabet. -/
instance {A : Type u} [Finite A] (L : ℕ) :
    Finite (ObserverGroup A L) := by
  classical
  dsimp [ObserverGroup]
  infer_instance

/-- Uniform characteristic-two representation: every coordinate is the
    existing FreeGroup.lift of the actual matrix generator. -/
def uniformRep {A : Type u} [DecidableEq A] (L : ℕ) :
    FreeGroup A →* ObserverGroup A L where
  toFun w := fun i target => TruncatedMagnus.representation target w
  map_one' := by
    funext i target
    exact map_one (TruncatedMagnus.representation target)
  map_mul' := by
    intro x y
    funext i target
    exact map_mul (TruncatedMagnus.representation target) x y

/-- Every component shares the same safe exponent 2^(2*L+1). -/
theorem observerGroup_exponent {A : Type u} (L : ℕ)
    (x : ObserverGroup A L) : x ^ (2 ^ (2 * L + 1)) = 1 := by
  funext i target
  have hi : i.val + 1 ≤ 2 * L + 1 := by
    have := i.isLt
    omega
  have hlocal : (x i target) ^ (2 ^ (i.val + 1)) = 1 := by
    apply Units.ext
    exact TruncatedMagnus.unipotent_pow (x i target).val
  have hexp :
      2 ^ (2 * L + 1) =
        2 ^ (i.val + 1) * 2 ^ ((2 * L + 1) - (i.val + 1)) := by
    rw [← pow_add, Nat.add_sub_of_le hi]
  simp only [Pi.pow_apply, Pi.one_apply]
  rw [hexp, pow_mul, hlocal, one_pow]

/-- This construction has a genuine finite 2-group target, not merely
    finitely many unrelated finite groups. -/
theorem observerGroup_isTwoGroup {A : Type u} [Finite A] (L : ℕ) :
    IsPGroup 2 (ObserverGroup A L) := by
  rw [isPGroup_iff_pow_pow_eq_one]
  intro x
  exact ⟨2 * L + 1, observerGroup_exponent L x⟩

variable {A : Type u} [DecidableEq A]

/-- The now-proved degree-specific coefficient law is observed by one
    of the preinstalled components of the uniform product. -/
theorem detects_bounded_syllables (L : ℕ)
    (s : List (A × ℤ)) (hs : TruncatedMagnus.ReducedSyllables s)
    (hsize : (TruncatedMagnus.syllablePattern s).length ≤ 2 * L) :
    uniformRep (A := A) L (TruncatedMagnus.syllableClass s) ≠ 1 := by
  intro h
  let i : Fin (2 * L + 1) :=
    ⟨(TruncatedMagnus.syllablePattern s).length, by omega⟩
  have he := congrArg
    (fun f : ObserverGroup A L =>
      f i (TruncatedMagnus.syllablePattern s).get) h
  have hcomponent :
      TruncatedMagnus.representation
        (TruncatedMagnus.syllablePattern s).get
        (TruncatedMagnus.syllableClass s) = 1 := by
    simpa [uniformRep] using he
  exact (TruncatedMagnus.separates_syllables s hs) hcomponent

/-- A source-returned bounded syllable witness distinguishes two genuine
    free-group elements in the SAME uniform finite group. -/
theorem separates_pair_of_bounded_syllable (L : ℕ)
    (u v : FreeGroup A) (s : List (A × ℤ))
    (hs : TruncatedMagnus.ReducedSyllables s)
    (hclass : TruncatedMagnus.syllableClass s = u * v⁻¹)
    (hsize : (TruncatedMagnus.syllablePattern s).length ≤ 2 * L) :
    uniformRep (A := A) L u ≠ uniformRep (A := A) L v := by
  intro h
  have hzero : uniformRep (A := A) L (u * v⁻¹) = 1 := by
    calc
      uniformRep (A := A) L (u * v⁻¹) =
          uniformRep (A := A) L u *
            (uniformRep (A := A) L v)⁻¹ := by simp
      _ = 1 := by rw [h, mul_inv_cancel]
  rw [← hclass] at hzero
  exact (detects_bounded_syllables L s hs hsize) hzero

/-- The exact unproved bounded-radius return obligation.
    The length is that of Mathlib's canonical source free-group word.
    A proof must pay for reduction, syllable merging, and
    2^padicValNat(2, |e|) ≤ |e| for nonzero integer exponents. -/
def RadiusSyllableLaw (L : ℕ) : Prop :=
  ∀ u v : FreeGroup A,
    (FreeGroup.toWord u).length ≤ L →
    (FreeGroup.toWord v).length ≤ L →
    u ≠ v →
    ∃ s : List (A × ℤ),
      TruncatedMagnus.ReducedSyllables s ∧
      TruncatedMagnus.syllableClass s = u * v⁻¹ ∧
      (TruncatedMagnus.syllablePattern s).length ≤ 2 * L

/-- Bounded-radius injectivity, conditional only on the explicit
    source-length return law. The coefficient law is now a proved import. -/
theorem injective_on_radius_of_law (L : ℕ)
    (hreturn : RadiusSyllableLaw (A := A) L)
    (u v : FreeGroup A)
    (hu : (FreeGroup.toWord u).length ≤ L)
    (hv : (FreeGroup.toWord v).length ≤ L)
    (himage : uniformRep (A := A) L u = uniformRep (A := A) L v) :
    u = v := by
  by_contra hne
  obtain ⟨s, hs, hclass, hsize⟩ := hreturn u v hu hv hne
  exact (separates_pair_of_bounded_syllable L u v s hs
    hclass hsize) himage

/-- The voltage on a source letter is its actual image under the
    preinstalled uniform free-group homomorphism. -/
def generatorVoltage (L : ℕ) (a : A) : ObserverGroup A L :=
  uniformRep (A := A) L (FreeGroup.of a)

/-- The free-group universal property makes the NEW voltage exactly
    the existing uniform representation on every source class. -/
theorem uniform_lift_eq (L : ℕ) (w : FreeGroup A) :
    (FreeGroup.lift (generatorVoltage (A := A) L)) w =
      uniformRep (A := A) L w := by
  symm
  exact FreeGroup.lift_unique (uniformRep (A := A) L)
    (by intro a; rfl)

/-- Marked lifted endpoints read the genuine source group class,
    not a substitute endpoint encoding. -/
theorem endpoint_eq (L : ℕ) (xs : List (A × Bool))
    (g : ObserverGroup A L) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (generatorVoltage (A := A) L))
      (signedBouquetPath xs) g).1 =
        g * uniformRep (A := A) L (sourceFreeClass xs) := by
  rw [signedBouquet_lift_endpoint, uniform_lift_eq]

/-- Complete source recovery retains EVERY signed event, including
    a nonempty adjacent inverse pair whose group voltage is one. -/
theorem exact_source_return (L : ℕ) (xs : List (A × Bool))
    (g : ObserverGroup A L) :
    VoltageCover.erasePath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (generatorVoltage (A := A) L))
      (VoltageCover.liftPath
        (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (generatorVoltage (A := A) L))
        (signedBouquetPath xs) g).2 = signedBouquetPath xs :=
  signedBouquet_erase_lift _ _ _

/-- A correctly supplied radius length theorem returns to the ACTUAL voltage
    cover; finite endpoints never replace chronological source histories. -/
theorem endpoints_distinct_of_law (L : ℕ)
    (hreturn : RadiusSyllableLaw (A := A) L)
    (xs ys : List (A × Bool))
    (hx : (FreeGroup.toWord (sourceFreeClass xs)).length ≤ L)
    (hy : (FreeGroup.toWord (sourceFreeClass ys)).length ≤ L)
    (hne : sourceFreeClass xs ≠ sourceFreeClass ys)
    (g : ObserverGroup A L) :
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (generatorVoltage (A := A) L))
      (signedBouquetPath xs) g).1 ≠
    (VoltageCover.liftPath
      (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (generatorVoltage (A := A) L))
      (signedBouquetPath ys) g).1 := by
  intro h
  rw [endpoint_eq, endpoint_eq] at h
  have heq := mul_left_cancel h
  exact hne (injective_on_radius_of_law L hreturn
    (sourceFreeClass xs) (sourceFreeClass ys) hx hy heq)

end UniformFiniteMagnusRadius
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
