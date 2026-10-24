# Filter.EventuallyEq.nhdsNE_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce977df1-b5d6-b92a-82c2-3e2add033e8c",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.nhdsNE_deriv",
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
  "slug": "filter-eventuallyeq-nhdsne-deriv--a9d1bc245b165f93ece95161",
  "source": {
    "blob": "93cff3447057e1867bd0cc7e951d61ac88f413a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 659,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d1bc245b165f93ece95161d7764cfc0873e478d836ff725633810fc5eccfb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce977df1-b5d6-b92a-82c2-3e2add033e8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.EventuallyEq.nhdsNE_deriv (h : f₁ =ᶠ[𝓝[≠] x] f) : deriv f₁ =ᶠ[𝓝[≠] x] deriv f := by
  rw [Filter.EventuallyEq, ← eventually_nhdsNE_eventually_nhds_iff] at *
  filter_upwards [h] with y hy
  apply Filter.EventuallyEq.deriv hy

/--
If two functions agree on a codiscrete subset of `s`, then so do their derivatives within any
subset `t` of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93cff3447057e1867bd0cc7e951d61ac88f413a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
