# denseRange_toMvPowerSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a85390ae-88e1-a0e5-de51-fc869af6381a",
  "kind": "theorem",
  "lexical_name": "denseRange_toMvPowerSeries",
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
  "slug": "denserange-tomvpowerseries--2658cc71283317254533484f",
  "source": {
    "blob": "e10665a9dabadce1ab7a666247539b1e7d36c827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variant33a72253326f3e186acdb476a6fbe39dc98e858f362ad9137a2f57cf83e37dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2658cc71283317254533484f0a3788216b28ac30f5c99ba21ff6874dd56ac52d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiTopology/Variant33a72253326f3e186acdb476a6fbe39dc98e858f362ad9137a2f57cf83e37dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a85390ae-88e1-a0e5-de51-fc869af6381a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_toMvPowerSeries [CommSemiring R] :
    DenseRange (MvPolynomial.toMvPowerSeries (R := R) (σ := σ)) := fun f ↦ by
  classical
  exact mem_closure_of_tendsto (tendsto_trunc'_atTop f) <| .of_forall fun _ ↦ Set.mem_range_self _

variable (σ R)

/-- The semiring topology on `MvPowerSeries` of a topological semiring -/
@[scoped instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variant33a72253326f3e186acdb476a6fbe39dc98e858f362ad9137a2f57cf83e37dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variant33a72253326f3e186acdb476a6fbe39dc98e858f362ad9137a2f57cf83e37dd0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e10665a9dabadce1ab7a666247539b1e7d36c827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
