# Groupoid.isIsomorphic_iff_nonempty_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d14b1824f039df5c080c2e5d0de2128156ed3873",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1b926ea-7fc8-cd3e-5894-f8f21fc85e32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f28731f-3452-e40e-2bd5-3754a556c47f",
  "kind": "theorem",
  "lexical_name": "Groupoid.isIsomorphic_iff_nonempty_hom",
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
  "slug": "groupoid-isisomorphic-iff-nonempty-hom--20c0dbad9ea9ff0d8cc94cf9",
  "source": {
    "blob": "d14b1824f039df5c080c2e5d0de2128156ed3873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c0dbad9ea9ff0d8cc94cf97c6c071a0148685cca861b3033471e0a2a08c027",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f28731f-3452-e40e-2bd5-3754a556c47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Groupoid.isIsomorphic_iff_nonempty_hom {C : Type u} [Groupoid.{v} C] {X Y : C} :
    IsIsomorphic X Y ↔ Nonempty (X ⟶ Y) :=
  (Groupoid.isoEquivHom X Y).nonempty_congr

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14b1824f039df5c080c2e5d0de2128156ed3873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
