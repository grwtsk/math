# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Zorn.Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e88af4c76edce5a22a6d587dbc37ea0b88cee1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e88af4c76edce5a22a6d587dbc37ea0b88cee1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Chain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximal_of_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/exists-maximal-of-chains-bounded--28243d7d17c55e9c35c2ad17.md) | 84 | `result-track:28243d7d17c55e9c35c2ad174398f28c5dcf3fc4589af6fb18219f326aa77bc0` |
| 2 | `theorem` | [exists_maximal_of_nonempty_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/exists-maximal-of-nonempty-chains-bounded--a7f6ee7a64b202d42493b67f.md) | 99 | `result-track:a7f6ee7a64b202d42493b67fca83dc960b686d8651649fd379837b90e2ab4b3a` |
| 3 | `theorem` | [zorn_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-preorder--497ca08a761192558b196bd8.md) | 113 | `result-track:497ca08a761192558b196bd8c86429b4bda98ac8c55e32b2c3b2cb8253891e18` |
| 4 | `theorem` | [zorn_nonempty_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-nonempty-preorder--50ad82c0bdff0f10748600ac.md) | 118 | `result-track:50ad82c0bdff0f10748600ac31fbc13a6c911708eefe35060431c3a771d93ce9` |
| 5 | `theorem` | [zorn_preorder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-preorder--b52a944f61ea421fa4c2e1d2.md) | 123 | `result-track:b52a944f61ea421fa4c2e1d290e4af0f3bcbd42b69c85c4cdecb75ba835e316d` |
| 6 | `theorem` | [zorn_nonempty_preorder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-nonempty-preorder--f55ddcc900178a15518a3849.md) | 137 | `result-track:f55ddcc900178a15518a3849bf025d138469b40166c74cd44c2d93aa5d8794fc` |
| 7 | `theorem` | [zorn_nonempty_Ici₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-nonempty-ici--e9aafbd236390410accc79b8.md) | 153 | `result-track:e9aafbd236390410accc79b8fe329c88d0a524ff3874b15a27e419ffe410e52f` |
| 8 | `theorem` | [zorn_partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-partialorder--825e6a4a28b7a085a2504357.md) | 166 | `result-track:825e6a4a28b7a085a2504357989129af1038d0285d30e35bba712382b8ca8070` |
| 9 | `theorem` | [zorn_nonempty_partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-nonempty-partialorder--e49001fa2a6be38a02532dee.md) | 172 | `result-track:e49001fa2a6be38a02532dee1b949937b7c6cea17476afc5acc177bc2c7d3f08` |
| 10 | `theorem` | [zorn_partialOrder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-partialorder--d6fac5fcf7c669ca48192d3f.md) | 178 | `result-track:d6fac5fcf7c669ca48192d3fc52235503ad189b19016146bff7714d51e9ff3ea` |
| 11 | `theorem` | [zorn_nonempty_partialOrder₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-nonempty-partialorder--db51dac1ed555857de68094c.md) | 185 | `result-track:db51dac1ed555857de68094c57ffe612b79f479be122cad1918727e43875071a` |
| 12 | `theorem` | [zorn_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-subset--bb4c6a56ab3126724342c3a3.md) | 194 | `result-track:bb4c6a56ab3126724342c3a33bd5776b7ca8a1a530286e9d75b7b7ebe436205e` |
| 13 | `theorem` | [zorn_subset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-subset-nonempty--0c774d674af47e933e6aed9a.md) | 200 | `result-track:0c774d674af47e933e6aed9a67dbe82f123e57bd9c13756b06407991b622380e` |
| 14 | `theorem` | [zorn_superset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-superset--974c89bb1bed894dbaba834d.md) | 206 | `result-track:974c89bb1bed894dbaba834df93a58e8d0cb4779476ac390b9848fb760221ade` |
| 15 | `theorem` | [zorn_superset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/zorn-superset-nonempty--47049c3205c25a884e4676e4.md) | 212 | `result-track:47049c3205c25a884e4676e41dab0d28bc7e039ff49ca39b5a1654b3f31c68a3` |
| 16 | `theorem` | [IsChain.exists_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant3228ab23060bf7933082faa7d5734bcf59bccfef7c8d2f8aaa21c54d9e2006ec.lean/declarations/ischain-exists-maxchain--70811cb7c4b77bb8a9ec61c3.md) | 220 | `result-track:70811cb7c4b77bb8a9ec61c38294d34340a6be8ffb9ba803929dd089b7a03d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
