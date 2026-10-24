# partOrd_dual_comp_forget_to_preord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfd8c20088d27b8e9bbdaf30a7df279a43b1a839",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a5a7b6c-7457-5a95-de7c-3d22a99d14f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a6f5ea5-adde-e922-b653-d444d05a22a9",
  "kind": "theorem",
  "lexical_name": "partOrd_dual_comp_forget_to_preord",
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
  "slug": "partord-dual-comp-forget-to-preord--8e14d06b3ad5437bb1e73e8e",
  "source": {
    "blob": "cfd8c20088d27b8e9bbdaf30a7df279a43b1a839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e14d06b3ad5437bb1e73e8ee9238f5b5157c73f8a0c15584033ccaa7da10378",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a6f5ea5-adde-e922-b653-d444d05a22a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partOrd_dual_comp_forget_to_preord :
    PartOrd.dual ⋙ forget₂ PartOrd Preord =
      forget₂ PartOrd Preord ⋙ Preord.dual :=
  rfl

/-- `Antisymmetrization` as a functor. It is the free functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PartOrd/Variant10d9dc435d751b8e9ce36ab3076c6105c227fdc860d9d277212c8af468f79075.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfd8c20088d27b8e9bbdaf30a7df279a43b1a839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
