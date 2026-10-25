# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Int.Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "827b15a6cc596d6daf8a57c4cc3d4c670bdc87fc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `827b15a6cc596d6daf8a57c4cc3d4c670bdc87fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.SafeExponentiation` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/fromexpr--3a195227365c366b002ce87c.md) | 23 | `declaration-track:3a195227365c366b002ce87c9225408329542ae5071b00dbbd3e4683f9b43b2b` |
| 2 | `def` | [reduceUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reduceunary--b2eb1ce0168cc2c17557d035.md) | 31 | `declaration-track:b2eb1ce0168cc2c17557d03574756f3d4fff1c8da07c2326447cb3cdd3a3f476` |
| 3 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reducebin--1580b3dde196582b7422d3b4.md) | 36 | `declaration-track:1580b3dde196582b7422d3b4cd0909984374edf8f55493e9faf8fb414a7c7923` |
| 4 | `def` | [reduceBinIntNatOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reducebinintnatop--f4274f683011ea0391220d06.md) | 42 | `declaration-track:f4274f683011ea0391220d062778be9cdb96a2655d2d48b7ad7719438366a477` |
| 5 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reducebinpred--ceffcca55f8d7a2bd7181ca6.md) | 48 | `declaration-track:ceffcca55f8d7a2bd7181ca68367198221e92162646d9027fc22a6fab093ab1a` |
| 6 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reduceboolpred--51910cfc6858b45adda8fa93.md) | 54 | `declaration-track:51910cfc6858b45adda8fa93ef8dcb36fdba8b66e6eb58dccc64213bd312b99b` |
| 7 | `def` | [reduceNatCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reducenatcore--ea35c465b714c4a9692b044b.md) | 108 | `declaration-track:ea35c465b714c4a9692b044b413da209c7132dbb4da512ae28a26ce7c92ead2b` |
| 8 | `def` | [reduceNatCastCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant36b3cf9c520dc1f0afc75b67c1d7179b849ad6c4cbe8bcd11ddf46bbf6b29e1f.lean/declarations/reducenatcastcore--437e2f8759e5f7ef2391d414.md) | 136 | `declaration-track:437e2f8759e5f7ef2391d414b986377453f10ed2db6aa7ede8b14ca1c9f2dc95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
