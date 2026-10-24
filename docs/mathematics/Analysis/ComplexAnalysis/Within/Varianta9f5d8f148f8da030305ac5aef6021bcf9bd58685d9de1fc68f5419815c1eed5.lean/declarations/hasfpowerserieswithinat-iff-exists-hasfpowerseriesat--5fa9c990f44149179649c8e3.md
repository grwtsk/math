# hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77496a1b-3235-2d37-f695-b0465e980952",
  "kind": "lemma",
  "lexical_name": "hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt",
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
  "slug": "hasfpowerserieswithinat-iff-exists-hasfpowerseriesat--5fa9c990f44149179649c8e3",
  "source": {
    "blob": "93e118cb5c6ccf34007d09b324d2b1a45ed573ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 152,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fa9c990f44149179649c8e32076950667aeae7663d83a668277bf96f79397e2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77496a1b-3235-2d37-f695-b0465e980952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasFPowerSeriesWithinAt_iff_exists_hasFPowerSeriesAt [CompleteSpace F] {f : E → F}
    {p : FormalMultilinearSeries 𝕜 E F} {s : Set E} {x : E} :
    HasFPowerSeriesWithinAt f p s x ↔
      ∃ g, f =ᶠ[𝓝[insert x s] x] g ∧ HasFPowerSeriesAt g p x := by
  constructor
  · intro ⟨r, h⟩
    rcases hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall.mp h with ⟨g, e, h⟩
    refine ⟨g, ?_, ⟨r, h⟩⟩
    refine Filter.eventuallyEq_iff_exists_mem.mpr ⟨_, ?_, e⟩
    exact inter_mem_nhdsWithin _ (EMetric.ball_mem_nhds _ h.r_pos)
  · intro ⟨g, hfg, ⟨r, hg⟩⟩
    simp only [eventuallyEq_nhdsWithin_iff, Metric.eventually_nhds_iff] at hfg
    rcases hfg with ⟨e, e0, hfg⟩
    refine ⟨min r (.ofReal e), ?_⟩
    refine hasFPowerSeriesWithinOnBall_iff_exists_hasFPowerSeriesOnBall.mpr ⟨g, ?_, ?_⟩
    · intro y ⟨ys, xy⟩
      refine hfg ?_ ys
      simp only [EMetric.mem_ball, lt_min_iff, edist_lt_ofReal] at xy
      exact xy.2
    · exact hg.mono (lt_min hg.r_pos (by positivity)) (min_le_left _ _)

/-- `f` is analytic within `s` at `x` iff some local extension of `f` is analytic at `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Within/Varianta9f5d8f148f8da030305ac5aef6021bcf9bd58685d9de1fc68f5419815c1eed5.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e118cb5c6ccf34007d09b324d2b1a45ed573ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
