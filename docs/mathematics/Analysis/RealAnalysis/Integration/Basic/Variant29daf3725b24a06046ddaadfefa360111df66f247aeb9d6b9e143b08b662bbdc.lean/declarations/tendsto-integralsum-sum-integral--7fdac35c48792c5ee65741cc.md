# tendsto_integralSum_sum_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30bc6879-5c08-8536-6152-c66e80db7ccd",
  "kind": "theorem",
  "lexical_name": "tendsto_integralSum_sum_integral",
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
  "slug": "tendsto-integralsum-sum-integral--7fdac35c48792c5ee65741cc",
  "source": {
    "blob": "f0925e524275a3187930041cbdadbf1efd6be99b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 602,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fdac35c48792c5ee65741cce4e92799e00cfda69b30f32078507496cb1b187a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30bc6879-5c08-8536-6152-c66e80db7ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integralSum_sum_integral (h : Integrable I l f vol) (π₀ : Prepartition I) :
    Tendsto (integralSum f vol) (l.toFilteriUnion I π₀)
      (𝓝 <| ∑ J ∈ π₀.boxes, integral J l f vol) := by
  refine ((l.hasBasis_toFilteriUnion I π₀).tendsto_iff nhds_basis_closedBall).2 fun ε ε0 => ?_
  refine ⟨h.convergenceR ε, h.convergenceR_cond ε, ?_⟩
  simp only [mem_ofPred_eq]
  rintro π ⟨c, hc, hU⟩
  exact h.dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq ε0 hc hU

/-- If `f` is integrable on `I`, then `fun J ↦ integral J l f vol` is box-additive on subboxes of
`I`: if `π₁`, `π₂` are two prepartitions of `I` covering the same part of `I`, the sum of integrals
of `f` over the boxes of `π₁` is equal to the sum of integrals of `f` over the boxes of `π₂`.

See also `BoxIntegral.Integrable.toBoxAdditive` for a bundled version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0925e524275a3187930041cbdadbf1efd6be99b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
