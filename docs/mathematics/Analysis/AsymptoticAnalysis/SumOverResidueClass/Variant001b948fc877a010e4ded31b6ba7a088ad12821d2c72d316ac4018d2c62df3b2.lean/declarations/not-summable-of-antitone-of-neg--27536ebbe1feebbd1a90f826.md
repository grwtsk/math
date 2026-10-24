# not_summable_of_antitone_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf371e6-9b55-2771-066e-17b3e049aa88",
  "kind": "lemma",
  "lexical_name": "not_summable_of_antitone_of_neg",
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
  "slug": "not-summable-of-antitone-of-neg--27536ebbe1feebbd1a90f826",
  "source": {
    "blob": "7421d9d592cd0502a5e02c666614422214b5f110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27536ebbe1feebbd1a90f8264f38df5d5f1ceed591a9d73563f1afac575a85e1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf371e6-9b55-2771-066e-17b3e049aa88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_summable_of_antitone_of_neg {f : ℕ → ℝ} (hf : Antitone f) {n : ℕ} (hn : f n < 0) :
    ¬ Summable f := by
  intro hs
  have := hs.tendsto_atTop_zero
  simp only [Metric.tendsto_atTop, dist_zero_right, Real.norm_eq_abs] at this
  obtain ⟨N, hN⟩ := this (|f n|) (abs_pos_of_neg hn)
  specialize hN (max n N) (n.le_max_right N)
  contrapose! hN; clear hN
  have H : f (max n N) ≤ f n := hf (n.le_max_left N)
  rwa [abs_of_neg hn, abs_of_neg (H.trans_lt hn), neg_le_neg_iff]

/-- If `f : ℕ → ℝ` is decreasing and has a negative term, then `f` restricted to a residue
class is not summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SumOverResidueClass/Variant001b948fc877a010e4ded31b6ba7a088ad12821d2c72d316ac4018d2c62df3b2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7421d9d592cd0502a5e02c666614422214b5f110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
