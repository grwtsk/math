# prodEquiv_symm_apply_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e045d1973f7a4d88f608614790e166b7b48b7f20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27941b11-4658-9c82-4311-68a62b88b829",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c2dfc00-1465-c1cb-d89e-6bd80f185ca2",
  "kind": "lemma",
  "lexical_name": "prodEquiv_symm_apply_fst",
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
  "slug": "prodequiv-symm-apply-fst--00465388936569c491994f19",
  "source": {
    "blob": "e045d1973f7a4d88f608614790e166b7b48b7f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00465388936569c491994f1920069f24e4df916e7192a7b063500760c150dda5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c2dfc00-1465-c1cb-d89e-6bd80f185ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodEquiv_symm_apply_fst (x : ToType X₁ × ToType X₂) :
    (Limits.prod.fst : X₁ ⨯ X₂ ⟶ X₁) ((prodEquiv X₁ X₂).symm x) = x.1 := by
  obtain ⟨y, rfl⟩ := (prodEquiv X₁ X₂).surjective x
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant0cb1d84f56a02589ab05c950059af0008bd561f50dbe562f91a497a9e5221546.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e045d1973f7a4d88f608614790e166b7b48b7f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
