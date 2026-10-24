# log_data

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4baa4488-54e5-b199-eebd-e20186515fe0",
  "kind": "theorem",
  "lexical_name": "log_data",
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
  "slug": "log-data--e7aa4fee0f6fa649f2716972",
  "source": {
    "blob": "ab94a2ffa390b61714eebda5906ea5eee05abc24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7aa4fee0f6fa649f2716972679fe0390d7a79216dbd73932f3de728b453bd8b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4baa4488-54e5-b199-eebd-e20186515fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_data :
    RationalPowerEvaluation.logCenter 4097 (schedule 4097) =
      4383672783730732305447192769140921403529443554442810429799566452797726497292029570496019333705685598614311830184029513964646225801406364201514987572909443 / 527009782082591418762104659230930987077271127954809357703371133091031196350394693598002439265940243553535221903708531668697390141220961199032548037017600 ∧
    RationalPowerEvaluation.logError 4097 (schedule 4097) =
      188034122275163861250175076258600688544422448804699361988759040202067479573115663802302202080936320478546115259222233514826473473 / 6271758445840457411836857484311065489496920428185727504466416316000420313936545597131126347033255394416191675467419358499186027039383513047515136 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ,
    lower, width, ratio, Finset.sum_range_succ]

/-- Exact source binding. No seed equality or endpoint acceptance is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab94a2ffa390b61714eebda5906ea5eee05abc24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
