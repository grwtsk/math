# Continuous.surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f0a4f69-717c-63aa-4e70-7d1faf12871c",
  "kind": "theorem",
  "lexical_name": "Continuous.surjective",
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
  "slug": "continuous-surjective--101deb4bc37138c6351b0654",
  "source": {
    "blob": "c5bf572783901ffd21b3561e225ac461290c80b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 727,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101deb4bc37138c6351b0654568d626daae2c6117086ae73e6a9bd4e5eea50f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f0a4f69-717c-63aa-4e70-7d1faf12871c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.surjective {f : α → δ} (hf : Continuous f) (h_top : Tendsto f atTop atTop)
    (h_bot : Tendsto f atBot atBot) : Function.Surjective f := fun p =>
  mem_range_of_exists_le_of_exists_ge hf (h_bot.eventually (eventually_le_atBot p)).exists
    (h_top.eventually (eventually_ge_atTop p)).exists

/-- A continuous function which tends to `Filter.atBot` along `Filter.atTop` and to `Filter.atTop`
along `Filter.atBot` is surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bf572783901ffd21b3561e225ac461290c80b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
