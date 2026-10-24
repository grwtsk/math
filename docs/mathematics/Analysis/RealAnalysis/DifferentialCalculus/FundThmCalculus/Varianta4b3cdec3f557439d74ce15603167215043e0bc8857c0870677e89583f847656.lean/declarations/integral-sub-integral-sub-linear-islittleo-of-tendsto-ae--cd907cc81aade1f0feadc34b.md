# integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:685707dc-8c99-47a3-f5ef-36ce71663bb4",
  "kind": "theorem",
  "lexical_name": "integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae",
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
  "slug": "integral-sub-integral-sub-linear-islittleo-of-tendsto-ae--cd907cc81aade1f0feadc34b",
  "source": {
    "blob": "a6c8ef977d4b27989ba7a5ac72ca3b0cb96f00bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 531,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd907cc81aade1f0feadc34b2fceeb79473dbda580cf636a149721f7eef78e53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:685707dc-8c99-47a3-f5ef-36ce71663bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae
    (hab : IntervalIntegrable f volume a b) (hmeas_a : StronglyMeasurableAtFilter f la')
    (hmeas_b : StronglyMeasurableAtFilter f lb') (ha_lim : Tendsto f (la' ⊓ volume.ae) (𝓝 ca))
    (hb_lim : Tendsto f (lb' ⊓ volume.ae) (𝓝 cb)) (hua : Tendsto ua lt la) (hva : Tendsto va lt la)
    (hub : Tendsto ub lt lb) (hvb : Tendsto vb lt lb) :
    (fun t =>
        ((∫ x in va t..vb t, f x) - ∫ x in ua t..ub t, f x) -
          ((vb t - ub t) • cb - (va t - ua t) • ca)) =o[lt]
      fun t => ‖va t - ua t‖ + ‖vb t - ub t‖ := by
  simpa [integral_const]
    using measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae hab hmeas_a hmeas_b
      ha_lim hb_lim hua hva hub hvb
#align interval_integral.integral_sub_integral_sub_linear_is_o_of_tendsto_ae intervalIntegral.integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae

/-- **Fundamental theorem of calculus-1**, strict differentiability at filter in both endpoints.

If `f` is a measurable function integrable on `a..b`, `(lb, lb')` is an `intervalIntegral.FTCFilter`
pair around `b`, and `f` has a finite limit `c` almost surely at `lb'`, then
`(∫ x in a..v, f x) - ∫ x in a..u, f x = (v - u) • c + o(‖v - u‖)` as `u` and `v` tend to `lb`.

This lemma could've been formulated using `HasStrictDerivAtFilter` if we had this definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Varianta4b3cdec3f557439d74ce15603167215043e0bc8857c0870677e89583f847656.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c8ef977d4b27989ba7a5ac72ca3b0cb96f00bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
