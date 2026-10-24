# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Poisson.Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c240d8e66fa6dfc829f191f8c88d6afb322e506a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c240d8e66fa6dfc829f191f8c88d6afb322e506a`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonpmfreal--5e05075ad4dacb66d7bb879b.md) | 34 | `declaration-track:5e05075ad4dacb66d7bb879b84ecbce472237666826dbb46d8fcbceba3922b2f` |
| 2 | `lemma` | [poissonPMFRealSum](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonpmfrealsum--3b5679d600dc176f3195535d.md) | 36 | `result-track:3b5679d600dc176f3195535de09ef44ef8f94b46eb9ab7221e11c7fd2a772c80` |
| 3 | `lemma` | [poissonPMFReal_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonpmfreal-pos--95985f4ca1fafcbda08e7a4a.md) | 49 | `result-track:95985f4ca1fafcbda08e7a4aa9c03b2f1963fc95a2573f910a095f33ef864f22` |
| 4 | `lemma` | [poissonPMFReal_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonpmfreal-nonneg--4cde8a0873f46ebfe9a048b0.md) | 53 | `result-track:4cde8a0873f46ebfe9a048b07d3b07a7574719c890d4032932821de2508f5d4c` |
| 5 | `def` | [poissonPMF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonpmf--3550d264bf602813bfae64f9.md) | 59 | `declaration-track:3550d264bf602813bfae64f988ae8fb80de1c291c5646d06436de9be8870dcbf` |
| 6 | `lemma` | [measurable_poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/measurable-poissonpmfreal--a54c4833d1e8710c3d543d72.md) | 67 | `result-track:a54c4833d1e8710c3d543d7220cecff5982b560a91b70ed9e8cc74e3f5cf2835` |
| 7 | `lemma` | [stronglyMeasurable_poissonPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/stronglymeasurable-poissonpmfreal--4603543b983b6e46cc12c0a7.md) | 70 | `result-track:4603543b983b6e46cc12c0a7d022f500fbf66d8c94deb9679151864ded3d1b29` |
| 8 | `def` | [poissonMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/poissonmeasure--a6e0df45bc1c619041e50603.md) | 77 | `declaration-track:a6e0df45bc1c619041e506031af2a86bfd1a520ff0501ce535d2a88f395b6cc8` |
| 9 | `instance` | [isProbabilityMeasurePoisson](../../../../mathematics/ProbabilityAndMathematicalStatistics/Poisson/Variant3434711e179c76fd757c81ffc8acf06667c55db901ad7480429ef7e2a7eca8fb.lean/declarations/isprobabilitymeasurepoisson--a3bb23516b586ec0d359e8f4.md) | 79 | `declaration-track:a3bb23516b586ec0d359e8f4724ba3a7de4a75e705ad37fd849cd5263e277b35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
