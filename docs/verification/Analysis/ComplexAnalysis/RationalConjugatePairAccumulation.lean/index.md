# Verification target: GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea84f1e7925495337cd58bb9b7456489d9a5012f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea84f1e7925495337cd58bb9b7456489d9a5012f`.

Source path: `GRWTSK/Analysis/Complex/RationalConjugatePairAccumulation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalConjugatePairAccumulation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentAccumulation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentMellinKernel`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinKernel.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logPower_conj](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/logpower-conj--8095ef119f38777248d5de0f.md) | 40 | `result-track:8095ef119f38777248d5de0f680acf925c0b4f1c8922698e45283f0e7985d47d` |
| 2 | `theorem` | [tentKernel_conj_of_im_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/tentkernel-conj-of-im-ne-zero--ebfb5b3a95f0cb2650b977af.md) | 49 | `result-track:ebfb5b3a95f0cb2650b977afe04bc65ce76ae8741cacd10d42555db6314ab9e1` |
| 3 | `def` | [pairValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/pairvalue--36ba63d905ef8019ed96cb2c.md) | 78 | `declaration-track:36ba63d905ef8019ed96cb2ca453269ac9747c0e27957db2f04f4ce767934845` |
| 4 | `def` | [pairError](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/pairerror--81c5417f561e4ab1bd06971f.md) | 83 | `declaration-track:81c5417f561e4ab1bd06971f5b73d9eeb9854a20113f643ed97a557366972516` |
| 5 | `theorem` | [embed_pairValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/embed-pairvalue--0431c512e13b48b4f34e707e.md) | 86 | `result-track:0431c512e13b48b4f34e707e80482bfcb62307fa97de942611ea5659c1dc8813` |
| 6 | `theorem` | [pairValue_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/pairvalue-sound--e06b8c04479fc4aeeda0a295.md) | 93 | `result-track:e06b8c04479fc4aeeda0a29533afa97baf45d42f163eae7c005c37871f21f622` |
| 7 | `def` | [sumValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/sumvalue--6b1ea9c1734b7a8cb4b6a647.md) | 133 | `declaration-track:6b1ea9c1734b7a8cb4b6a647a61b3322d1fed45dd56b7c3460784c15c4205347` |
| 8 | `def` | [sumError](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/sumerror--e90552742598f4a233655b19.md) | 137 | `declaration-track:e90552742598f4a233655b19b45e17e177d10418332f4b9893cd54a21536ecf4` |
| 9 | `def` | [compute](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/compute--3179d0223476081b5dfbd6da.md) | 141 | `declaration-track:3179d0223476081b5dfbd6da89b06c593ce773a89453065b67cd398f35cf3927` |
| 10 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/evaluate--eea310311423876d8bce4aaa.md) | 147 | `declaration-track:eea310311423876d8bce4aaad25b9d6d5d57808345c51f95a2e0362190e8a0a5` |
| 11 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/verify--bd501d4509c3b161ac9190fd.md) | 155 | `declaration-track:bd501d4509c3b161ac9190fde6f001bfb53623c737249220f231beb7952e89f4` |
| 12 | `theorem` | [embed_sumValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/embed-sumvalue--dadb7f4a84972c8418cf411b.md) | 159 | `result-track:dadb7f4a84972c8418cf411b41c9dcdbd9900b936d3a7fb92ad1403253f79495` |
| 13 | `theorem` | [sum_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/sum-sound--e0f88d9fce5512f852cd2a8e.md) | 167 | `result-track:e0f88d9fce5512f852cd2a8e1d202719dde0345b4b18c948367e4566a00645d3` |
| 14 | `theorem` | [compute_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/compute-sound--6fc2b958957941ff9cc13911.md) | 196 | `result-track:6fc2b958957941ff9cc1391127c3ef22a7e2a130fe5d912d235438e96264a108` |
| 15 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/verify-iff--381c7820d1ff942bb31cd049.md) | 213 | `result-track:381c7820d1ff942bb31cd04908a77e4a341c67f0dad8d8de6d8314dc59a09203` |
| 16 | `theorem` | [verify_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/declarations/verify-sound--d4983acee4a7830add3a8247.md) | 224 | `result-track:d4983acee4a7830add3a8247d7f1c3967ddb39c0b18b1f470c1d7e26dddbe9ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
