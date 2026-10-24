# hasLimit_of_domain_hasInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c38ddb02f3894c28954af56007574b908be30e9ba3dee3e089fa9045e4ee5084",
  "kind": "instance",
  "lexical_name": "hasLimit_of_domain_hasInitial",
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
  "slug": "haslimit-of-domain-hasinitial--b2631892c015abd53b6d0c69",
  "source": {
    "blob": "8630c3d3cb60e899c2d605e90f75917cf8c6041a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2631892c015abd53b6d0c69136cb5b7ef41fdb261ad7da169a5ddd43b8c456e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c38ddb02f3894c28954af56007574b908be30e9ba3dee3e089fa9045e4ee5084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasLimit_of_domain_hasInitial [HasInitial J] {F : J ⥤ C} : HasLimit F :=
  HasLimit.mk { cone := _, isLimit := limitOfDiagramInitial (initialIsInitial) F }

-- This is reducible to allow usage of lemmas about `conePointUniqueUpToIso`.
/-- For a functor `F : J ⥤ C`, if `J` has an initial object then the image of it is isomorphic
to the limit of `F`. -/
@[to_dual
/-- For a functor `F : J ⥤ C`, if `J` has a terminal object then the image of it is isomorphic
to the colimit of `F`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variant6b22a30dc98fafc4c2c6d0e2863c3818127152946b250675589112a3c0196b5b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8630c3d3cb60e899c2d605e90f75917cf8c6041a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
