# GluingLawStrictness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f6d2b7c9539f27070612c337143dcddf71415f0cc330900e38703dae2699a49",
  "kind": "inductive",
  "lexical_name": "GluingLawStrictness",
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
  "slug": "gluinglawstrictness--36f4525b6a3cd796ee26f9a3",
  "source": {
    "blob": "d4a75eacee9cdb7f88e8c066c1e13864d1203bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36f4525b6a3cd796ee26f9a342c9e1d542e77a28d6c8753ea09c8eef7d6abb91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f6d2b7c9539f27070612c337143dcddf71415f0cc330900e38703dae2699a49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GluingLawStrictness
  | definitional
  | propositional
  deriving DecidableEq

/--
A bundled groupoid of relative-boundary diffeomorphisms for a surgery theory.

The old proposition in `SmoothFramedSurgeryTheory` remains the public semantic
boundary.  `sound` forgets a bundled map to that proposition; there is no
operation in the opposite direction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CollaredGluing/Variantc1aedf3ff7f8b61d645280d8d84a33b983ee8d906427af3294381bab828d1d16.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4a75eacee9cdb7f88e8c066c1e13864d1203bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
