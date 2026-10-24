# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8aae6b51b2e9bc0ccdb5939738eff194ab210c7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8aae6b51b2e9bc0ccdb5939738eff194ab210c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/testbit--84739157b9a66f9913baedd6.md) | 26 | `declaration-track:84739157b9a66f9913baedd6712581008e3fc5f0f7664571158539e184e37e1d` |
| 2 | `def` | [ofBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/ofbits--b3d87f168df01edb96caab4c.md) | 36 | `declaration-track:b3d87f168df01edb96caab4ccbeec630033a4eae615c480b247cffb6c1472620` |
| 3 | `theorem` | [ofBits_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/ofbits-zero--5e9a79a38035970592ed4615.md) | 42 | `result-track:5e9a79a38035970592ed4615c7f38da6257eade9701ddfbd5e3b18f0caebf5c1` |
| 4 | `theorem` | [testBit_ofBits_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/testbit-ofbits-lt--9946eac7e4c58cd1afee6e39.md) | 45 | `result-track:9946eac7e4c58cd1afee6e39a24f3473e00282a472f37521f65acc6535d7c74c` |
| 5 | `theorem` | [testBit_ofBits_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/testbit-ofbits-ge--90365ed45cd24aecab22d579.md) | 53 | `result-track:90365ed45cd24aecab22d5798217ce6e034e644b0a69bb5daed5b8059931b097` |
| 6 | `theorem` | [testBit_ofBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant91e21369d2312cbbbae9c0e4aa3466e94ae8f7faa15ff0e7916b44567e92749f.lean/declarations/testbit-ofbits--0dbd63484b59d609249e0213.md) | 64 | `result-track:0dbd63484b59d609249e0213b7684e7e4b053874767139ec01f8b9d33c48e7d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
