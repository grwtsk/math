# sourceTailKernel_local_cleared_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c871845a-5bdb-bf76-9725-d41b277e43be",
  "kind": "theorem",
  "lexical_name": "sourceTailKernel_local_cleared_tendsto",
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
  "slug": "sourcetailkernel-local-cleared-tendsto--b6cf601a72c963e73845beb4",
  "source": {
    "blob": "ee33ef923bbfab915d06bafe05d33994168dc329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 266,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6cf601a72c963e73845beb49cf52707cdfa64d20118f45b39af7e55e67d56ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c871845a-5bdb-bf76-9725-d41b277e43be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceTailKernel_local_cleared_tendsto
    (z : ℂ) (hz : z ≠ 0) (R : ℝ) :
    Tendsto (fun w : ℂ ↦ w ^ 9 * sourceTailKernel z R (2 * z + w))
      (𝓝[≠] 0) (𝓝 (modeCoefficient z * z ^ 8 * (Nat.factorial 8 : ℂ))) := by
  have hfour : (0 : ℂ) + 4 * z ≠ 0 := by
    simpa using mul_ne_zero (by norm_num : (4 : ℂ) ≠ 0) hz
  have htwo : (0 : ℂ) + 2 * z ≠ 0 := by
    simpa using mul_ne_zero (by norm_num : (2 : ℂ) ≠ 0) hz
  have ha : AnalyticAt ℂ (fun w : ℂ ↦
      polynomialTailKernel (positivePolynomial (-z)) R (w + 4 * z) -
      2 * polynomialTailKernel (mixedPolynomial z) R (w + 2 * z)) 0 :=
    ((polynomialTailKernel_analytic _ R _ hfour).comp
      (f := fun w : ℂ ↦ w + 4 * z) (x := 0) (analyticAt_id.add analyticAt_const)).sub
      (analyticAt_const.mul ((polynomialTailKernel_analytic _ R _ htwo).comp
        (f := fun w : ℂ ↦ w + 2 * z) (x := 0) (analyticAt_id.add analyticAt_const)))
  have ht := ninth_order_limit_add_continuous
    (by simpa only [sub_zero, positivePolynomial_coeff_eight] using
      polynomialTailKernel_cleared_tendsto (positivePolynomial z) R) ha.continuousAt
  have hm := ht.const_mul (modeCoefficient z)
  simp only [← mul_assoc] at hm
  convert hm using 1
  funext w
  unfold sourceTailKernel
  rw [show 2 * z + w - 2 * z = w by ring,
    show 2 * z + w + 2 * z = w + 4 * z by ring,
    show 2 * z + w = w + 2 * z by ring]
  ring

/-- The finite reflected multiplicity contribution has the exact historical
coefficient, for every real cutoff; this is not an infinite-sum pole theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RealTailKernel/Variant3b45f7f583f56a9925cdc8bc1fa823a40d1bc3e4063f964d6a23ac1ea354616e.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee33ef923bbfab915d06bafe05d33994168dc329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
