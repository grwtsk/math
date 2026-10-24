# tendstoInMeasure_iff_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f84a110b923e3111260b98a5c5cafea1e7c74af0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2538589-ed23-5411-3a26-92c62bfe0931",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c46e3adc-618b-d6d5-65f5-c18e854483b6",
  "kind": "lemma",
  "lexical_name": "tendstoInMeasure_iff_dist",
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
  "slug": "tendstoinmeasure-iff-dist--fd03c9a14ce9a15aa2f409e3",
  "source": {
    "blob": "f84a110b923e3111260b98a5c5cafea1e7c74af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd03c9a14ce9a15aa2f409e30e6ed8cfc2eb9827ec3ff6b29a1f491bb6763bae",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c46e3adc-618b-d6d5-65f5-c18e854483b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendstoInMeasure_iff_dist [PseudoMetricSpace E] {f : ι → α → E} {l : Filter ι} {g : α → E} :
    TendstoInMeasure μ f l g
      ↔ ∀ ε, 0 < ε → Tendsto (fun i => μ { x | ε ≤ dist (f i x) (g x) }) l (𝓝 0) := by
  refine ⟨fun h ε hε ↦ ?_, fun h ↦ ?_⟩
  · convert! h (ENNReal.ofReal ε) (ENNReal.ofReal_pos.mpr hε) with i a
    rw [edist_dist, ENNReal.ofReal_le_ofReal_iff (by positivity)]
  · refine tendstoInMeasure_of_ne_top fun ε hε hε_top ↦ ?_
    convert! h ε.toReal (ENNReal.toReal_pos hε.ne' hε_top) with i a
    rw [edist_dist, ENNReal.le_ofReal_iff_toReal_le hε_top (by positivity)]

/-- `TendstoInMeasure` expressed with the real-valued measure of a set defined with a distance.

The `IsFiniteMeasure` hypothesis is necessary, otherwise `μ.real {...}` could be zero because
the measure of the set is infinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ConvergenceInMeasure/Variant6986be37dd4d18fa47630d11acdff712886f266e16f68ea5416d0915ca71db56.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f84a110b923e3111260b98a5c5cafea1e7c74af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
