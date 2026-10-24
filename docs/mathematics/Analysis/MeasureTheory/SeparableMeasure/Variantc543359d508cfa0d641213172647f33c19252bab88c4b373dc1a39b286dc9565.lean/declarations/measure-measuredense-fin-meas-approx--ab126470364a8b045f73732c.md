# Measure.MeasureDense.fin_meas_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a81d092-e3be-1b7f-bba8-78f4988d16bc",
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
  "slug": "measure-measuredense-fin-meas-approx--ab126470364a8b045f73732c",
  "source": {
    "blob": "42ca924c56a5c59f51f2a912d0d0a7943257fe4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab126470364a8b045f73732cd005eac6b33ec1c2b503b750e1227ab6f7e84d4c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a81d092-e3be-1b7f-bba8-78f4988d16bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42ca924c56a5c59f51f2a912d0d0a7943257fe4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
