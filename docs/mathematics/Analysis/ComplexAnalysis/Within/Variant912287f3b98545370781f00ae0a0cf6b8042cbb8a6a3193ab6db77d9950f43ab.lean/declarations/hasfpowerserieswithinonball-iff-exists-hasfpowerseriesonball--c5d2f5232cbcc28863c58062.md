# hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51846a76-b596-9ba1-0a44-2c389b999ae0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbdcca08-06ba-23a5-f05d-b71409356ff5",
  "kind": "lemma",
  "lexical_name": "hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall",
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
  "slug": "hasfpowerserieswithinonball-iff-exists-hasfpowerseriesonball--c5d2f5232cbcc28863c58062",
  "source": {
    "blob": "2eb0051745641c17b3e86f2298d5a5fd7eff0ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 111,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d2f5232cbcc28863c580627794d04a27aebde2062e857bf4b25e557805960b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbdcca08-06ba-23a5-f05d-b71409356ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall [CompleteSpace F] {f : E → F}
    {p : FormalMultilinearSeries 𝕜 E F} {s : Set E} {x : E} {r : ℝ≥0∞} :
    HasFPowerSeriesWithinOnBall f p s x r ↔
      ∃ g, EqOn f g (insert x s ∩ EMetric.ball x r) ∧
        HasFPowerSeriesOnBall g p x r := by
  constructor
  · intro h
    refine ⟨fun y ↦ p.sum (y - x), ?_, ?_⟩
    · intro y ⟨ys,yb⟩
      simp only [EMetric.mem_ball, edist_eq_enorm_sub] at yb
      have e0 := p.hasSum (x := y - x) ?_
      have e1 := (h.hasSum (y := y - x) ?_ ?_)
      · simp only [add_sub_cancel] at e1
        exact e1.unique e0
      · simpa only [add_sub_cancel]
      · simpa only [EMetric.mem_ball, edist_zero_eq_enorm]
      · simp only [EMetric.mem_ball, edist_zero_eq_enorm]
        exact lt_of_lt_of_le yb h.r_le
    · refine ⟨h.r_le, h.r_pos, ?_⟩
      intro y lt
      simp only [add_sub_cancel_left]
      apply p.hasSum
      simp only [EMetric.mem_ball] at lt ⊢
      exact lt_of_lt_of_le lt h.r_le
  · intro ⟨g, hfg, hg⟩
    refine ⟨hg.r_le, hg.r_pos, ?_⟩
    intro y ys lt
    rw [hfg]
    · exact hg.hasSum lt
    · refine ⟨ys, ?_⟩
      simpa only [EMetric.mem_ball, edist_eq_enorm_sub, add_sub_cancel_left, sub_zero] using lt

/-- `f` has power series `p` at `x` iff some local extension of `f` has that series -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Variant912287f3b98545370781f00ae0a0cf6b8042cbb8a6a3193ab6db77d9950f43ab.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb0051745641c17b3e86f2298d5a5fd7eff0ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
