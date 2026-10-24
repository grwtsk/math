# integrableOn_exp_sub_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87779d6d-dd99-d4e2-ec03-a3e2e5c5b68c",
  "kind": "lemma",
  "lexical_name": "integrableOn_exp_sub_one_div",
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
  "slug": "integrableon-exp-sub-one-div--8cced9e8f5f51bfbcb10bf73",
  "source": {
    "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cced9e8f5f51bfbcb10bf736f571973349ecef5de681c044d6daf10f7d04542",
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

Occurrence: `result:87779d6d-dd99-d4e2-ec03-a3e2e5c5b68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrableOn_exp_sub_one_div {y : ℝ} (hy : 0 < y) :
    IntegrableOn (fun u => (exp u - 1) / u) (Ioc 0 y) := by
  -- Since $(Real.exp u - 1) / u$ is bounded on $(0, y]$, we can apply the Integrable.mono' lemma.
  have h_bounded : ∀ u ∈ Set.Ioc 0 y, |(Real.exp u - 1) / u| ≤ Real.exp y := by
    norm_num [ abs_div ];
    intro u hu huy; rw [ abs_of_nonneg ( sub_nonneg_of_le ( Real.one_le_exp hu.le ) ), abs_of_nonneg hu.le ] ; rw [ div_le_iff₀ hu ] ; nlinarith [ Real.exp_pos u, Real.exp_le_exp.2 huy, Real.exp_neg u, mul_inv_cancel₀ ( ne_of_gt ( Real.exp_pos u ) ), Real.add_one_le_exp u, Real.add_one_le_exp ( -u ) ] ;
  refine' MeasureTheory.Integrable.mono' _ _ _;
  exacts [ fun u => Real.exp y, by norm_num, by exact Measurable.aestronglyMeasurable ( by exact Measurable.div ( Real.continuous_exp.measurable.sub measurable_const ) measurable_id' ), Filter.eventually_of_mem ( MeasureTheory.ae_restrict_mem measurableSet_Ioc ) fun u hu => h_bounded u hu ]
/-
PROBLEM
∫_ε^1 (1-exp(-t))/t dt → ∫_0^1 (1-exp(-t))/t dt as ε → 0+
PROVIDED SOLUTION
The function (1-exp(-t))/t is integrable on (0,1] (by integrableOn_one_sub_exp_neg_div). The interval integral ∫_ε^1 is continuous as a function of ε. As ε → 0+, we get ∫_0^1. Use continuity of the interval integral at the endpoint. Since the function is integrable on (0,1], the interval integral ∫_ε^1 f(t) dt converges to ∫_0^1 f(t) dt as ε → 0+. This can be shown by using intervalIntegral.integral_tendsto or by showing continuity of ε ↦ ∫_ε^1 f and evaluating at 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
