# exists_variableChange_of_char_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4ed70b1-8f69-2ea3-49bc-e041f0bc5074",
  "kind": "lemma",
  "lexical_name": "exists_variableChange_of_char_three",
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
  "slug": "exists-variablechange-of-char-three--1d4b2ad616e9599248b9bb6d",
  "source": {
    "blob": "44f09bbf76991cb0401c158eb250a5141b6a982b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 192,
    "path": "GRWTSK/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d4b2ad616e9599248b9bb6db5cd758c22dc7bfe5b83ce222a0ad5ec2f9f866c",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4ed70b1-8f69-2ea3-49bc-e041f0bc5074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_variableChange_of_char_three (heq : E.j = E'.j) :
    ∃ C : VariableChange F, C • E = E' := by
  obtain ⟨C, _ | _⟩ := E.exists_variableChange_isCharThreeNF
  · obtain ⟨C', _ | _⟩ := E'.exists_variableChange_isCharThreeNF
    · rw [← variableChange_j E C, ← variableChange_j E' C'] at heq
      obtain ⟨C'', hC⟩ := exists_variableChange_of_char_three_of_j_ne_zero _ _ heq
      use C'⁻¹ * C'' * C
      rw [mul_smul, mul_smul, hC, ← mul_smul, inv_mul_cancel, one_smul]
    · have h := (C • E).j_ne_zero_of_isCharThreeJNeZeroNF_of_char_three
      rw [variableChange_j, heq, ← variableChange_j E' C', j_of_isShortNF_of_char_three] at h
      exact False.elim (h rfl)
  · obtain ⟨C', _ | _⟩ := E'.exists_variableChange_isCharThreeNF
    · have h := (C' • E').j_ne_zero_of_isCharThreeJNeZeroNF_of_char_three
      rw [variableChange_j, ← heq, ← variableChange_j E C, j_of_isShortNF_of_char_three] at h
      exact False.elim (h rfl)
    · obtain ⟨C'', hC⟩ := exists_variableChange_of_char_three_of_j_eq_zero (C • E) (C' • E')
      use C'⁻¹ * C'' * C
      rw [mul_smul, mul_smul, hC, ← mul_smul, inv_mul_cancel, one_smul]

end CharThree

section CharNeTwoOrThree

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variant6fdd805796b5c78586150365f9d1da7bc8da0d90719f4d3b8ddbc698050c72f7.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f09bbf76991cb0401c158eb250a5141b6a982b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
