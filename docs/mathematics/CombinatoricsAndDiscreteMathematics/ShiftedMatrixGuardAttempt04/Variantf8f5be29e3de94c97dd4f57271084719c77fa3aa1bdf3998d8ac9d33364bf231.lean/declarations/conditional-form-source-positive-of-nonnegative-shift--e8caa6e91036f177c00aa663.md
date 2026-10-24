# conditional_form_source_positive_of_nonnegative_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8763a8188f980903b1deecf96b8c10da26e98ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0afa40d-0dd7-d536-1773-4a490dabc586",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c360c8d-fbcd-50cf-a09d-fee4bc168939",
  "kind": "theorem",
  "lexical_name": "conditional_form_source_positive_of_nonnegative_shift",
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
  "slug": "conditional-form-source-positive-of-nonnegative-shift--e8caa6e91036f177c00aa663",
  "source": {
    "blob": "e8763a8188f980903b1deecf96b8c10da26e98ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8caa6e91036f177c00aa6633ad34c81b375a5726fb552a71e80463a7291af3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c360c8d-fbcd-50cf-a09d-fee4bc168939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conditional_form_source_positive_of_nonnegative_shift
    {V : Type*} (Q N : V → ℝ) {lam : ℝ} (hlam : 0 ≤ lam)
    (hnorm : ∀ v, 0 ≤ N v) (hshift : ∀ v, 0 ≤ Q v - lam * N v) :
    ∀ v, 0 ≤ Q v := by
  intro v
  have hprod := mul_nonneg hlam (hnorm v)
  have h := hshift v
  linarith

end ContinuousResearch.ShiftedMatrixGuard

#print ContinuousResearch.ShiftedMatrixGuard.shifted
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted
#print ContinuousResearch.ShiftedMatrixGuard.bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.bottom
#print ContinuousResearch.ShiftedMatrixGuard.bottom_le_eigenvalue
#print axioms ContinuousResearch.ShiftedMatrixGuard.bottom_le_eigenvalue
#print ContinuousResearch.ShiftedMatrixGuard.le_bottom_iff
#print axioms ContinuousResearch.ShiftedMatrixGuard.le_bottom_iff
#print ContinuousResearch.ShiftedMatrixGuard.source_positive_iff_bottom_nonneg
#print axioms ContinuousResearch.ShiftedMatrixGuard.source_positive_iff_bottom_nonneg
#print ContinuousResearch.ShiftedMatrixGuard.shifted_eq_spectral_conjugate
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_eq_spectral_conjugate
#print ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_le_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_le_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_lt_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_positive_of_lt_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_strict_positive_of_lt_bottom
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_strict_positive_of_lt_bottom
#print ContinuousResearch.ShiftedMatrixGuard.shifted_quadratic_exact
#print axioms ContinuousResearch.ShiftedMatrixGuard.shifted_quadratic_exact
#print ContinuousResearch.ShiftedMatrixGuard.source_positive_of_shift_positive_and_nonnegative_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.source_positive_of_shift_positive_and_nonnegative_shift
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_shifted_by_negative_two
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_shifted_by_negative_two
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_has_positive_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_has_positive_shift
#print ContinuousResearch.ShiftedMatrixGuard.negative_one_source_not_positive
#print axioms ContinuousResearch.ShiftedMatrixGuard.negative_one_source_not_positive
#print ContinuousResearch.ShiftedMatrixGuard.no_unconditional_shift_descent
#print axioms ContinuousResearch.ShiftedMatrixGuard.no_unconditional_shift_descent
#print ContinuousResearch.ShiftedMatrixGuard.conditional_form_shift_coercive
#print axioms ContinuousResearch.ShiftedMatrixGuard.conditional_form_shift_coercive
#print ContinuousResearch.ShiftedMatrixGuard.conditional_form_source_positive_of_nonnegative_shift
#print axioms ContinuousResearch.ShiftedMatrixGuard.conditional_form_source_positive_of_nonnegative_shift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt04/Variantf8f5be29e3de94c97dd4f57271084719c77fa3aa1bdf3998d8ac9d33364bf231.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8763a8188f980903b1deecf96b8c10da26e98ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
