# Measure.MeasureDense.fin_meas_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:803fb4db-0379-6644-d8a3-b600b4e4dfe9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b52e37a5-2918-8fec-fb8a-a3f7474c604d",
  "kind": "lemma",
  "lexical_name": "Measure.MeasureDense.fin_meas_approx",
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
  "slug": "measure-measuredense-fin-meas-approx--c11bcc65a917486a110dcab7",
  "source": {
    "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c11bcc65a917486a110dcab7f2c5752785c58d1a4abcf0c93f41635d51e49939",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52e37a5-2918-8fec-fb8a-a3f7474c604d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Measure.MeasureDense.fin_meas_approx (h𝒜 : μ.MeasureDense 𝒜) {s : Set X}
    (ms : MeasurableSet s) (hμs : μ s ≠ ∞) (ε : ℝ) (ε_pos : 0 < ε) :
    ∃ t ∈ 𝒜, μ t ≠ ∞ ∧ μ (s ∆ t) < ENNReal.ofReal ε := by
  rcases h𝒜.approx s ms hμs ε ε_pos with ⟨t, t_mem, ht⟩
  exact ⟨t, t_mem, (measure_ne_top_iff_of_symmDiff <| ne_top_of_lt ht).1 hμs, ht⟩

variable (p) in
/-- If `𝒜` is a measure-dense family of sets and `c : E`, then the set of constant indicators
with constant `c` whose underlying set is in `𝒜` is dense in the set of constant indicators
which are in `Lp E p μ` when `1 ≤ p < ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074ad086f166d02a09dce58d5fee60fd0ce3f53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
