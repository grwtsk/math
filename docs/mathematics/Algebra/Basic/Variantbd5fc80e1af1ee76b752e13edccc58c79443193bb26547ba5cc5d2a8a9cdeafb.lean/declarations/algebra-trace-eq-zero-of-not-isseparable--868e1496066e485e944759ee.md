# Algebra.trace_eq_zero_of_not_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63970824-d200-813c-9b09-886177d06b8a",
  "kind": "lemma",
  "lexical_name": "Algebra.trace_eq_zero_of_not_isSeparable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "algebra-trace-eq-zero-of-not-isseparable--868e1496066e485e944759ee",
  "source": {
    "blob": "01097c8fe6fc42f93d70fa0be5fa76cda768b701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 286,
    "path": "GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:868e1496066e485e944759ee8a1eb6e0ab84d4b80f7daaae28cd86b8e4f55597",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63970824-d200-813c-9b09-886177d06b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.trace_eq_zero_of_not_isSeparable (H : ¬ Algebra.IsSeparable K L) :
    trace K L = 0 := by
  obtain ⟨p, hp⟩ := ExpChar.exists K
  have := expChar_ne_zero K p
  ext x
  by_cases h₀ : FiniteDimensional K L; swap
  · rw [trace_eq_zero_of_not_exists_basis]
    rintro ⟨s, ⟨b⟩⟩
    exact h₀ (Module.Finite.of_basis b)
  by_cases hx : IsSeparable K x
  · lift x to separableClosure K L using hx
    rw [← IntermediateField.algebraMap_apply, ← trace_trace (S := separableClosure K L),
      trace_algebraMap]
    obtain ⟨n, hn⟩ := IsPurelyInseparable.finrank_eq_pow (separableClosure K L) L p
    cases n with
    | zero =>
      rw [pow_zero, IntermediateField.finrank_eq_one_iff_eq_top, separableClosure.eq_top_iff] at hn
      cases H hn
    | succ n =>
      cases hp with
      | zero =>
        rw [one_pow, IntermediateField.finrank_eq_one_iff_eq_top, separableClosure.eq_top_iff] at hn
        cases H hn
      | prime hprime =>
        rw [hn, pow_succ', mul_smul, LinearMap.map_smul_of_tower, nsmul_eq_mul,
          CharP.cast_eq_zero, zero_mul, LinearMap.zero_apply]
  · rw [trace_eq_finrank_mul_minpoly_nextCoeff]
    obtain ⟨g, hg₁, m, hg₂⟩ :=
      (minpoly.irreducible (IsIntegral.isIntegral (R := K) x)).hasSeparableContraction p
    cases m with
    | zero =>
      obtain rfl : g = minpoly K x := by simpa using hg₂
      cases hx hg₁
    | succ n =>
      rw [nextCoeff, ite_eq_right, ← hg₂, coeff_expand (by positivity),
        ite_eq_right, neg_zero, mul_zero, LinearMap.zero_apply]
      · rw [natDegree_expand]
        intro h
        have := Nat.dvd_sub (dvd_mul_left (p ^ (n + 1)) g.natDegree) h
        rw [tsub_tsub_cancel_of_le, Nat.dvd_one] at this
        · obtain rfl : g = minpoly K x := by simpa [this] using hg₂
          cases hx hg₁
        · rw [Nat.one_le_iff_ne_zero]
          have : g.natDegree ≠ 0 := fun e ↦ by
            have := congr(natDegree $hg₂)
            rw [natDegree_expand, e, zero_mul] at this
            exact (minpoly.natDegree_pos (IsIntegral.isIntegral x)).ne this
          positivity
      · exact (minpoly.natDegree_pos (IsIntegral.isIntegral x)).ne'

end NotIsSeparable

section DetNeZero

namespace Algebra

variable (A : Type u) {B : Type v} (C : Type z)
variable [CommRing A] [CommRing B] [Algebra A B] [CommRing C] [Algebra A C]

open Finset

/-- Given an `A`-algebra `B` and `b`, a `κ`-indexed family of elements of `B`, we define
`traceMatrix A b` as the matrix whose `(i j)`-th element is the trace of `b i * b j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbd5fc80e1af1ee76b752e13edccc58c79443193bb26547ba5cc5d2a8a9cdeafb.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01097c8fe6fc42f93d70fa0be5fa76cda768b701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
