# indicator_indepFun_pi_of_prod_bcf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da4a2219-9eb6-6164-0784-3f9f87bc41ff",
  "kind": "lemma",
  "lexical_name": "indicator_indepFun_pi_of_prod_bcf",
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
  "slug": "indicator-indepfun-pi-of-prod-bcf--aa88db6d78860445a572c0cf",
  "source": {
    "blob": "55a4270c1cb09b6774810513d7887b5b7710cfd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 199,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa88db6d78860445a572c0cf23a3cf99e44d4432daa1db5ecee5d92804bc1b6d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da4a2219-9eb6-6164-0784-3f9f87bc41ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma indicator_indepFun_pi_of_prod_bcf
    {A : Set Ω} (mA : NullMeasurableSet A P) (mX : ∀ s, AEMeasurable (X s) P)
    (h : ∀ f : (s : S) → E s →ᵇ ℝ, ∫ ω in A, ∏ s, f s (X s ω) ∂P =
      P.real A * ∫ ω, ∏ s, f s (X s ω) ∂P) :
    (A.indicator (1 : Ω → ℝ)) ⟂ᵢ[P] (fun ω s ↦ X s ω) := by
  refine indepFun_pi_of_prod_bcf
    ((aemeasurable_indicator_const_iff 1).2 mA) mX fun f g ↦ ?_
  have h1 ω : f (A.indicator 1 ω) * ∏ s, g s (X s ω) =
      A.indicator (fun ω ↦ f 1 * ∏ s, g s (X s ω)) ω +
      f 0 * ∏ s, g s (X s ω) - A.indicator (fun ω ↦ f 0 * ∏ s, g s (X s ω)) ω := by
    classical
    rw [Set.indicator_apply]
    split_ifs <;> simp_all
  have h2 ω : f (A.indicator 1 ω) =
      A.indicator (fun _ ↦ f 1) ω + Aᶜ.indicator (fun _ ↦ f 0) ω := by
    classical
    rw [Set.indicator_apply]
    split_ifs <;> simp_all
  have hg {c : ℝ} : Integrable (fun ω ↦ c * ∏ s, g s (X s ω)) P := by
    refine Integrable.of_bound ?_ (‖c‖ * ∏ s, ‖g s‖) (ae_of_all _ fun ω ↦ ?_)
    · exact (Finset.aestronglyMeasurable_fun_prod _ fun s _ ↦
        (g s).continuous.aestronglyMeasurable.comp_aemeasurable (mX s)).const_mul _
    · rw [norm_mul, norm_prod]
      gcongr with s
      exact (g s).norm_coe_le_norm _
  simp_rw [Pi.mul_apply, Finset.prod_apply, Function.comp_apply, h1, h2]
  rw [integral_sub, integral_add, integral_indicator₀ mA, integral_indicator₀ mA,
    integral_const_mul, integral_const_mul, integral_const_mul, integral_add,
    integral_indicator₀ mA, integral_indicator₀ mA.compl, integral_const, integral_const, h]
  · simp [measureReal_compl₀ mA]
    ring
  · exact (integrable_const _).indicator₀ mA
  · exact (integrable_const _).indicator₀ mA.compl
  · exact hg.indicator₀ mA
  · exact hg
  · exact (hg.indicator₀ mA).add hg
  · exact hg.indicator₀ mA

omit [Fintype S] in variable [Finite S] in
/-- The indicator of a set $A$ and a family of random variables $(X_1, ..., X_p)$ are independent
if for all real bounded continuous function $f$,
$$P[\mathbb{I}_A f(X_1, ..., X_p)] = P(A) P[f(X_1, ..., X_p)].$$ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundedContinuousFunction/Variantc7bee5eb4f92f8d2e1c100d450da0b826fd5513a9f94ea73ad3c89929087c82b.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a4270c1cb09b6774810513d7887b5b7710cfd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
