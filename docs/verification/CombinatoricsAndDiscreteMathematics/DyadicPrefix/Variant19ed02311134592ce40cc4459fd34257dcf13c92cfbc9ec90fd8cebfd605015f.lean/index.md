# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DyadicPrefix.Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c22ec58542679bf1f2fe993ea664b9e750813b59",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c22ec58542679bf1f2fe993ea664b9e750813b59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicDepth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/dyadicdepth--f709c7a277ec292b5c7dc8bf.md) | 43 | `declaration-track:f709c7a277ec292b5c7dc8bf3c41f922291dff269b06514c816d1855b7d984fe` |
| 2 | `structure` | [DyadicInterval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/dyadicinterval--e1061a3924ca0ce53a0b5cfb.md) | 47 | `declaration-track:e1061a3924ca0ce53a0b5cfb6cfdf53c252a8f58eddbb1104fe0306391ee4d67` |
| 3 | `def` | [DyadicInterval.carrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/dyadicinterval-carrier--cb341b0578c24d094a1ceefb.md) | 58 | `declaration-track:cb341b0578c24d094a1ceefbde70ed4247571f43e37146d388c16d0257540ae5` |
| 4 | `theorem` | [DyadicInterval.mem_window](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/dyadicinterval-mem-window--b0a23ff2b7ae60f3297d5e2f.md) | 64 | `result-track:b0a23ff2b7ae60f3297d5e2f3c49ac28a83263de9a5c5624588db74ed530aeaf` |
| 5 | `structure` | [DyadicPrefixCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/dyadicprefixcode--b87eb10dfcd46aa735487ca1.md) | 75 | `declaration-track:b87eb10dfcd46aa735487ca16cceaa12f69b5572149d03f6f5a5e3a563842664` |
| 6 | `theorem` | [incidence_eq_true_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/incidence-eq-true-iff--ce723421434a00fd26b836c5.md) | 97 | `result-track:ce723421434a00fd26b836c5a7b44c65d1bc612eb389c0570be3f40be2930d36` |
| 7 | `def` | [HasDyadicPrefixCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/hasdyadicprefixcode--7ee22f466071103e0a73c8f8.md) | 114 | `declaration-track:7ee22f466071103e0a73c8f8c289fa2e702013ba4f7a3dc2b7a65d4566b84b2d` |
| 8 | `def` | [blockSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/blocksum--8764eff7cdc31785efc3f905.md) | 119 | `declaration-track:8764eff7cdc31785efc3f9058599da5914db18af1a06448d5f01e821d0e25cb6` |
| 9 | `theorem` | [sum_prefix_eq_sum_blockSums](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/sum-prefix-eq-sum-blocksums--7a6905d2f8e5f11a371b7f9e.md) | 127 | `result-track:7a6905d2f8e5f11a371b7f9e50825fe09ed5603a79ed5df56e3c93774a0baccf` |
| 10 | `theorem` | [norm_prefixSum_le_depth_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/declarations/norm-prefixsum-le-depth-mul--1ea24e0df89a46b7a7b88a81.md) | 142 | `result-track:1ea24e0df89a46b7a7b88a818e01c38e3b7d5deb8663d592903baed8003414ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
