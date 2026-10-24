# integrable_indicatorConstLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0e52f95-0af1-02b7-df6d-8c6bbe29dab7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d40e000-d5e9-7bc5-89e5-cfba1cc8a324",
  "kind": "theorem",
  "lexical_name": "integrable_indicatorConstLp",
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
  "slug": "integrable-indicatorconstlp--09fb26949a27d9dc1222612d",
  "source": {
    "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 278,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fb26949a27d9dc1222612d99c2b979857db9bc28035e3e8947da174c5de6e3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d40e000-d5e9-7bc5-89e5-cfba1cc8a324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_indicatorConstLp {E} [NormedAddCommGroup E] {p : ℝ≥0∞} {s : Set α}
    (hs : MeasurableSet s) (hμs : μ s ≠ ∞) (c : E) :
    Integrable (indicatorConstLp p hs hμs c) μ := by
  rw [integrable_congr indicatorConstLp_coeFn, integrable_indicator_iff hs, IntegrableOn,
    integrable_const_iff, lt_top_iff_ne_top]
  right
  simpa only [Set.univ_inter, MeasurableSet.univ, Measure.restrict_apply] using hμs
set_option linter.uppercaseLean3 false in
#align measure_theory.integrable_indicator_const_Lp MeasureTheory.integrable_indicatorConstLp

/-- If a function is integrable on a set `s` and nonzero there, then the measurable hull of `s` is
well behaved: the restriction of the measure to `toMeasurable μ s` coincides with its restriction
to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62fd395cdd29539d7e4f65d0fc48cf06416fcf5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
