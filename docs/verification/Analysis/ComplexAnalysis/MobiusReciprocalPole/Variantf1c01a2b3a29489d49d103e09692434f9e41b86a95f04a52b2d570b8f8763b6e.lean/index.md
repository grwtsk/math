# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPole.Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e210f0a7b4efd9730981b3b1533d6b3a36568715",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e210f0a7b4efd9730981b3b1533d6b3a36568715`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/zetapolefactor--b3e6d0cd45f5dec61ac866b1.md) | 26 | `declaration-track:b3e6d0cd45f5dec61ac866b1578155f508d8efc4a7cc4e268389f5f51b4f2bd0` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/zetapolefactor-zero--58c29537f4bb38c825a9a1d6.md) | 28 | `result-track:58c29537f4bb38c825a9a1d6d3f399c7cce0314dfccb59e249112b314ba16548` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/zetapolefactor-off--e901a1725b2755a4cecb5a34.md) | 31 | `result-track:e901a1725b2755a4cecb5a34a7229e402bcbc37ca9972e6113f78f1d4baea1f3` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/zetapolefactor-limit--8e59b741212b2231e3f8f7ce.md) | 35 | `result-track:8e59b741212b2231e3f8f7ceb738f0d45738052264a8cf0d9a40a9fce3224a4e` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/zetapolefactor-analyticat-zero--c8cf1725c4beb583995aebb5.md) | 50 | `result-track:c8cf1725c4beb583995aebb5417342133bbbc1c151fd2c83db36f2af7bda68ee` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta--9d7cc5e06e400e876120c266.md) | 63 | `declaration-track:9d7cc5e06e400e876120c2662839b98090675a59fb2abca965e537790a9963cf` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-zero--b9e3991b369d004191257575.md) | 65 | `result-track:b9e3991b369d0041912575759e0d3fd4ee63694c9df785f7b4d6009744a3236a` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-off--328c55369006099778babe35.md) | 68 | `result-track:328c55369006099778babe3523ec4e35da79f3412891fc06d6736c971bb544d5` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-eq-div-factor--3db19c6310d1c9fb81c4051d.md) | 72 | `result-track:3db19c6310d1c9fb81c4051df13ad83b2f42fb5caa3bb83abb9006dad0c07029` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-analyticat-zero--512c4fb8aa14bce0bc1288d0.md) | 79 | `result-track:512c4fb8aa14bce0bc1288d058c1bebb9ed95d23355a04379b7457728ec20260` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-hasderivat-zero--9641d00e9e7b222d1de8db59.md) | 85 | `result-track:9641d00e9e7b222d1de8db59ea02a1beb7423a02bb5d0906b3a84241f6037d6d` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/reciprocalzeta-eventually-ne-zero--aebcddb507473ebcbe03915b.md) | 93 | `result-track:aebcddb507473ebcbe03915ba17405f45a331517d5f435bd3b49f25bcdfdba3c` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand--cd16a6603f8bd1d7704adef1.md) | 104 | `declaration-track:cd16a6603f8bd1d7704adef106c7ebbac13173665d766469a0ddcfbe9397daf0` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand-factor--eeee770898eefff69c51e7ae.md) | 107 | `result-track:eeee770898eefff69c51e7aee3050930136de25362da1e8f6342216826b00648` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/perronnumerator-analyticat-zero--2e8741c927d963d590904ddf.md) | 115 | `result-track:2e8741c927d963d590904ddf8b8a1a7cb91d8af5821745898ad5f956c111decc` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand-meromorphicat-zero--634023db6532c372d9459dad.md) | 124 | `result-track:634023db6532c372d9459dad7983229c12f66285aae9969b0b2f531da06bda84` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand-order-zero--8945a7876a7824d6e9b96a81.md) | 131 | `result-track:8945a7876a7824d6e9b96a8120df9221887596190842ad2ea6b916a81d2897d4` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand-residue-limit--5b34dacf2fd4907e9aa5c904.md) | 141 | `result-track:5b34dacf2fd4907e9aa5c904d33a41813a7f28f2df9dec1bb0e9bc66a859442b` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/declarations/smoothedperronintegrand-residue-one--6aa2373d9463a9e2d92663c5.md) | 152 | `result-track:6aa2373d9463a9e2d92663c5e53887d0b6780490a39e74e2ddea2960b3cae755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
