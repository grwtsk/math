# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pochhammer.Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4138ec87a72de683e92921171f101e8eb068cf12",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4138ec87a72de683e92921171f101e8eb068cf12`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/differentiable-descpochhammer-eval--5ccbe0f99e48923f1ea1e053.md) | 42 | `result-track:5ccbe0f99e48923f1ea1e053cc8d4a18025be344e9f6b1899acc8c0c5500e55f` |
| 2 | `theorem` | [continuous_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/continuous-descpochhammer-eval--169f2e7b35e2d48847186337.md) | 46 | `result-track:169f2e7b35e2d488471863377d9db1da19c8ddea3b0052d5dd2dad03599ed8d2` |
| 3 | `lemma` | [deriv_descPochhammer_eval_eq_sum_prod_range_erase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/deriv-descpochhammer-eval-eq-sum-prod-range-erase--687bfc355aabc19e058c29d0.md) | 49 | `result-track:687bfc355aabc19e058c29d0842bfc4c8f6e45157b5a4bac77c4a5b0afd639b6` |
| 4 | `lemma` | [monotoneOn_deriv_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/monotoneon-deriv-descpochhammer-eval--cad825e6e44db2e82d3e838e.md) | 55 | `result-track:cad825e6e44db2e82d3e838e9121c14f01006071f057d6b90bedb9333a9cf2ed` |
| 5 | `theorem` | [convexOn_descPochhammer_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/convexon-descpochhammer-eval--c7988a81c1aef05ceaa1559d.md) | 70 | `result-track:c7988a81c1aef05ceaa1559df500f5f0761be7a05b366626301fd50814e768b2` |
| 6 | `lemma` | [piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/piecewise-ici-descpochhammer-eval-zero-eq-descfactorial--d1c01e8497c6b04fa246bea2.md) | 80 | `result-track:d1c01e8497c6b04fa246bea2c21cbbbba060d99f2aa545e1afe1e3f283cb89d6` |
| 7 | `lemma` | [convexOn_piecewise_Ici_descPochhammer_eval_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/convexon-piecewise-ici-descpochhammer-eval-zero--726512fabbc1480924e1ad04.md) | 87 | `result-track:726512fabbc1480924e1ad04a9c4c6c113cd464c8f4b410036fbbf74a72a73fc` |
| 8 | `theorem` | [descPochhammer_eval_le_sum_descFactorial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/descpochhammer-eval-le-sum-descfactorial--116e9611e8c72250f093b225.md) | 96 | `result-track:116e9611e8c72250f093b2255bc9bc4e6d2b0254125ce2a3bfa532417b5c30e5` |
| 9 | `theorem` | [descPochhammer_eval_div_factorial_le_sum_choose](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pochhammer/Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616.lean/declarations/descpochhammer-eval-div-factorial-le-sum-choose--08dc47613baaaa0d9eacd401.md) | 108 | `result-track:08dc47613baaaa0d9eacd4013d6ceaa2549fae36e087981d923c19292c092e72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
