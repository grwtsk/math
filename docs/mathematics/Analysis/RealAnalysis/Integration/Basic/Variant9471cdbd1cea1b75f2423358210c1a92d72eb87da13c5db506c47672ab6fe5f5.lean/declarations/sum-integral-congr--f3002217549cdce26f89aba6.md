# sum_integral_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93fd0df0-5688-9dbd-6f55-27c2891eb60c",
  "kind": "theorem",
  "lexical_name": "sum_integral_congr",
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
  "slug": "sum-integral-congr--f3002217549cdce26f89aba6",
  "source": {
    "blob": "6098dac7fbdb5c9e227e6daf427dac61b577eb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 653,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3002217549cdce26f89aba6b2214dafb3d97694d02539e5b67924bf91c9f7bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93fd0df0-5688-9dbd-6f55-27c2891eb60c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_integral_congr (h : Integrable I l f vol) {π₁ π₂ : Prepartition I}
    (hU : π₁.iUnion = π₂.iUnion) :
    ∑ J in π₁.boxes, integral J l f vol = ∑ J in π₂.boxes, integral J l f vol := by
  refine' tendsto_nhds_unique (h.tendsto_integralSum_sum_integral π₁) _
  rw [l.toFilteriUnion_congr _ hU]
  exact h.tendsto_integralSum_sum_integral π₂
#align box_integral.integrable.sum_integral_congr BoxIntegral.Integrable.sum_integral_congr

/-- If `f` is integrable on `I`, then `λ J, integral J l f vol` is box-additive on subboxes of `I`:
if `π₁`, `π₂` are two prepartitions of `I` covering the same part of `I`, then the sum of integrals
of `f` over the boxes of `π₁` is equal to the sum of integrals of `f` over the boxes of `π₂`.

See also `BoxIntegral.Integrable.sum_integral_congr` for an unbundled version. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant9471cdbd1cea1b75f2423358210c1a92d72eb87da13c5db506c47672ab6fe5f5.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6098dac7fbdb5c9e227e6daf427dac61b577eb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
