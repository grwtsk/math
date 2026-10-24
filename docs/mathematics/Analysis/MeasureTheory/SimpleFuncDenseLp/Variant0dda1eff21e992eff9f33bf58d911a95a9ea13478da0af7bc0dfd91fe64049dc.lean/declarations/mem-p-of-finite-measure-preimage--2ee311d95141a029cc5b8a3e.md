# memℒp_of_finite_measure_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d813a837ff071d345a28499eb65379e4343c2a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dfc15af-d115-6252-6bbe-0d831509378e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76350e91-b589-428d-e5f1-eb1c5f01cb18",
  "kind": "theorem",
  "lexical_name": "memℒp_of_finite_measure_preimage",
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
  "slug": "mem-p-of-finite-measure-preimage--2ee311d95141a029cc5b8a3e",
  "source": {
    "blob": "d813a837ff071d345a28499eb65379e4343c2a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 336,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ee311d95141a029cc5b8a3e272792d7b80cad5dcb10f5b19fad2afc1aa3e788",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76350e91-b589-428d-e5f1-eb1c5f01cb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem memℒp_of_finite_measure_preimage (p : ℝ≥0∞) {f : α →ₛ E}
    (hf : ∀ y, y ≠ 0 → μ (f ⁻¹' {y}) < ∞) : Memℒp f p μ := by
  by_cases hp0 : p = 0
  · rw [hp0, memℒp_zero_iff_aestronglyMeasurable]; exact f.aestronglyMeasurable
  by_cases hp_top : p = ∞
  · rw [hp_top]; exact memℒp_top f μ
  refine' ⟨f.aestronglyMeasurable, _⟩
  rw [snorm_eq_snorm' hp0 hp_top, f.snorm'_eq]
  refine' ENNReal.rpow_lt_top_of_nonneg (by simp) (ENNReal.sum_lt_top_iff.mpr fun y _ => _).ne
  by_cases hy0 : y = 0
  · simp [hy0, ENNReal.toReal_pos hp0 hp_top]
  · refine' ENNReal.mul_lt_top _ (hf y hy0).ne
    exact (ENNReal.rpow_lt_top_of_nonneg ENNReal.toReal_nonneg ENNReal.coe_ne_top).ne
#align measure_theory.simple_func.mem_ℒp_of_finite_measure_preimage MeasureTheory.SimpleFunc.memℒp_of_finite_measure_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d813a837ff071d345a28499eb65379e4343c2a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
