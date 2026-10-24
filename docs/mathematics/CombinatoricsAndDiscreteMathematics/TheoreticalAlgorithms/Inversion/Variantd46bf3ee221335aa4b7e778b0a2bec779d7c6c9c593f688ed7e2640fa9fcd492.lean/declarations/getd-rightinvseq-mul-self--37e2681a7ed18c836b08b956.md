# getD_rightInvSeq_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e0c20d3617828ef479631cbcd6c8f666f0a5b54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8646cd69-622e-235d-2dc6-147193a12081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05cce8d0-3f54-6f4d-15bd-043b708326bf",
  "kind": "theorem",
  "lexical_name": "getD_rightInvSeq_mul_self",
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
  "slug": "getd-rightinvseq-mul-self--37e2681a7ed18c836b08b956",
  "source": {
    "blob": "5e0c20d3617828ef479631cbcd6c8f666f0a5b54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 290,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37e2681a7ed18c836b08b9568b8db621d77a4572070a48f900832feb44241d2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05cce8d0-3f54-6f4d-15bd-043b708326bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_rightInvSeq_mul_self (ω : List B) (j : ℕ) :
    ((ris ω).getD j 1) * ((ris ω).getD j 1) = 1 := by
  simp_rw [getD_rightInvSeq, mul_assoc]
  rcases em (j < ω.length) with hj | nhj
  · rw [getElem?_eq_getElem hj]
    simp [← mul_assoc]
  · rw [getElem?_eq_none_iff.mpr (by omega)]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variantd46bf3ee221335aa4b7e778b0a2bec779d7c6c9c593f688ed7e2640fa9fcd492.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e0c20d3617828ef479631cbcd6c8f666f0a5b54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
