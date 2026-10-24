# cartesianClosedFunctorOfLeftAdjointPreservesBinaryProducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df64a328-5052-1ac6-7795-f0b0cbf8224e",
  "kind": "theorem",
  "lexical_name": "cartesianClosedFunctorOfLeftAdjointPreservesBinaryProducts",
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
  "slug": "cartesianclosedfunctorofleftadjointpreservesbinaryproducts--4105504894edfb4fe50ce74d",
  "source": {
    "blob": "bd093e0facca904ede9f66efc4cae4b688a9b651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante26dd870f5db60cfb5f41842e2d9a23a28f3fbf2826d3f7468cb85bb8ad0e8eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4105504894edfb4fe50ce74d43897ea77b70e2ccbd7ecfb672b6e29402daaa0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante26dd870f5db60cfb5f41842e2d9a23a28f3fbf2826d3f7468cb85bb8ad0e8eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df64a328-5052-1ac6-7795-f0b0cbf8224e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cartesianClosedFunctorOfLeftAdjointPreservesBinaryProducts (h : L ⊣ F) [F.Full] [F.Faithful]
    [PreservesLimitsOfShape (Discrete WalkingPair) L] : MonoidalClosedFunctor F where
  comparison_iso _ := expComparison_iso_of_frobeniusMorphism_iso F h _

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante26dd870f5db60cfb5f41842e2d9a23a28f3fbf2826d3f7468cb85bb8ad0e8eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante26dd870f5db60cfb5f41842e2d9a23a28f3fbf2826d3f7468cb85bb8ad0e8eb.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd093e0facca904ede9f66efc4cae4b688a9b651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
