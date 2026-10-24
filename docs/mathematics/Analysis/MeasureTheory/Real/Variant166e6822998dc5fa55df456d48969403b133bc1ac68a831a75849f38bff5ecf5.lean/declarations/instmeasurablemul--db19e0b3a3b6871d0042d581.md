# instMeasurableMul₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52a9aa807b9e62b0ae2789726eef3e6169f14116f88bee145fbece02e79d3001",
  "kind": "instance",
  "lexical_name": "instMeasurableMul₂",
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
  "slug": "instmeasurablemul--db19e0b3a3b6871d0042d581",
  "source": {
    "blob": "90ba282077f845be50f10e9ed8a57bc301985361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db19e0b3a3b6871d0042d58188dd61f6e50fbf0cba2d4aa081c83aef252506da",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52a9aa807b9e62b0ae2789726eef3e6169f14116f88bee145fbece02e79d3001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMeasurableMul₂ : MeasurableMul₂ ℝ≥0∞ := by
  refine ⟨measurable_of_measurable_nnreal_nnreal ?_ ?_ ?_⟩
  · simp only [← ENNReal.coe_mul, measurable_mul.coe_nnreal_ennreal]
  · simp only [ENNReal.top_mul', ENNReal.coe_eq_zero]
    exact measurable_const.piecewise (measurableSet_singleton _) measurable_const
  · simp only [ENNReal.mul_top', ENNReal.coe_eq_zero]
    exact measurable_const.piecewise (measurableSet_singleton _) measurable_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ba282077f845be50f10e9ed8a57bc301985361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
