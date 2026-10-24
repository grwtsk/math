# withDensity_rnDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38ec8d5b-3808-6f48-1215-5042e59e8ef4",
  "kind": "theorem",
  "lexical_name": "withDensity_rnDeriv",
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
  "slug": "withdensity-rnderiv--35de13745c4c14345910143b",
  "source": {
    "blob": "eb257c56a14d8ec61840c08b36d504bc846f8158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant663ede7ad219360ddb90c1cb564f8039255c139df1b1ab2bdc0bf9e0c6bbf77a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35de13745c4c14345910143b56ba8dfc33d08f1ae60d9f0e9c59f9cc72540143",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variant663ede7ad219360ddb90c1cb564f8039255c139df1b1ab2bdc0bf9e0c6bbf77a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38ec8d5b-3808-6f48-1215-5042e59e8ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem withDensity_rnDeriv [SigmaFinite ν] {f : X → X}
    (hfμ : MeasurePreserving f μ μ) (hfν : MeasurePreserving f ν ν) :
    MeasurePreserving f (ν.withDensity (μ.rnDeriv ν)) (ν.withDensity (μ.rnDeriv ν)) := by
  use hfμ.measurable
  ext s hs
  rw [← ENNReal.add_left_inj (measure_ne_top (μ.singularPart ν) s), map_apply hfμ.measurable hs,
    ← add_apply, rnDeriv_add_singularPart,
    ← (hfμ.singularPart hfν).measure_preimage hs.nullMeasurableSet, ← add_apply,
    rnDeriv_add_singularPart, hfμ.measure_preimage hs.nullMeasurableSet]

/-- The Radon-Nikodym derivative of a finite invariant measure of a self-map `f`
with respect to another finite invariant measure of `f` is a.e. invariant under `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variant663ede7ad219360ddb90c1cb564f8039255c139df1b1ab2bdc0bf9e0c6bbf77a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant663ede7ad219360ddb90c1cb564f8039255c139df1b1ab2bdc0bf9e0c6bbf77a.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb257c56a14d8ec61840c08b36d504bc846f8158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
