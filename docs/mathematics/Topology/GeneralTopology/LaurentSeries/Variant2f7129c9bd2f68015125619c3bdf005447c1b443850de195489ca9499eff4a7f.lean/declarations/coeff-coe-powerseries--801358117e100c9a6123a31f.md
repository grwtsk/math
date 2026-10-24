# coeff_coe_powerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06ec468f-5435-cd58-2a72-b000a6b42c50",
  "kind": "theorem",
  "lexical_name": "coeff_coe_powerSeries",
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
  "slug": "coeff-coe-powerseries--801358117e100c9a6123a31f",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:801358117e100c9a6123a31f34b779a49bc058ed871cbd72e4b91c3517363813",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06ec468f-5435-cd58-2a72-b000a6b42c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_coe_powerSeries (x : R⟦X⟧) (n : ℕ) :
    HahnSeries.coeff (x : R⸨X⸩) n = PowerSeries.coeff n x := by
  rw [ofPowerSeries_apply_coeff]

/-- This is a power series that can be multiplied by an integer power of `X` to give our
  Laurent series. If the Laurent series is nonzero, `powerSeriesPart` has a nonzero
  constant term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
