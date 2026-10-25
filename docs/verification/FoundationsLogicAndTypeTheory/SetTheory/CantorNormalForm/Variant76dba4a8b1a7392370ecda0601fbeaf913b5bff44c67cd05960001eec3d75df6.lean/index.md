# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CantorNormalForm.Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a26b59a863f7bb7e48207db5691f0b018bf072",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a26b59a863f7bb7e48207db5691f0b018bf072`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Exponential` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CNFRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnfrec--66a58f424e62427b0a688f51.md) | 52 | `declaration-track:66a58f424e62427b0a688f5150624e06310576580e4c8c2e52af353d0184920f` |
| 2 | `theorem` | [CNFRec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnfrec-zero--4aaf4fb44db6a169e24198ab.md) | 63 | `result-track:4aaf4fb44db6a169e24198abf10bd68e29c21933048a229159372196b1cab2bc` |
| 3 | `theorem` | [CNFRec_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnfrec-pos--cfd6ab5b66e5b06d32ece06f.md) | 70 | `result-track:cfd6ab5b66e5b06d32ece06f01d395f9eb1eee95b2c58215a3ae944059901ca9` |
| 4 | `def` | [CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf--b92710dd1f89800e1606849e.md) | 83 | `declaration-track:b92710dd1f89800e1606849e9e82f19800a9858724f772ee49ad969ab539113f` |
| 5 | `theorem` | [CNF_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-zero--c8125b5cd8df4370ce035352.md) | 89 | `result-track:c8125b5cd8df4370ce03535298853a96ffa6a9e3518c796f7e1886bc2d273a35` |
| 6 | `theorem` | [CNF_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-ne-zero--9264dae2296d61261ddf46ee.md) | 95 | `result-track:9264dae2296d61261ddf46ee0a3a3df6b8bf8d9fd41e2e696693580d1ced3770` |
| 7 | `theorem` | [zero_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/zero-cnf--9674019a459a9b310f3090b0.md) | 101 | `result-track:9674019a459a9b310f3090b03e1660e54f1908c91d5d98f10d9c28fd664a4c59` |
| 8 | `theorem` | [one_CNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/one-cnf--afb0b04b710780cd568c2252.md) | 105 | `result-track:afb0b04b710780cd568c2252adfa1b2fb85ac6703f1df8a8f5061592a268ee3b` |
| 9 | `theorem` | [CNF_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-of-le-one--298bd198c7e35d87d3c6e1c2.md) | 109 | `result-track:298bd198c7e35d87d3c6e1c2905769f859425f35245d3ae311c925a4673bfc46` |
| 10 | `theorem` | [CNF_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-of-lt--2a63dd3c6cf5a8afa6cddc7f.md) | 116 | `result-track:2a63dd3c6cf5a8afa6cddc7fbd8a09e25b9a1686c3f559a172a72e56e625f66e` |
| 11 | `theorem` | [CNF_foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-foldr--60ab7229f249f056bd710b5b.md) | 122 | `result-track:60ab7229f249f056bd710b5b11ea4dac173102a6ab1204b8b619af840adcd294` |
| 12 | `theorem` | [CNF_fst_le_log](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-fst-le-log--8f4bc5deb9a5f58f6ab05d26.md) | 129 | `result-track:8f4bc5deb9a5f58f6ab05d263fef0943bf849e7d31e02869c46d0177465ec01d` |
| 13 | `theorem` | [CNF_fst_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-fst-le--30e12b6b37e29ed71a347847.md) | 142 | `result-track:30e12b6b37e29ed71a347847c9c7e09a4d323fb43be8daa8b5992512b743bc6b` |
| 14 | `theorem` | [CNF_lt_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-lt-snd--e8faf16f485bfdf000679c04.md) | 148 | `result-track:e8faf16f485bfdf000679c04c5d7920dc2a30c8b41cec6276bf376f5beafbd78` |
| 15 | `theorem` | [CNF_snd_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-snd-lt--9c30202d325b1c05b0b7fa16.md) | 158 | `result-track:9c30202d325b1c05b0b7fa1644c6c695d253d035e7b9c04a6f83ac215c9f76e6` |
| 16 | `theorem` | [CNF_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/declarations/cnf-sorted--8734015a9cf8487da417cb54.md) | 171 | `result-track:8734015a9cf8487da417cb549f2c8160be2cfd45ef182e19204b5123c7f8efdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
