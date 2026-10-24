# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SmoothTransition.Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6f4839f54563df33db4895329bbba1bfd9d8c10",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6f4839f54563df33db4895329bbba1bfd9d8c10`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolynomialExp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expNegInvGlue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/expneginvglue--ca29f62f58c04b6d9ebe2b7a.md) | 42 | `declaration-track:ca29f62f58c04b6d9ebe2b7a30750bc3d4bdaf6593bda3eceecb276f705d2f33` |
| 2 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero-of-nonpos--ac3d567906b0dbb5c52dd07f.md) | 48 | `result-track:ac3d567906b0dbb5c52dd07f1b54833f770748e9b397cb0a6be747abea7ebfc0` |
| 3 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero--6a248fd661eb933c51fef698.md) | 51 | `result-track:6a248fd661eb933c51fef698d950b801c2638e87bec1a4fcd22f0073a801dfe3` |
| 4 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/pos-of-pos--6f9a29b6ab79af3b0b5e7c8f.md) | 54 | `result-track:6f9a29b6ab79af3b0b5e7c8f37c17ffb8ec3f9370cc2bfbc0c2f8f136fed62c7` |
| 5 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/nonneg--347cf4d9fa8acabee9493a82.md) | 58 | `result-track:347cf4d9fa8acabee9493a82f52cf93cedff3514895c863d9832b7696bf6b6da` |
| 6 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero-iff-nonpos--db48ca8fae8d2c40fb613779.md) | 63 | `result-track:db48ca8fae8d2c40fb61377965c6c93cce3cd15cf6007ac60977007761c806a9` |
| 7 | `theorem` | [tendsto_polynomial_inv_mul_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/tendsto-polynomial-inv-mul-zero--8e2d80b56cbad78adcf37a81.md) | 77 | `result-track:8e2d80b56cbad78adcf37a81e466a2c496defdd422f63a5e5f90c3a49db80035` |
| 8 | `theorem` | [hasDerivAt_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/hasderivat-polynomial-eval-inv-mul--bdf4c94dd8ae1fa9ec4d76ce.md) | 87 | `result-track:bdf4c94dd8ae1fa9ec4d76ceae4364462cc705ad741d2dd638e70d7ac8331eae` |
| 9 | `theorem` | [differentiable_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/differentiable-polynomial-eval-inv-mul--6306e2d1e945562fd3f178e2.md) | 105 | `result-track:6306e2d1e945562fd3f178e2dd6250497cec8522e76a42d76abccd40b96ab7e5` |
| 10 | `theorem` | [continuous_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/continuous-polynomial-eval-inv-mul--a317011f61ccb65ca5228e7f.md) | 109 | `result-track:a317011f61ccb65ca5228e7fe294e2780ceba8621e003637a448a19942f3123f` |
| 11 | `theorem` | [contDiff_polynomial_eval_inv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/contdiff-polynomial-eval-inv-mul--7c4755ed5ce7681eaaa59afb.md) | 113 | `result-track:7c4755ed5ce7681eaaa59afbcaa9df30fbf9569d41b1e9f37394d801cc2a112b` |
| 12 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/contdiff--afc6a1ecea076d95dc5f0940.md) | 126 | `result-track:afc6a1ecea076d95dc5f09409f2ee5bf54c082b5d1f1065760fe0a769ae828f5` |
| 13 | `def` | [Real.smoothTransition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/real-smoothtransition--29eeaa62b3864b0b41f87cd7.md) | 133 | `declaration-track:29eeaa62b3864b0b41f87cd786dcea0d7e4d82f01be76c7f1ac8d7b27875cb2e` |
| 14 | `theorem` | [pos_denom](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/pos-denom--d9c5a25e1cbb400cd468e5c0.md) | 144 | `result-track:d9c5a25e1cbb400cd468e5c017e2303f0deb56e2e16cc82547d965f058d27d94` |
| 15 | `theorem` | [one_of_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/one-of-one-le--8059450d9ea30bd3c3aed446.md) | 148 | `result-track:8059450d9ea30bd3c3aed446dab9a85e0a72d1be3a13bd5a799a0caa42e5c4df` |
| 16 | `theorem` | [zero_iff_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero-iff-nonpos--0829f0ae9421d3cf36e97229.md) | 152 | `result-track:0829f0ae9421d3cf36e97229834e740f91471f54fd49bbf0b9dbb98b084ef299` |
| 17 | `theorem` | [zero_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero-of-nonpos--11d163154b92e7c4b7b4b2d5.md) | 155 | `result-track:11d163154b92e7c4b7b4b2d5f3c920751538cfbc29a213a36591588ec0b78833` |
| 18 | `theorem` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/zero--4028f370f9c98567e876a9b1.md) | 158 | `result-track:4028f370f9c98567e876a9b1dac230251d57b8309519669ff2e464faef1f3e86` |
| 19 | `theorem` | [one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/one--b0ae12abc7b639d6a595eee9.md) | 162 | `result-track:b0ae12abc7b639d6a595eee9695a5c32e6369906e073042997ebdacfe7d216ed` |
| 20 | `theorem` | [projIcc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/projicc--b3847772b748db8a47196219.md) | 168 | `result-track:b3847772b748db8a4719621997edc85333559205098ce54bda5ddbcef4ce5431` |
| 21 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/le-one--eb72e42e20f861634043d993.md) | 175 | `result-track:eb72e42e20f861634043d993e2ea1c0794c17def7c5215c52829cf89c3b27488` |
| 22 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/nonneg--3b7fba89f39e2eb8679700a7.md) | 178 | `result-track:3b7fba89f39e2eb8679700a7d9f1f77f4b2204085c1e5ed8c586433118966e71` |
| 23 | `theorem` | [lt_one_of_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/lt-one-of-lt-one--982597614877de5558e09cd9.md) | 181 | `result-track:982597614877de5558e09cd941be794dacc0076e646decc5b23c599d2817a6d7` |
| 24 | `theorem` | [pos_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/pos-of-pos--28e3cf37051c02c13ac5768c.md) | 184 | `result-track:28e3cf37051c02c13ac5768ceeeeb1356f2703096980054943091acc34696518` |
| 25 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/contdiff--492375474939c38daabe41ac.md) | 188 | `result-track:492375474939c38daabe41acd0436a2e0f52a9760b28821887c1c84193fcdf41` |
| 26 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/contdiffat--8c8dc1388e2eda1e9d0feff1.md) | 194 | `result-track:8c8dc1388e2eda1e9d0feff1bf1fa1129e3fe2f4717408767977824f4a02c07a` |
| 27 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/continuous--054e08d7f7f3301d2b3bff99.md) | 198 | `result-track:054e08d7f7f3301d2b3bff9920157dc38c388b57c760cad7545ec818c2ab9000` |
| 28 | `theorem` | [continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variant49f2e17083d83718568f96f86bf45d9f04d25e1228bbcf07aee7f0409f238f73.lean/declarations/continuousat--aa4b87c18de13dd003c46f39.md) | 202 | `result-track:aa4b87c18de13dd003c46f39e92648eb1f303bf62b785227795bb678e093b3dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
