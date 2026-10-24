# integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16d5c33a386ed47303041786a77bd4f00fd06b25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 523,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15e1418d-8041-fe33-81b4-7d9704830203",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:393120fb-2f2f-82fe-bb45-fba52352e5f0",
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
  "slug": "integral-sub-integral-sub-linear-islittleo-of-tendsto-ae--13ef961de35dd171ac616d57",
  "source": {
    "blob": "16d5c33a386ed47303041786a77bd4f00fd06b25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 523,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ef961de35dd171ac616d57240cf523e97261a3aee08847c28bf9e91dbe552e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:393120fb-2f2f-82fe-bb45-fba52352e5f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–543.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantc7618419e05d08710e90d3ed406d5e5044af2d9bfe12ceb721273aaa29653195.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16d5c33a386ed47303041786a77bd4f00fd06b25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
