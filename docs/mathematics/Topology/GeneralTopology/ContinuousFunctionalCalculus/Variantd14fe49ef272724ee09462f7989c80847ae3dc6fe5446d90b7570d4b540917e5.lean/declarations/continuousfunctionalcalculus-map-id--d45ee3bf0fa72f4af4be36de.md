# continuousFunctionalCalculus_map_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d591cb-ea36-474b-d5ec-dcdda1071c71",
  "kind": "theorem",
  "lexical_name": "continuousFunctionalCalculus_map_id",
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
  "slug": "continuousfunctionalcalculus-map-id--d45ee3bf0fa72f4af4be36de",
  "source": {
    "blob": "cc545264d40716b7a34d7f75c903fec0ec1749c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 289,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d45ee3bf0fa72f4af4be36de243eb6ea7f39bffb5ec3653794d46ceedb8a966c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d591cb-ea36-474b-d5ec-dcdda1071c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousFunctionalCalculus_map_id :
    continuousFunctionalCalculus a ((ContinuousMap.id ℂ).restrict (spectrum ℂ a)) =
      ⟨a, self_mem ℂ a⟩ :=
  (gelfandStarTransform (elementalStarAlgebra ℂ a)).symm_apply_apply _
#align continuous_functional_calculus_map_id continuousFunctionalCalculus_map_id
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousFunctionalCalculus/Variantd14fe49ef272724ee09462f7989c80847ae3dc6fe5446d90b7570d4b540917e5.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc545264d40716b7a34d7f75c903fec0ec1749c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
