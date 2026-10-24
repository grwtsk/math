# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93e0e1549e94b73b6a418d613c0f6b544a86d9bb7a29dd8abb6fd9862e4df07e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f0562fcbf0812ec9d9f72231",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 538,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0562fcbf0812ec9d9f7223181f0ab0a484a6567626bb236abaebfa0cb0cddd2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93e0e1549e94b73b6a418d613c0f6b544a86d9bb7a29dd8abb6fd9862e4df07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (whiskeringLeft L P E).Full :=
  (fullyFaithfulWhiskeringLeft L P E).full

/-- Let `L : C ⥤ D` be a localization functor with respect to a Serre class `P`
in the abelian category `C`. If `G : C ⥤ₑ E` is an exact functor to an abelian
category, it "factors" through `D` (i.e. it is in the essential image of
`whiskeringLeft L P E : (D ⥤ₑ E) ⥤ C ⥤ₑ E`) iff `G` inverts the class
of morphisms `P.isoModSerre`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
