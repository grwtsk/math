# Verification target: GRWTSK.Analysis.ComplexAnalysis.Analytic.Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd7e7663cb813ea13eff8dc9ba4aacf777775a93",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd7e7663cb813ea13eff8dc9ba4aacf777775a93`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma--cb13e0753a12722a8b439069.md) | 48 | `declaration-track:cb13e0753a12722a8b439069be312a7f2fe43173cfd5a80b1a5831de00980111` |
| 2 | `lemma` | [invGammaℝ_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-eq--eb7e712806206fbee71760eb.md) | 50 | `result-track:eb7e712806206fbee71760eb7d686df88d4c282a28682806eee4086232ab7c49` |
| 3 | `theorem` | [differentiable_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/differentiable-invgamma--be5db780e9e4b0b149ecbce1.md) | 55 | `result-track:be5db780e9e4b0b149ecbce12482adb0dad8d06b11a1263adf80ec1b9a4407fe` |
| 4 | `theorem` | [analyticAt_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticat-invgamma--77ae8ff7f27ce8df0a4114bb.md) | 67 | `result-track:77ae8ff7f27ce8df0a4114bbd6ec0342a48ca2cfb72d5c8fc3a4cdee5a9c6233` |
| 5 | `lemma` | [Gammaℝ_eq_inv_invGammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/gamma-eq-inv-invgamma--6641f89e61313c51e422460a.md) | 69 | `result-track:6641f89e61313c51e422460ad763a925367eb8c90b753a353cf07800f219c8a4` |
| 6 | `lemma` | [invGammaℝ_ne_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-ne-zero-iff--cdbdb14cd884c87270bd4597.md) | 72 | `result-track:cdbdb14cd884c87270bd45976404d4d487c16970bde42e81b657fcd868c0ecbb` |
| 7 | `lemma` | [invGammaℝ_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-eq-zero-iff--cb4854ef0694a36e50267833.md) | 75 | `result-track:cb4854ef0694a36e50267833fa3553f87416a9eef253a7a964c291575256cb2c` |
| 8 | `theorem` | [analyticAt_Gammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticat-gamma--b2144b15d5a1987012c41a1a.md) | 79 | `result-track:b2144b15d5a1987012c41a1a598a1281da350006ffabd3f62ef9ce87a4ec9610` |
| 9 | `theorem` | [differentiableAt_Gammaℝ](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/differentiableat-gamma--a05246712deb3c9228d76fca.md) | 83 | `result-track:a05246712deb3c9228d76fca11f64f3149d7fada32b78f08fca4c9472f652e9d` |
| 10 | `theorem` | [Gammaℝ_ne_zero_of_re](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/gamma-ne-zero-of-re--969449b9b39835a9ef0d0794.md) | 87 | `result-track:969449b9b39835a9ef0d07942040c2e8239ea781d63ecd8fcf1db4175720f989` |
| 11 | `theorem` | [Gammaℝ_one_sub_ne_zero_of_re](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/gamma-one-sub-ne-zero-of-re--f915ff5e6c8c9932a1a7efbb.md) | 97 | `result-track:f915ff5e6c8c9932a1a7efbbc418c805032321d73f08694b9e79300cc0c19423` |
| 12 | `theorem` | [logDeriv_Gammaℝ_eq_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/logderiv-gamma-eq-neg--e1d5908b48facce954ae414f.md) | 101 | `result-track:e1d5908b48facce954ae414f5f9bd6058476b6977fa70d9265bfc1e01683be2f` |
| 13 | `theorem` | [invGammaℝ_eq_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-eq-mul--22acc5f807d11faffc33123c.md) | 110 | `result-track:22acc5f807d11faffc33123cde158f1c6c6e6e52c3e09dd110826fce712ae2fc` |
| 14 | `lemma` | [invGammaℝ_two](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-two--277c73bd603c1b39850a2ec8.md) | 119 | `result-track:277c73bd603c1b39850a2ec8442cc4db26928373bbb9096fac8c2f7f4577cab9` |
| 15 | `def` | [invGammaℝCof](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-cof--04e202e07df07ae108561350.md) | 125 | `declaration-track:04e202e07df07ae108561350535453130612f404a66dfce9ccc7cbde6f38abb4` |
| 16 | `lemma` | [differentiable_invGammaℝCof](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/differentiable-invgamma-cof--dcbdbf5c032046ca6092e9f0.md) | 127 | `result-track:dcbdbf5c032046ca6092e9f0ac84ca491489e31a3c17afb2069cc92c1b9039ca` |
| 17 | `lemma` | [invGammaℝCof_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-cof-zero--f34d6c17a56de7da27833857.md) | 130 | `result-track:f34d6c17a56de7da278338575a3756edd12b03b942a86820906a0c6ad95058c9` |
| 18 | `lemma` | [invGammaℝ_eq_id_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-eq-id-mul--d8d02b9c9510f28728d14472.md) | 135 | `result-track:d8d02b9c9510f28728d144725f53e1074f31adff29ea1a8d9391c67edc5c4658` |
| 19 | `lemma` | [invGammaℝ_eq_id_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/invgamma-eq-id-mul--1b823f104c858aa08980428a.md) | 138 | `result-track:1b823f104c858aa08980428a25e7ed41e561ba03434fdf8e4743fbcf27a9fd0c` |
| 20 | `theorem` | [analyticOrderAt_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticorderat-invgamma-zero--63071c35356eb6c59d420c09.md) | 142 | `result-track:63071c35356eb6c59d420c090af5b921a43fc0316327192b87c0b8f7662c9de7` |
| 21 | `theorem` | [analyticOrderNatAt_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticordernatat-invgamma-zero--f4c8adfd6090c0912b5d6cc2.md) | 151 | `result-track:f4c8adfd6090c0912b5d6cc2eb3bb08f6b11674106a5a7b382627099a7c26c8c` |
| 22 | `theorem` | [analyticOrderAt_invGammaℝ_one_sub_one](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticorderat-invgamma-one-sub-one--2b6c84a4ea3963405102bd3b.md) | 155 | `result-track:2b6c84a4ea3963405102bd3bddb7c5d0baa656d57dc95cc57abdce5907d8f87c` |
| 23 | `theorem` | [analyticOrderNatAt_invGammaℝ_one_sub_one](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticordernatat-invgamma-one-sub-one--3f08b82e0b2734bf0f970fdb.md) | 162 | `result-track:3f08b82e0b2734bf0f970fdb8079097a1be4bb13da556c9bf7980736d23c516c` |
| 24 | `theorem` | [tendsto_mul_logDeriv_invGammaℝ_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/tendsto-mul-logderiv-invgamma-zero--6d0fc022ac3604e606b3a4e0.md) | 166 | `result-track:6d0fc022ac3604e606b3a4e019c67b3bf29097e47571bbfb3be6304deae00a31` |
| 25 | `lemma` | [chiFE_eq_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/chife-eq-mul--897c5aea2e89fb66674b1296.md) | 194 | `result-track:897c5aea2e89fb66674b129625d9f08a9f5086ce8ba25cc84001830d1f03bc78` |
| 26 | `theorem` | [analyticAt_Gammaℝ_one_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/analyticat-gamma-one-sub--a4dbf1517791238e6fd1d343.md) | 197 | `result-track:a4dbf1517791238e6fd1d34378155913d5474d3b379f0d8178c1ba9515fa06eb` |
| 27 | `theorem` | [chiFE_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/chife-analyticat--001692a9601e31154f683666.md) | 201 | `result-track:001692a9601e31154f6836669af48e84c727873359018acd7ec18e9d75999a3f` |
| 28 | `theorem` | [chiFE_ne_zero'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/chife-ne-zero--9388e2dd6cbe81e00c305581.md) | 204 | `result-track:9388e2dd6cbe81e00c30558147afa705ff318ec5612d9634f239709ebcf4f349` |
| 29 | `theorem` | [logDeriv_chiFE_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/logderiv-chife-eq--58933830cfe8af39c8c67621.md) | 208 | `result-track:58933830cfe8af39c8c67621762cb310e41e669080612126ba4e1c47298e935e` |
| 30 | `theorem` | [logDeriv_Gammaℝ_one_sub_eq](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/logderiv-gamma-one-sub-eq--42cc8967e38bced6a934077e.md) | 214 | `result-track:42cc8967e38bced6a934077ef0724977a90e5f989bf4c9b918f3363267119af0` |
| 31 | `theorem` | [L2_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/l2-analyticat--c85abb8677ca6b30f19f14b9.md) | 224 | `result-track:c85abb8677ca6b30f19f14b93a81d0e596491bc70913846eb04cfea56d2154c1` |
| 32 | `theorem` | [hardyW_analyticAt'](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/hardyw-analyticat--13d3399b19767d00b6fef064.md) | 230 | `result-track:13d3399b19767d00b6fef06444d852ec763f88c2ed5b862591f103ffcb7e17e3` |
| 33 | `def` | [stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/stripreg--51c7e3c1c9d33afb958e6c94.md) | 241 | `declaration-track:51c7e3c1c9d33afb958e6c945f66f779b9d4df1906eaa45b721c65486cb9454f` |
| 34 | `lemma` | [isOpen_stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/isopen-stripreg--4af35ee8c860cfc01ec6d4da.md) | 243 | `result-track:4af35ee8c860cfc01ec6d4da2e2a6d5d3c136dcfc6a8ecfe6de05b2c677d3d76` |
| 35 | `theorem` | [hardyW_analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/hardyw-analyticat-of-mem--bdffc03ceb7bd30fcb551358.md) | 250 | `result-track:bdffc03ceb7bd30fcb55135856657243d474d7668e5953a6b1e0031202a03a6c` |
| 36 | `theorem` | [L2_analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/l2-analyticat-of-mem--355e599eaf76c9e55bd1d0a9.md) | 253 | `result-track:355e599eaf76c9e55bd1d0a99e65c4211e78e5f438ba2c30c8628d272bbb06e5` |
| 37 | `theorem` | [hardyW_analyticOnNhd_stripReg](../../../../../mathematics/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/declarations/hardyw-analyticonnhd-stripreg--a6e7f796e73f70ac0aed3b23.md) | 256 | `result-track:a6e7f796e73f70ac0aed3b23eb365ee97906e0dbca91908f3fcf469540dc864e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
