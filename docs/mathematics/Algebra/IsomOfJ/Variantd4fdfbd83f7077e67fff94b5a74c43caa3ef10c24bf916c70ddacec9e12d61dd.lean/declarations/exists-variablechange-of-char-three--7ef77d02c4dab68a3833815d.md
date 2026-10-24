# exists_variableChange_of_char_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d509459-5ab5-287d-dc0f-348f23a9ae94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2fdf348-9e33-d826-b741-2e8d48ecd77f",
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
  "slug": "exists-variablechange-of-char-three--7ef77d02c4dab68a3833815d",
  "source": {
    "blob": "58722997b352a3118099a7d9552a0f25e58d69a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 186,
    "path": "GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ef77d02c4dab68a3833815d76598b0e08ed0f289b4322c637363a027e3b91f9",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2fdf348-9e33-d826-b741-2e8d48ecd77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–208.

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

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variantd4fdfbd83f7077e67fff94b5a74c43caa3ef10c24bf916c70ddacec9e12d61dd.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58722997b352a3118099a7d9552a0f25e58d69a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
