# ENNReal.hasMeasurablePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f84ca45050ae52264ad1b5340dfcabeb6e5cefeef388cb28e43eca755b46068",
  "kind": "instance",
  "lexical_name": "ENNReal.hasMeasurablePow",
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
  "slug": "ennreal-hasmeasurablepow--07ec492a7902d85bdb2776c0",
  "source": {
    "blob": "8b967764edb4643c0031eba20633f71a3a5358f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 306,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07ec492a7902d85bdb2776c0e38ba0817f5310347f73bafd337e59de3483e40f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f84ca45050ae52264ad1b5340dfcabeb6e5cefeef388cb28e43eca755b46068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ENNReal.hasMeasurablePow : MeasurablePow ℝ≥0∞ ℝ := by
  refine ⟨ENNReal.measurable_of_measurable_nnreal_prod ?_ ?_⟩
  · simp_rw [ENNReal.coe_rpow_def]
    refine Measurable.ite ?_ measurable_const (measurable_fst.pow measurable_snd).coe_nnreal_ennreal
    exact
      MeasurableSet.inter (measurable_fst (measurableSet_singleton 0))
        (measurable_snd measurableSet_Iio)
  · simp_rw [ENNReal.top_rpow_def]
    refine Measurable.ite measurableSet_Ioi measurable_const ?_
    exact Measurable.ite (measurableSet_singleton 0) measurable_const measurable_const

end PowInstances
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b967764edb4643c0031eba20633f71a3a5358f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
