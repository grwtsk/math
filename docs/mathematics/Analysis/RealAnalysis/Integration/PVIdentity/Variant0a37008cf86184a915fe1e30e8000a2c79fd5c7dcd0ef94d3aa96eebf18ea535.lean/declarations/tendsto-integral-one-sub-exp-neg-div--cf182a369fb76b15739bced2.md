# tendsto_integral_one_sub_exp_neg_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b27a6bbd-b9d3-bcb0-e846-2956bfe4991b",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_one_sub_exp_neg_div",
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
  "slug": "tendsto-integral-one-sub-exp-neg-div--cf182a369fb76b15739bced2",
  "source": {
    "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf182a369fb76b15739bced20d65ce003a35b44dbcea276d80ee12e3f67bab3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b27a6bbd-b9d3-bcb0-e846-2956bfe4991b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_one_sub_exp_neg_div :
    Tendsto (fun ε => ∫ t in ε..1, (1 - exp (-t)) / t)
      (𝓝[>] (0 : ℝ)) (𝓝 (∫ t in (0:ℝ)..1, (1 - exp (-t)) / t)) := by
  -- The function (1 - exp(-t))/t is integrable on (0, 1] by the provided lemma.
  have h_integrable : MeasureTheory.IntegrableOn (fun t : ℝ => (1 - Real.exp (-t)) / t) (Set.Ioc 0 1) := by
    exact integrableOn_one_sub_exp_neg_div;
  -- The integral of a continuous function over a compact interval is continuous, hence the limit can be passed inside.
  have h_cont : ContinuousOn (fun ε => ∫ t in (ε)..1, (1 - Real.exp (-t)) / t) (Set.Icc 0 1) := by
    have h_cont : ContinuousOn (fun ε => ∫ t in (1 : ℝ)..ε, (1 - Real.exp (-t)) / t) (Set.Icc 0 1) := by
      intro ε hε; apply_rules [ intervalIntegral.continuousWithinAt_primitive ] ; aesop;
      rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le ] <;> aesop;
    exact ContinuousOn.congr ( h_cont.neg ) fun x hx => by rw [ ← intervalIntegral.integral_symm ] ;
  have := h_cont 0 ( by norm_num );
  convert this.tendsto.mono_left _ using 2 ; norm_num [ Set.Ioi_subset_Ici_self ];
  exact nhdsWithin_mono _ <| Set.Ioi_subset_Ici_self
/-
PROBLEM
∫_1^{1/ε} exp(-t)/t dt → ∫_1^∞ exp(-t)/t dt as ε → 0+
PROVIDED SOLUTION
exp(-t)/t is integrable on (1,∞) (by integrableOn_exp_neg_div_Ioi). Use intervalIntegral_tendsto_integral_Ioi: as the upper limit goes to ∞, the interval integral converges to the improper integral. Since 1/ε → ∞ as ε → 0+, compose with Tendsto (1/·) (𝓝[>] 0) atTop.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
