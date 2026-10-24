# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHammingSupport.Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9a09f2e95c99da5dbb0203df7028259e5294845` · SHA-256 `97c0133e889901c912712a2d7ec777a2bebd4c7caa48d53a258ad6f6b744db1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSupport.Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteSupport.Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/FiniteHammingSupport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.BitVec.Lemmas
import Mathematics.Projection.ExactOverlap
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Finset.Card

/-!
# Finite support of Boolean incidence

The finite Hamming metric is the cardinality of symmetric support difference.
This elementary representation is exact and contains no floating embedding.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSupport.Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c

namespace Mathematics.Projection

/-- Set coordinates of one finite incidence code. -/
def finiteSupport
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    Finset (Fin width) :=
  Finset.univ.filter fun index ↦ code.bits.getLsb index = true

/-- Exact incidence code represented by a finite coordinate set. -/
def incidenceOfSupport
    {width : Nat}
    (support : Finset (Fin width)) :
    FiniteIncidenceCode width where
  bits := BitVec.ofFnLE fun index ↦ decide (index ∈ support)

@[simp]
theorem finiteSupport_incidenceOfSupport
    {width : Nat}
    (support : Finset (Fin width)) :
    finiteSupport (incidenceOfSupport support) = support := by
  ext index
  simp [finiteSupport, incidenceOfSupport]

@[simp]
theorem incidenceOfSupport_finiteSupport
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    incidenceOfSupport (finiteSupport code) = code := by
  cases code with
  | mk bits =>
      have bits_equal :
          (incidenceOfSupport
            (finiteSupport { bits := bits })).bits = bits := by
        apply BitVec.eq_of_getElem_eq
        intro index inBounds
        simp [incidenceOfSupport, finiteSupport]
      simpa [incidenceOfSupport] using
        congrArg FiniteIncidenceCode.mk bits_equal

private theorem cpopNatRec_eq_sum_range
    {width count : Nat}
    (bits : BitVec width) :
    bits.cpopNatRec count 0 =
      ∑ index ∈ Finset.range count,
        (bits.getLsbD index).toNat := by
  induction count with
  | zero =>
      simp
  | succ count inductionHypothesis =>
      simp only [BitVec.cpopNatRec_succ]
      rw [BitVec.cpopNatRec_eq, inductionHypothesis]
      rw [Finset.sum_range_succ]
      simp only [Nat.zero_add]

/-- Population count is exactly finite-support cardinality. -/
theorem cpop_eq_finiteSupport_card
    {width : Nat}
    (code : FiniteIncidenceCode width) :
    code.bits.cpop.toNat = (finiteSupport code).card := by
  rw [BitVec.toNat_cpop, cpopNatRec_eq_sum_range]
  rw [← Fin.sum_univ_eq_sum_range]
  calc
    (∑ index : Fin width, (code.bits.getLsb index).toNat) =
        ∑ index : Fin width,
          if code.bits.getLsb index = true then 1 else 0 := by
            apply Finset.sum_congr rfl
            intro index _
            cases code.bits.getLsb index <;> simp
    _ = (finiteSupport code).card := by
      simp [finiteSupport, Finset.sum_boole]

/-- Finite Hamming distance is symmetric-support-difference cardinality. -/
theorem finiteHamming_eq_card_sdiff_union_sdiff
    {width : Nat}
    (left right : FiniteIncidenceCode width) :
    finiteHamming left right =
      ((finiteSupport left \ finiteSupport right) ∪
        (finiteSupport right \ finiteSupport left)).card := by
  rw [finiteHamming, cpop_eq_finiteSupport_card]
  congr 1
  ext index
  have bool_ne_iff
      (leftBit rightBit : Bool) :
      leftBit ≠ rightBit ↔
        (leftBit = true ∧ rightBit = false) ∨
          (rightBit = true ∧ leftBit = false) := by
    cases leftBit <;> cases rightBit <;> simp
  simpa [finiteSupport] using
    bool_ne_iff
      (left.bits.getLsb index)
      (right.bits.getLsb index)

/-- Exact finite Hamming distance is symmetric. -/
theorem finiteHamming_comm
    {width : Nat}
    (left right : FiniteIncidenceCode width) :
    finiteHamming left right = finiteHamming right left := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [Finset.union_comm]

/-- Hamming distance to a containing support counts the missing coordinates. -/
theorem finiteHamming_incidenceOfSupport_of_subset
    {width : Nat}
    {left right : Finset (Fin width)}
    (subset : left ⊆ right) :
    finiteHamming
        (incidenceOfSupport left)
      (incidenceOfSupport right) =
      (right \ left).card := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteSupport_incidenceOfSupport, finiteSupport_incidenceOfSupport]
  rw [Finset.sdiff_eq_empty_iff_subset.mpr subset]
  simp

/-- Disjoint supports have additive Hamming distance. -/
theorem finiteHamming_incidenceOfSupport_of_disjoint
    {width : Nat}
    {left right : Finset (Fin width)}
    (disjoint : Disjoint left right) :
    finiteHamming
        (incidenceOfSupport left)
        (incidenceOfSupport right) =
      left.card + right.card := by
  rw [finiteHamming_eq_card_sdiff_union_sdiff]
  rw [finiteSupport_incidenceOfSupport, finiteSupport_incidenceOfSupport]
  rw [Finset.sdiff_eq_self_of_disjoint disjoint]
  rw [Finset.sdiff_eq_self_of_disjoint disjoint.symm]
  exact Finset.card_union_of_disjoint disjoint

end Mathematics.Projection
```
