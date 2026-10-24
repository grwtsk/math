# fiberBinaryProductEquiv_symm_snd_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4915e04fc27a15aac0c54dda972457b86a71d6ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/109f64c591dd9215fd5f20652e672443c5c390bfff141076284f0a54b7012f18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86d08bf6-2ee3-db18-15d6-8ae211141beb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32ff6f74-d4e2-4b19-90df-ba8b7b9d3e27",
  "kind": "lemma",
  "lexical_name": "fiberBinaryProductEquiv_symm_snd_apply",
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
  "slug": "fiberbinaryproductequiv-symm-snd-apply--875f44c659b5bb2c4374aab8",
  "source": {
    "blob": "4915e04fc27a15aac0c54dda972457b86a71d6ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant109f64c591dd9215fd5f20652e672443c5c390bfff141076284f0a54b7012f18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:875f44c659b5bb2c4374aab854bd1554fef0ed2ee4565985be7ebd9185d2952a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant109f64c591dd9215fd5f20652e672443c5c390bfff141076284f0a54b7012f18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ff6f74-d4e2-4b19-90df-ba8b7b9d3e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fiberBinaryProductEquiv_symm_snd_apply {X Y : C} (x : F.obj X) (y : F.obj Y) :
    F.map prod.snd ((fiberBinaryProductEquiv F X Y).symm (x, y)) = y := by
  simp only [fiberBinaryProductEquiv]
  change ((Types.binaryProductIso _ _).inv ≫ _ ≫ (F ⋙ FintypeCat.incl).map prod.snd) _ = _
  erw [PreservesLimitPair.iso_inv_snd, Types.binaryProductIso_inv_comp_snd]
  rfl

/-- The evaluation map is injective for connected objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant109f64c591dd9215fd5f20652e672443c5c390bfff141076284f0a54b7012f18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant109f64c591dd9215fd5f20652e672443c5c390bfff141076284f0a54b7012f18.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4915e04fc27a15aac0c54dda972457b86a71d6ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
