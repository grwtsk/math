# preservesMonomorphisms_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db687df478de2427aaafd280436af50884289e1c30500c9d05ff061431567bbf",
  "kind": "instance",
  "lexical_name": "preservesMonomorphisms_comp",
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
  "slug": "preservesmonomorphisms-comp--2aac0939a8865105c7826918",
  "source": {
    "blob": "08fe0ee184ae447cc41e422bedf534defb230d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2aac0939a8865105c7826918d9ada6b9a6395c5d6829f1253bc5b8bb55c41d19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db687df478de2427aaafd280436af50884289e1c30500c9d05ff061431567bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesMonomorphisms_comp (F : C ⥤ D) (G : D ⥤ E) [PreservesMonomorphisms F]
    [PreservesMonomorphisms G] : PreservesMonomorphisms (F ⋙ G) where
  preserves f h := by
    rw [comp_map]
    exact inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant785188df825ba98665a2261d7164f20bfc844e5752ca94c876264700c6d5f786.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08fe0ee184ae447cc41e422bedf534defb230d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
