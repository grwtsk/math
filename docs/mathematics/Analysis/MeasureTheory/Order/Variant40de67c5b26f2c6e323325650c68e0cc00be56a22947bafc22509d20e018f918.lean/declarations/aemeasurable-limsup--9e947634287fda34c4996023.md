# AEMeasurable.limsup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72aa98f3-0bae-114a-88db-1025e8590346",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.limsup",
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
  "slug": "aemeasurable-limsup--9e947634287fda34c4996023",
  "source": {
    "blob": "564a2158f1d13b2b598a3dd79fc37c180fa8130c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1103,
    "line": 1088,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e947634287fda34c499602323d1104217c90db7e0fbd8c4f269fde5c52cd442",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72aa98f3-0bae-114a-88db-1025e8590346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1088–1103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem AEMeasurable.limsup {f : ℕ → δ → α} {μ : Measure δ}
    (hf : ∀ i, AEMeasurable (f i) μ) :
    AEMeasurable (fun x ↦ limsup (fun i ↦ f i x) atTop) μ := by
  refine ⟨fun x => limsup (fun i => (hf i).mk _ x) atTop, ?_, ?_⟩
  · exact Measurable.limsup (fun i ↦ (hf i).measurable_mk)
  · filter_upwards [ae_all_iff.2 (fun i ↦ (hf i).ae_eq_mk)] with x hx using by simp [hx]

end ConditionallyCompleteLinearOrder

end BorelSpace

section ENNReal

/-- One can cut out `ℝ≥0∞` into the sets `{0}`, `Ico (t^n) (t^(n+1))` for `n : ℤ` and `{∞}`. This
gives a way to compute the measure of a set in terms of sets on which a given function `f` does not
fluctuate by more than `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant40de67c5b26f2c6e323325650c68e0cc00be56a22947bafc22509d20e018f918.lean#L1088).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `564a2158f1d13b2b598a3dd79fc37c180fa8130c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
