# Verification target: GRWTSK.Analysis.ChebyshevGauss.Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4c069a3b0e7d2b62d71963d65f56b38470cf3cf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/index.md) · [Full source](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4c069a3b0e7d2b62d71963d65f56b38470cf3cf`.

Source path: `GRWTSK/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Polynomial` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exp_sub_one_ne_zero](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/exp-sub-one-ne-zero--85e3ae563dd2b61dd1405d71.md) | 39 | `result-track:85e3ae563dd2b61dd1405d71bc5b1ce24b1163b41350779a202f4f35f1c0896a` |
| 2 | `theorem` | [sum_exp](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sum-exp--a6f355fdfe11084fdca8459f.md) | 48 | `result-track:a6f355fdfe11084fdca8459fd8c942c24e5098c910d7912f3af20a6f27efc260` |
| 3 | `def` | [sumZeroes](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sumzeroes--0ca21dd2bc46ea7ee2d1b98c.md) | 68 | `declaration-track:0ca21dd2bc46ea7ee2d1b98c4a2f19ca23ef80b7946b609fbbb359d67b0d36d4` |
| 4 | `theorem` | [sumZeroes_sum](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sumzeroes-sum--45b949d0e988472164a4d9a0.md) | 72 | `result-track:45b949d0e988472164a4d9a0856ae0d94bddaf400cb0e413cf2491e459b41240` |
| 5 | `theorem` | [sumZeroes_smul](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sumzeroes-smul--4c535ab8a46e2fe6847c959c.md) | 78 | `result-track:4c535ab8a46e2fe6847c959c964de8f1cf09254e8e7c41204ed1c77e3f29ee72` |
| 6 | `theorem` | [sumZeroes_T_zero](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sumzeroes-t-zero--4080ccafc6a266ccbe879a82.md) | 82 | `result-track:4080ccafc6a266ccbe879a8238f48a11e1eaaccc33db871e1687c461af0ee1ca` |
| 7 | `theorem` | [sumZeroes_T_of_not_dvd](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/sumzeroes-t-of-not-dvd--d2b9983e94780d644fb720e7.md) | 85 | `result-track:d2b9983e94780d644fb720e7efbf2d6382f07fc80150b38adc510127f7e4d43f` |
| 8 | `theorem` | [integral_eq_sumZeroes](../../../../mathematics/Analysis/ChebyshevGauss/Variant05df0ad66bd4201f3b7bfe89c2e9c6dfb483a4929a887f302f06c7f4341363e8.lean/declarations/integral-eq-sumzeroes--4c48b1298f87aca2370748a5.md) | 109 | `result-track:4c48b1298f87aca2370748a5d873cb058df795cf584be200f926843338fb61f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
