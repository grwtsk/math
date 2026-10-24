# map_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:054f5781ed51e918415e7eb9a48addb1cf4bfaa98175f37a4eb488470542aec9",
  "kind": "instance",
  "lexical_name": "map_mono",
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
  "slug": "map-mono--846113eaa6a73b8b4a0efef6",
  "source": {
    "blob": "55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 35,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:846113eaa6a73b8b4a0efef6086a2ef2e0b96c1af0ec4892479400a2c31dc765",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:054f5781ed51e918415e7eb9a48addb1cf4bfaa98175f37a4eb488470542aec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance map_mono (F : C ⥤ D) [PreservesMonomorphisms F] {X Y : C} (f : X ⟶ Y) [Mono f] :
    Mono (F.map f) :=
  PreservesMonomorphisms.preserves f
#align category_theory.functor.map_mono CategoryTheory.Functor.map_mono

/-- A functor preserves epimorphisms if it maps epimorphisms to epimorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantfa3e1b162ce84882ed52b2a8a77e3d4d77d1386f41e0b91a703198241d590787.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55cc0ac4e900f33473a80f1ff4bf3fd904a41ce1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
