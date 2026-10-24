# add_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 489,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26f95ec0-a01f-a3c7-0044-23352606dfd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa0e8f96-dfa3-a6fa-bb44-55dfb6f17631",
  "kind": "lemma",
  "lexical_name": "add_compProd",
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
  "slug": "add-compprod--62c5d9cefea9a7d1c884a1e9",
  "source": {
    "blob": "b2c9b55f67a2de2ea02f0d91371ae57438c26a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 489,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c5d9cefea9a7d1c884a1e984579df947f4a93e1d0497edd812e24170441ce2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa0e8f96-dfa3-a6fa-bb44-55dfb6f17631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_compProd {η : Kernel (Ω' × Ω) Ω''} [IsZeroOrMarkovKernel η]
    (hX : HasSubgaussianMGF X c κ ν) (hY : HasSubgaussianMGF Y cY η (ν ⊗ₘ κ)) :
    HasSubgaussianMGF (fun p ↦ X p.1 + Y p.2) (c + cY) (κ ⊗ₖ η) ν := by
  by_cases hκ : IsSFiniteKernel κ
  swap; · simp [hκ]
  refine .of_rat (integrable_exp_add_compProd hX hY) fun q ↦ ?_
  filter_upwards [hX.mgf_le, hX.ae_integrable_exp_mul q, Measure.ae_ae_of_ae_compProd hY.mgf_le,
    Measure.ae_integrable_of_integrable_comp <| integrable_exp_add_compProd hX hY q]
    with ω' hX_mgf hX_int hY_mgf h_int_mul
  calc mgf (fun p ↦ X p.1 + Y p.2) ((κ ⊗ₖ η) ω') q
  _ = ∫ x, exp (q * X x) * ∫ y, exp (q * Y y) ∂(η (ω', x)) ∂(κ ω') := by
    simp_rw [mgf, mul_add, exp_add] at h_int_mul ⊢
    simp_rw [integral_compProd h_int_mul, integral_const_mul]
  _ ≤ ∫ x, exp (q * X x) * exp (cY * q ^ 2 / 2) ∂(κ ω') := by
    refine integral_mono_of_nonneg ?_ (hX_int.mul_const _) ?_
    · exact ae_of_all _ fun ω ↦ mul_nonneg (by positivity)
        (integral_nonneg (fun _ ↦ by positivity))
    · filter_upwards [all_ae_of hY_mgf q] with ω hY_mgf
      gcongr
      exact hY_mgf
  _ ≤ exp (↑(c + cY) * q ^ 2 / 2) := by
    rw [integral_mul_const, NNReal.coe_add, add_mul, add_div, exp_add]
    gcongr
    exact hX_mgf q

/-- For `ν : Measure Ω'`, `κ : Kernel Ω' Ω` and `η : Ω Ω''`, if a random variable `X : Ω → ℝ`
has a sub-Gaussian mgf with respect to `κ` and `ν` and another random variable `Y : Ω'' → ℝ` has
a sub-Gaussian mgf with respect to `η` and `κ ∘ₘ ν : Measure Ω`, then `X + Y` (random
variable on the measurable space `Ω × Ω''`) has a sub-Gaussian mgf with respect to
`κ ⊗ₖ prodMkLeft Ω' η : Kernel Ω' (Ω × Ω'')` and `ν`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/SubGaussian/Variant60038d9a57340ed4b38a7ec780d0470bcd68cbc3482decb9cdbaaa03ee2694ea.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2c9b55f67a2de2ea02f0d91371ae57438c26a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
