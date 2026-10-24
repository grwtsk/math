# eLpNorm_add_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe47e35937f2b6a629c218beff9489aa49b5be7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9e00ac2-f759-1b80-fc0c-d51c073ccf61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc1b06f4-7a7f-f0e3-8d08-3755b27ff5e6",
  "kind": "theorem",
  "lexical_name": "eLpNorm_add_le'",
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
  "slug": "elpnorm-add-le--51c1b10721f7e2de70c9ede1",
  "source": {
    "blob": "4fe47e35937f2b6a629c218beff9489aa49b5be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 71,
    "path": "GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c1b10721f7e2de70c9ede157e87aad5443161aa5b461b70dff3f746c347c2f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc1b06f4-7a7f-f0e3-8d08-3755b27ff5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_add_le' (p : ℝ≥0∞) :
    eLpNorm (f + g) p μ ≤ LpAddConst p * (eLpNorm f p μ + eLpNorm g p μ) := by
  by_cases! hf : ¬ AEStronglyMeasurable f μ
  · simp [eLpNorm_of_not_aestronglyMeasurable hf, mul_top (LpAddConst_ne_zero p)]
  by_cases! hg : ¬ AEStronglyMeasurable g μ
  · simp [eLpNorm_of_not_aestronglyMeasurable hg, mul_top (LpAddConst_ne_zero p)]
  have hfg : AEStronglyMeasurable (f + g) μ := hf.add hg
  rcases eq_or_ne p 0 with (rfl | hp)
  · simp [hf, hg, hfg]
  rcases lt_or_ge p 1 with (h'p | h'p)
  · rw [eLpNorm_eq_eLpNorm' hp (h'p.trans ENNReal.one_lt_top).ne hfg,
      eLpNorm_eq_eLpNorm' hp (h'p.trans ENNReal.one_lt_top).ne hf,
      eLpNorm_eq_eLpNorm' hp (h'p.trans ENNReal.one_lt_top).ne hg]
    convert! eLpNorm'_add_le_of_le_one hf ENNReal.toReal_nonneg _
    · have : p ∈ Set.Ioo (0 : ℝ≥0∞) 1 := ⟨hp.bot_lt, h'p⟩
      simp only [LpAddConst, ite_eq_left this]
    · simpa using ENNReal.toReal_mono ENNReal.one_ne_top h'p.le
  · simpa [LpAddConst_of_one_le h'p] using eLpNorm_add_le h'p

variable (μ ε) in
/-- Technical lemma to control the addition of functions in `L^p` even for `p < 1`: Given `δ > 0`,
there exists `η` such that two functions bounded by `η` in `L^p` have a sum bounded by `δ`. One
could take `η = δ / 2` for `p ≥ 1`, but the point of the lemma is that it works also for `p < 1`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/TriangleInequality/Variant41e6fed6b18669b75045ed9780c3502c8e8059c1f62734c145acf00119fe4149.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe47e35937f2b6a629c218beff9489aa49b5be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
