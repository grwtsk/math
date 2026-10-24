# widePullbackShape_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cafff04392ec140711e170511d04febd90251ba99d126232a6c847a6a3b55ee4",
  "kind": "instance",
  "lexical_name": "widePullbackShape_connected",
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
  "slug": "widepullbackshape-connected--e0be4362b88b6ca44aa87f5f",
  "source": {
    "blob": "fdc089e15ed3faba050d3185e0f9dfd67bf28a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0be4362b88b6ca44aa87f5fdf61d0b3645d0b11d2a3fa6db36f3cd10a524720",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cafff04392ec140711e170511d04febd90251ba99d126232a6c847a6a3b55ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance widePullbackShape_connected (J : Type v₁) : IsConnected (WidePullbackShape J) := by
  apply IsConnected.of_induct
  introv hp t
  cases j
  · exact hp
  · rwa [t (WidePullbackShape.Hom.term _)]
#align category_theory.wide_pullback_shape_connected CategoryTheory.widePullbackShape_connected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6b1aba00e0dcffe144bd6cc7380b5aa37bbfe33e022c34ada1cb58cad5815c6.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc089e15ed3faba050d3185e0f9dfd67bf28a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
