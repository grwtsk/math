# Adapted.isStoppingTime_lowerCrossingTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:856a28ae-ae15-c0ad-0592-8e59d96f5e4b",
  "kind": "theorem",
  "lexical_name": "Adapted.isStoppingTime_lowerCrossingTime",
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
  "slug": "adapted-isstoppingtime-lowercrossingtime--3c6d0fff24cf8d1a7d45b637",
  "source": {
    "blob": "c741b9622b69b07d8b5d36b3fcbbbe7576e4786a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 368,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6d0fff24cf8d1a7d45b637dd7665b95b43ea09dfc818c8eaa1865e3139cee9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:856a28ae-ae15-c0ad-0592-8e59d96f5e4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Adapted.isStoppingTime_lowerCrossingTime (hf : Adapted ℱ f) :
    IsStoppingTime ℱ (lowerCrossingTime a b f N n) :=
  hf.isStoppingTime_crossing.2
#align measure_theory.adapted.is_stopping_time_lower_crossing_time MeasureTheory.Adapted.isStoppingTime_lowerCrossingTime

/-- `upcrossingStrat a b f N n` is 1 if `n` is between a consecutive pair of lower and upper
crossings and is 0 otherwise. `upcrossingStrat` is shifted by one index so that it is adapted
rather than predictable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variante55ac50e48b53ccf50b38ad6e2750ddc66b29b3c1c6a1ee87437b8ba37271540.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c741b9622b69b07d8b5d36b3fcbbbe7576e4786a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
