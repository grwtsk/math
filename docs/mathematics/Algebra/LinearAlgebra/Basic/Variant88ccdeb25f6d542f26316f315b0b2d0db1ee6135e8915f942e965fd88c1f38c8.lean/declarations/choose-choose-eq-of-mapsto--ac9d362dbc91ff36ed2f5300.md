# choose_choose_eq_of_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9c58d09-0ce3-23b7-77c5-995a3c960fc8",
  "kind": "theorem",
  "lexical_name": "choose_choose_eq_of_mapsTo",
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
  "slug": "choose-choose-eq-of-mapsto--ac9d362dbc91ff36ed2f5300",
  "source": {
    "blob": "71fe93c2c46c264676e7ab0abff838e78d6265f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9d362dbc91ff36ed2f530085fa224e4c6d2b9f4b767e060318bcf1ca54870d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9c58d09-0ce3-23b7-77c5-995a3c960fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem choose_choose_eq_of_mapsTo :
    (exist_eq_reflection_of_mapsTo p root coroot i
      (exist_eq_reflection_of_mapsTo p root coroot i j h).choose h).choose = j := by
  refine root.injective ?_
  rw [(exist_eq_reflection_of_mapsTo p root coroot i _ h).choose_spec,
    (exist_eq_reflection_of_mapsTo p root coroot i j h).choose_spec]
  apply involutive_preReflection (x := root i) (hp i)

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The bijection on the indexing set induced by reflection. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant88ccdeb25f6d542f26316f315b0b2d0db1ee6135e8915f942e965fd88c1f38c8.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71fe93c2c46c264676e7ab0abff838e78d6265f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
