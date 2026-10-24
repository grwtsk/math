# inl_pushoutAssoc_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795528a7feb85926c213ad5b952defaaf3118ee2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecfdb369-efb5-ddc1-c92d-2f59e645ffac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:902c46cd-6193-a681-00cf-5954b6c7df51",
  "kind": "theorem",
  "lexical_name": "inl_pushoutAssoc_inv",
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
  "slug": "inl-pushoutassoc-inv--a2ea76361f794c3ef3482c31",
  "source": {
    "blob": "795528a7feb85926c213ad5b952defaaf3118ee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ea76361f794c3ef3482c31a96e93bc118dcb0c4baf76f03e5a0284c3ce63d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902c46cd-6193-a681-00cf-5954b6c7df51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inl_pushoutAssoc_inv [HasPushout (g₃ ≫ (pushout.inr _ _ : X₂ ⟶ Y₁)) g₄]
    [HasPushout g₁ (g₂ ≫ (pushout.inl _ _ : X₂ ⟶ Y₂))] :
    pushout.inl _ _ ≫ (pushoutAssoc g₁ g₂ g₃ g₄).inv = pushout.inl _ _ ≫ pushout.inl _ _ := by
  rw [Iso.comp_inv_eq, Category.assoc, inl_inl_pushoutAssoc_hom]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795528a7feb85926c213ad5b952defaaf3118ee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
