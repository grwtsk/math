# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FrullaniIntegral.Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6949aa03505a1c311f4958a50424faa58050f557",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6949aa03505a1c311f4958a50424faa58050f557`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean.json)

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
| 1 | `lemma` | [intervalIntegrable_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/intervalintegrable-inv-smul--8a3326318e0251484f6b288c.md) | 42 | `result-track:8a3326318e0251484f6b288cece5623793c3ebe2a19fd101f66e6adcc595c42f` |
| 2 | `lemma` | [intervalIntegrable_inv_smul_comp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/intervalintegrable-inv-smul-comp-mul--9e9242ee6a9e49d7c412c30d.md) | 50 | `result-track:9e9242ee6a9e49d7c412c30d28d4e9d23b19556f6788c422fc3f6a54a215ba11` |
| 3 | `lemma` | [integral_comp_mul_inv_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/integral-comp-mul-inv-smul--e221d6b530b898cb23754076.md) | 63 | `result-track:e221d6b530b898cb23754076a87818bd43988cb0dfeb98e3012cfcf6728cbe68` |
| 4 | `lemma` | [norm_integral_inv_smul_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/norm-integral-inv-smul-sub-le--a78257afa68b1d82941b465f.md) | 75 | `result-track:a78257afa68b1d82941b465f42dce80c0181d994032088755ba36362b4c45f16` |
| 5 | `lemma` | [tendsto_integral_inv_smul_of_tendsto_uniform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/tendsto-integral-inv-smul-of-tendsto-uniform--1042a9f2f37d61af196bee40.md) | 109 | `result-track:1042a9f2f37d61af196bee40de8c8d72f0c34ef00f9cecaa12229d20779f7a71` |
| 6 | `lemma` | [tendsto_integral_inv_smul_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/tendsto-integral-inv-smul-nhdswithin--5d459815500a5812432b9226.md) | 130 | `result-track:5d459815500a5812432b9226584b85e4f5cfeae85aff88d2dcb638a38f242b7a` |
| 7 | `lemma` | [tendsto_integral_inv_smul_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/tendsto-integral-inv-smul-attop--59072ec137aa968f8061d2e0.md) | 158 | `result-track:59072ec137aa968f8061d2e0ca6a45b117155388f58d460a42ef5b92864190fe` |
| 8 | `theorem` | [tendsto_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/tendsto-intervalintegral--389cb1eb46df3dd05bb4199b.md) | 187 | `result-track:389cb1eb46df3dd05bb4199beb389df3b4e4f5e41ce1ff0e8db99186676d518a` |
| 9 | `theorem` | [integral_Ioi_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantfc2d410f0602067a0eecdc37bd4f6c3a2572149b1969ddaf61b4fdbeb5aace6f.lean/declarations/integral-ioi-eq--3309d15a8fe5633191263ebc.md) | 222 | `result-track:3309d15a8fe5633191263ebc6371664b4d85fd046e684b2059cbcdae8137a64c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
