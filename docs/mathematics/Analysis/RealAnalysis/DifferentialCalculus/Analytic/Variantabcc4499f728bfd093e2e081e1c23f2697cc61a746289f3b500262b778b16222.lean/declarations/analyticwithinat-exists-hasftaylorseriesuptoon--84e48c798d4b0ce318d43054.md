# AnalyticWithinAt.exists_hasFTaylorSeriesUpToOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5923189-24cb-e377-07cc-aa2f07cedd56",
  "kind": "lemma",
  "lexical_name": "AnalyticWithinAt.exists_hasFTaylorSeriesUpToOn",
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
  "slug": "analyticwithinat-exists-hasftaylorseriesuptoon--84e48c798d4b0ce318d43054",
  "source": {
    "blob": "58732ca32810577e144569aedf1b4e3825c2e505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 288,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e48c798d4b0ce318d430549c65fb54c7224036a345f625b838ecc0d41f7174",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5923189-24cb-e377-07cc-aa2f07cedd56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticWithinAt.exists_hasFTaylorSeriesUpToOn [CompleteSpace F]
    (n : WithTop ℕ∞) (h : AnalyticWithinAt 𝕜 f s x) :
    ∃ u ∈ 𝓝[insert x s] x, ∃ (p : E → FormalMultilinearSeries 𝕜 E F),
    HasFTaylorSeriesUpToOn n f p u ∧ ∀ i, AnalyticOn 𝕜 (fun x ↦ p x i) u := by
  rcases h.exists_analyticAt with ⟨g, -, fg, hg⟩
  rcases hg.exists_mem_nhds_analyticOnNhd with ⟨v, vx, hv⟩
  refine ⟨insert x s ∩ v, inter_mem_nhdsWithin _ vx, ftaylorSeries 𝕜 g, ?_, fun i ↦ ?_⟩
  · suffices HasFTaylorSeriesUpToOn n g (ftaylorSeries 𝕜 g) (insert x s ∩ v) from
      this.congr (fun y hy ↦ fg hy.1)
    exact AnalyticOnNhd.hasFTaylorSeriesUpToOn _ (hv.mono Set.inter_subset_right)
  · exact (hv.iteratedFDeriv i).analyticOn.mono Set.inter_subset_right

/-- If a function has a power series `p` within a set of unique differentiability, inside a ball,
and is differentiable at a point, then the derivative series of `p` is summable at a point, with
sum the given differential. Note that this theorem does not require completeness of the space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variantabcc4499f728bfd093e2e081e1c23f2697cc61a746289f3b500262b778b16222.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58732ca32810577e144569aedf1b4e3825c2e505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
