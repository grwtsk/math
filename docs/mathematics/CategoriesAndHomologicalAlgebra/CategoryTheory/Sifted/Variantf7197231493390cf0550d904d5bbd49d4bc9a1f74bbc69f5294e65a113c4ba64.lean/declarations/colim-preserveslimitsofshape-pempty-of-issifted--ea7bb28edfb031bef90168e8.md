# colim_preservesLimitsOfShape_pempty_of_isSifted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f42d9c03e6d42d415e5ba2bf0425193eec3c972853ddce999a8ff01a064cec8",
  "kind": "instance",
  "lexical_name": "colim_preservesLimitsOfShape_pempty_of_isSifted",
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
  "slug": "colim-preserveslimitsofshape-pempty-of-issifted--ea7bb28edfb031bef90168e8",
  "source": {
    "blob": "bbf29363440320acf8fe8716f10609fa136dac38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea7bb28edfb031bef90168e8b1cfa24a10e82aab1953397bdd487a9ed916db20",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f42d9c03e6d42d415e5ba2bf0425193eec3c972853ddce999a8ff01a064cec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance colim_preservesLimitsOfShape_pempty_of_isSifted :
    PreservesLimitsOfShape (Discrete PEmpty.{1}) (colim : (C ⥤ _) ⥤ Type u) :=
  preservesLimitsOfShape_pempty_of_preservesTerminal _

/-- If `C` is sifted, the `colim` functor `(C ⥤ Type) ⥤ Type` preserves finite products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sifted/Variantf7197231493390cf0550d904d5bbd49d4bc9a1f74bbc69f5294e65a113c4ba64.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf29363440320acf8fe8716f10609fa136dac38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
