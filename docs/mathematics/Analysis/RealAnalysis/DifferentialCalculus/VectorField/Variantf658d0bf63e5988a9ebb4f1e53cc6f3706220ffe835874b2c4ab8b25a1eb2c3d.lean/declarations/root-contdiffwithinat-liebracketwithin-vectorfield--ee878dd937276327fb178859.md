# _root_.ContDiffWithinAt.lieBracketWithin_vectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bd74e02092928977d6dc53bb370a01959f7c705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47088ecd-d291-4e44-56ec-4aeff2d65b00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:275f01f9-fc47-e90d-766e-737a60cd63b6",
  "kind": "lemma",
  "lexical_name": "_root_.ContDiffWithinAt.lieBracketWithin_vectorField",
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
  "slug": "root-contdiffwithinat-liebracketwithin-vectorfield--ee878dd937276327fb178859",
  "source": {
    "blob": "7bd74e02092928977d6dc53bb370a01959f7c705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee878dd937276327fb178859f0d362afb5d9bd093803dd5d17a762ad69fcda76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:275f01f9-fc47-e90d-766e-737a60cd63b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ContDiffWithinAt.lieBracketWithin_vectorField
    {m n : WithTop ℕ∞} (hV : ContDiffWithinAt 𝕜 n V s x)
    (hW : ContDiffWithinAt 𝕜 n W s x) (hs : UniqueDiffOn 𝕜 s) (hmn : m + 1 ≤ n) (hx : x ∈ s) :
    ContDiffWithinAt 𝕜 m (lieBracketWithin 𝕜 V W s) s x := by
  apply ContDiffWithinAt.sub
  · exact ContDiffWithinAt.clm_apply (hW.fderivWithin_right hs hmn hx)
      (hV.of_le (le_trans le_self_add hmn))
  · exact ContDiffWithinAt.clm_apply (hV.fderivWithin_right hs hmn hx)
      (hW.of_le (le_trans le_self_add hmn))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf658d0bf63e5988a9ebb4f1e53cc6f3706220ffe835874b2c4ab8b25a1eb2c3d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd74e02092928977d6dc53bb370a01959f7c705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
