# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiSectionObstruction.Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "041b7f9712c76e5d807d8b78686c6e6d664ae3d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `041b7f9712c76e5d807d8b78686c6e6d664ae3d7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiReconstruction` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/thetamoment--85731f2410715a78c4ca93ed.md) | 22 | `declaration-track:85731f2410715a78c4ca93ed6cc900ad47cd39db1820466342c37ec8e2c188a4` |
| 2 | `theorem` | [thetaMoment_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/thetamoment-integrable--fd7f3df9f155c3657692181d.md) | 26 | `result-track:fd7f3df9f155c3657692181d5db8f110752969cad359763deb988f6865bcb619` |
| 3 | `theorem` | [coefficient_eq_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/coefficient-eq-moment--cf02130591dd6b38b3fcc9c5.md) | 32 | `result-track:cf02130591dd6b38b3fcc9c5f45e8be1cac8950d5c8b864c463992d5c8e5b4ea` |
| 4 | `theorem` | [thetaMoment_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/thetamoment-pos--3faa4612d44780be66971be8.md) | 38 | `result-track:3faa4612d44780be66971be814cdc60a66bc7c31a8eea4f2650e78f2ed247ac7` |
| 5 | `theorem` | [thetaMoment_quadratic_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/thetamoment-quadratic-nonneg--c342ec3efa38e956d794d7e1.md) | 46 | `result-track:c342ec3efa38e956d794d7e1f802f35db30d00a7c608d4340a997cc0ba15288e` |
| 6 | `theorem` | [thetaMoment_logConvex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/thetamoment-logconvex--13062bd337286515a3b0c7ac.md) | 75 | `result-track:13062bd337286515a3b0c7aca77982fb0a7d93f7c7239bec4da936ee5a5b0856` |
| 7 | `theorem` | [coefficient_mul_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/coefficient-mul-factorial--f45719fd200a76aace1a7b28.md) | 84 | `result-track:f45719fd200a76aace1a7b283194a4eb94cd54f81a2e922dd24ec5162c4d9fda` |
| 8 | `theorem` | [coefficient_logConvex_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/coefficient-logconvex-factorial--40a799bdebe23148ffb32a73.md) | 90 | `result-track:40a799bdebe23148ffb32a731a65d19a4c018cb95e86b6814602685f0c949df9` |
| 9 | `theorem` | [coefficient_fourth_obstruction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/coefficient-fourth-obstruction--01f0007b781d19a94fcf408e.md) | 129 | `result-track:01f0007b781d19a94fcf408e9a6e6f7ca6ebca87c1c494b2a8dd50b1745febb8` |
| 10 | `def` | [sectionPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial--e4d49a343ee7d792d1f29e69.md) | 146 | `declaration-track:e4d49a343ee7d792d1f29e69f16800426e6a6831b98882546a03b3a79a30eb9f` |
| 11 | `theorem` | [sectionPolynomial_eval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-eval--df7312a288550f0a38faadad.md) | 150 | `result-track:df7312a288550f0a38faadadbdba51cb5c641fc7463cca1aa9403c8bf8dbc487` |
| 12 | `theorem` | [sectionPolynomial_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-coeff--20c2288a2fe9f24924b8bf1a.md) | 155 | `result-track:20c2288a2fe9f24924b8bf1af3c9c269486c25d9218a2f48329dd92f7d34e440` |
| 13 | `theorem` | [sectionPolynomial_natDegree](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-natdegree--a2414562f5a3fae7e917cff7.md) | 160 | `result-track:a2414562f5a3fae7e917cff73f1657412e0f99a690234503f89c80c9aa5cabb9` |
| 14 | `theorem` | [sectionPolynomial_leadingCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-leadingcoeff--84a13944868c8f6aad532f5c.md) | 170 | `result-track:84a13944868c8f6aad532f5c33ece40a5b19efe245846d884f22f781787e5473` |
| 15 | `lemma` | [esymm_cons_succ](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/esymm-cons-succ--c8e217bfc621374f43193074.md) | 174 | `result-track:c8e217bfc621374f431930749c9bc63ec565e658c06515459b96cbf65532cbcb` |
| 16 | `lemma` | [roots_square_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/roots-square-sum--6b04bf4d19aac362a8c7d665.md) | 178 | `result-track:6b04bf4d19aac362a8c7d66581290dd0236b171ad6f638c825b2e094421eb8d7` |
| 17 | `theorem` | [sectionPolynomial_roots_square_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-roots-square-sum--fb2aa970c8605a48d5380382.md) | 190 | `result-track:fb2aa970c8605a48d53803826bbbe411321e29efc954395da260ad7768eaf26c` |
| 18 | `theorem` | [sectionPolynomial_roots_square_sum_re_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-roots-square-sum-re-neg--87e99ee78d7c7ec5e5ded937.md) | 214 | `result-track:87e99ee78d7c7ec5e5ded937366b422e55a21a4159193da70dbacf1db2826a23` |
| 19 | `lemma` | [roots_square_sum_re_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/roots-square-sum-re-nonneg--9a90610bfd1b113c37f86704.md) | 222 | `result-track:9a90610bfd1b113c37f8670407738f08731f66d416cdeebb39f70956d9aae51e` |
| 20 | `theorem` | [sectionPolynomial_has_nonreal_root](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/sectionpolynomial-has-nonreal-root--8ea35841e9c216425ec8e291.md) | 234 | `result-track:8ea35841e9c216425ec8e291cbf4c0b18d33de2c7e1723c4796270b532da8545` |
| 21 | `theorem` | [spectralSection_has_nonreal_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiSectionObstruction/Variantb025e9e8504f11114bc14dfb1adc1d3e264cf7b55e20218e5e226862d1de558b.lean/declarations/spectralsection-has-nonreal-zero--f9dda73c97acc0eb51b67f97.md) | 242 | `result-track:f9dda73c97acc0eb51b67f97ce9e22870a226ce9492c57093b53dd821700de7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
