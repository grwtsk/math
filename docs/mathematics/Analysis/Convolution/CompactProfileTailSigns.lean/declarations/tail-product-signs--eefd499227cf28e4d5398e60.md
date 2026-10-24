# tail_product_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2788ff7b-2b98-5817-1213-646ba7688453",
  "kind": "theorem",
  "lexical_name": "tail_product_signs",
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
  "slug": "tail-product-signs--eefd499227cf28e4d5398e60",
  "source": {
    "blob": "97a04434a3ee8926caafa98cc7bd3a590bb4e4c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 21,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileTailSigns.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefd499227cf28e4d5398e60a7cda833475488b3cdbfca15f255b7c2498d4867",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileTailSigns.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2788ff7b-2b98-5817-1213-646ba7688453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_product_signs {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    deriv (normalizedSource A) x * normalizedSource A (x - (2 * A - 1 / 16)) ≤ 0 ∧
      0 ≤ -(deriv (normalizedSource A) x *
        deriv (normalizedSource A) (x - (2 * A - 1 / 16))) := by
  have positive : 0 < A := by linarith
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hy : x - (2 * A - 1 / 16) ∈ Icc (-A) A
    · by_cases rightEndpoint : x = A
      · rw [rightEndpoint, (normalized_source_endpoint_zero positive).2.2.1]
        simp
      · by_cases leftEndpoint : x - (2 * A - 1 / 16) = -A
        · rw [leftEndpoint, (normalized_source_endpoint_zero positive).2.1,
            (normalized_source_endpoint_zero positive).2.2.2]
          simp
        · have rightStrip : A - 1 / 16 ≤ x ∧ x < A :=
            ⟨by linarith [hy.1], lt_of_le_of_ne hx.2 rightEndpoint⟩
          have leftStrip : -A < x - (2 * A - 1 / 16) ∧
              x - (2 * A - 1 / 16) ≤ -A + 1 / 16 :=
            ⟨lt_of_le_of_ne hy.1 (Ne.symm leftEndpoint), by linarith [hx.2]⟩
          obtain ⟨_, rightNegative⟩ := normalized_source_right_strip_signs hA rightStrip
          obtain ⟨leftPositive, leftDerivativePositive⟩ :=
            normalized_source_left_strip_signs hA leftStrip
          exact ⟨(mul_neg_of_neg_of_pos rightNegative leftPositive).le,
            (neg_pos.mpr (mul_neg_of_neg_of_pos rightNegative leftDerivativePositive)).le⟩
    · rw [normalized_source_zero_outside positive hy,
        normalized_source_deriv_zero_outside positive hy]
      simp
  · rw [normalized_source_deriv_zero_outside positive hx]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileTailSigns.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileTailSigns.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a04434a3ee8926caafa98cc7bd3a590bb4e4c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
