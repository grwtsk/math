# Filter.Tendsto.pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e64685c9-fc48-7db0-2489-fc8dbb03f620",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.pow",
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
  "slug": "filter-tendsto-pow--52ba62b71f4c0c50f9adf048",
  "source": {
    "blob": "1ba89818532648a48f4c2d8a5727a4fd00757111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 720,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ba62b71f4c0c50f9adf048ecee819e2e057e4c692c3dbc1c7eb60b135fdc78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64685c9-fc48-7db0-2489-fc8dbb03f620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.pow {l : Filter α} {f : α → M} {x : M} (hf : Tendsto f l (𝓝 x)) (n : ℕ) :
    Tendsto (fun x => f x ^ n) l (𝓝 (x ^ n)) :=
  (continuousAt_pow _ _).tendsto.comp hf

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba89818532648a48f4c2d8a5727a4fd00757111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
