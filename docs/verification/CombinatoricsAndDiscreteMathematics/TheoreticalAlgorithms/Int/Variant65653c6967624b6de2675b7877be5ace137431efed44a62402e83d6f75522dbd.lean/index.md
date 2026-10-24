# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b6de97827af275ee8d022d80cfb9aad64351338",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b6de97827af275ee8d022d80cfb9aad64351338`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean.json)

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
| 1 | `def` | [testBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/testbit--cb7e3780cd62508c182c8fed.md) | 18 | `declaration-track:cb7e3780cd62508c182c8fed8382e731465d8bdcb04a8cd19fb30622de0f9d99` |
| 2 | `def` | [ofBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/ofbits--ccb3ebfa789d78fab9ef26f0.md) | 28 | `declaration-track:ccb3ebfa789d78fab9ef26f018dd0025d14efbdddf380cbd2742b3751e4c70b3` |
| 3 | `theorem` | [ofBits_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/ofbits-zero--de3a0cf21709cefdef22b482.md) | 34 | `result-track:de3a0cf21709cefdef22b482ade25cf45a346c99c953188b28f2a86fed17bc49` |
| 4 | `theorem` | [testBit_ofBits_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/testbit-ofbits-lt--e9a76b0822b35ea6f34c8ada.md) | 37 | `result-track:e9a76b0822b35ea6f34c8ada13b2708f676cb6986a12e807d134c5ad130ec953` |
| 5 | `theorem` | [testBit_ofBits_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/testbit-ofbits-ge--b964b291d3eb2c1c91b0212c.md) | 45 | `result-track:b964b291d3eb2c1c91b0212ccfb5b8f0e188d6143c1100f8b65f735cb022927a` |
| 6 | `theorem` | [testBit_ofBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd.lean/declarations/testbit-ofbits--826c82c5292b8a5e5327b847.md) | 56 | `result-track:826c82c5292b8a5e5327b847f0c0718a58981d37befba133426c712bba63f148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
