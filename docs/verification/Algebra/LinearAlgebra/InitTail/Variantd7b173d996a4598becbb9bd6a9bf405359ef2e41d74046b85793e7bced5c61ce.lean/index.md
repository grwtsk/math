# Verification target: GRWTSK.Algebra.LinearAlgebra.InitTail.Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a57293c160bc39fa76097e5767fb8c5edd8b5e4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a57293c160bc39fa76097e5767fb8c5edd8b5e4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.IsPoly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/select--ad0f83c1eaf700a58719d7df.md) | 58 | `declaration-track:ad0f83c1eaf700a58719d7df9635497828c9554995b5e904055591fb425605c3` |
| 2 | `def` | [selectPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/selectpoly--b702fe76ce3036c17e970b9b.md) | 68 | `declaration-track:b702fe76ce3036c17e970b9bdb441230fbaf512b3c8418a1fa633d123d04ecff` |
| 3 | `theorem` | [coeff_select](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/coeff-select--55de8b1c4954982c1ddc7c7e.md) | 72 | `result-track:55de8b1c4954982c1ddc7c7e794b63f4ec1d573ce8c4f7756fb1e8e71cac6abf` |
| 4 | `instance` | [select_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/select-ispoly--dec20eae77f5cc5c19f592b7.md) | 81 | `declaration-track:dec20eae77f5cc5c19f592b7234fd9bcc813720e3faa97c2d49d267d19a7a45c` |
| 5 | `theorem` | [select_add_select_not](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/select-add-select-not--036ef9e673537a9bd6cfc3c9.md) | 88 | `result-track:036ef9e673537a9bd6cfc3c96213e8a9197051ecc111d74ea9fd41c1558ad147` |
| 6 | `theorem` | [coeff_add_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/coeff-add-of-disjoint--e9cb15f89136100a3db9df23.md) | 114 | `result-track:e9cb15f89136100a3db9df2375570b33cf9c09fc25d2a0ca6a09d97e0643cf31` |
| 7 | `def` | [init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init--7ddd00d50a9dc6121c15282e.md) | 144 | `declaration-track:7ddd00d50a9dc6121c15282e0f302a951248a99f4b1d8da6a807dd42f1b3db4d` |
| 8 | `def` | [tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/tail--462402a72ede4d9038def89a.md) | 151 | `declaration-track:462402a72ede4d9038def89a668e154a1b026b9b34cec2af4915e2061e338d75` |
| 9 | `theorem` | [init_add_tail](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-add-tail--684d38df3d27fe24f8644665.md) | 156 | `result-track:684d38df3d27fe24f8644665b6870f026a194856c0475a8ff8a103a95833d181` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/syntax--42528525b734c9b3eecbb0a9.md) | 165 | `declaration-track:42528525b734c9b3eecbb0a9735db9d962423e70af51de24ad144dab19a88d69` |
| 11 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/elab-rules--9726f5278b508128c4cbc75c.md) | 170 | `declaration-track:9726f5278b508128c4cbc75c8dd9ecd338be5553179bd5a15c5cc2e270205016` |
| 12 | `theorem` | [init_init](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-init--464521ebf87a748b9eafdaf8.md) | 196 | `result-track:464521ebf87a748b9eafdaf803ee64798d2d2dba266bf7119004ca312ca1e216` |
| 13 | `theorem` | [init_add](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-add--4fd48be06281a7e6dd52a3bb.md) | 203 | `result-track:4fd48be06281a7e6dd52a3bb1113b9406ccc522f57264e3f3404410da5d94006` |
| 14 | `theorem` | [init_mul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-mul--0bf3a7d0f1583f1da9ffe22d.md) | 207 | `result-track:0bf3a7d0f1583f1da9ffe22dc0488d1dbfcb39c8604984b9d3be4397aa6ee9b0` |
| 15 | `theorem` | [init_neg](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-neg--4c08b2423761b26d79ac1a65.md) | 211 | `result-track:4c08b2423761b26d79ac1a65b7db790c6e8843bda0f5e27cdc32daf9fe5f4696` |
| 16 | `theorem` | [init_sub](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-sub--1d805ff799ab6fe91e6490b1.md) | 215 | `result-track:1d805ff799ab6fe91e6490b171b2aaa5b002c027995d9b9fe9b69a95ba0a3bc2` |
| 17 | `theorem` | [init_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-nsmul--58d4387b78494ac59b482a23.md) | 219 | `result-track:58d4387b78494ac59b482a23d98ca2ee16277325d6f2258562d63b4f8e4e0760` |
| 18 | `theorem` | [init_zsmul](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-zsmul--908f3906736fc61df46063b2.md) | 223 | `result-track:908f3906736fc61df46063b2379ed6265ab8fd9ff6a547dbeafdc3b3051b32c4` |
| 19 | `theorem` | [init_pow](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-pow--e8106e0c74044f6b33bbad8e.md) | 227 | `result-track:e8106e0c74044f6b33bbad8e6fc2803be54dd0d9f3a4b2504776e734e66c3f59` |
| 20 | `theorem` | [init_isPoly](../../../../../mathematics/Algebra/LinearAlgebra/InitTail/Variantd7b173d996a4598becbb9bd6a9bf405359ef2e41d74046b85793e7bced5c61ce.lean/declarations/init-ispoly--e61e85481bcdee2a624f223e.md) | 236 | `result-track:e61e85481bcdee2a624f223ef6da50d7967f9bd320bfcdcee8415a85e014c585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
