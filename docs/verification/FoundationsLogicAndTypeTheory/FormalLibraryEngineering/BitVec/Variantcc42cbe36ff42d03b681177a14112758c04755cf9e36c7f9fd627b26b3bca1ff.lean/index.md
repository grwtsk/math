# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dcaf81d7ab991c096afb5f1bb0c26821879ead0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dcaf81d7ab991c096afb5f1bb0c26821879ead0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.BitVec.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Literal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/literal--5fae27c62c8420d1f5a21945.md) | 26 | `declaration-track:5fae27c62c8420d1f5a219452dabc87265dcda2bcd8ea7aa9552c6bf48bb32bb` |
| 2 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/fromexpr--eceedb2859d6e0c5070e68a5.md) | 37 | `declaration-track:eceedb2859d6e0c5070e68a5deb5eb5e7725790a3c0f5f64b2d7b1ff504c5364` |
| 3 | `def` | [toExpr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/toexpr--de829f2f9076b82d3bc604d3.md) | 41 | `declaration-track:de829f2f9076b82d3bc604d3db8f8896fda3613cc59422c8f10612d3b757801b` |
| 4 | `def` | [reduceUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceunary--a280cecedbbf47c4b8d507bd.md) | 50 | `declaration-track:a280cecedbbf47c4b8d507bd5f1cddd153b4b3a51b927792aed28727026e33f4` |
| 5 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reducebin--49df62bdf0d4a63e0f863c48.md) | 59 | `declaration-track:49df62bdf0d4a63e0f863c48d2a6562bdbaf37fddca32c87a7923d46ad9eb2d8` |
| 6 | `def` | [reduceExtend](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceextend--e4f737be2841165bc2e40ab7.md) | 70 | `declaration-track:e4f737be2841165bc2e40ab7723a2bb3f63f0cf8b91337c7cfea36e0e5562159` |
| 7 | `def` | [reduceGetBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reducegetbit--8ebb68dced9561e53266ecf6.md) | 80 | `declaration-track:8ebb68dced9561e53266ecf626d0593dee4b1394b64436fc371ef164258233b9` |
| 8 | `def` | [reduceShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceshift--0b2bed3f454a548e673e5805.md) | 91 | `declaration-track:0b2bed3f454a548e673e5805952016f2657e53857a0735d09c2b3f307aca10b8` |
| 9 | `def` | [reduceShiftWithBitVecLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceshiftwithbitveclit--5d169c571ae70fd4f41665ec.md) | 102 | `declaration-track:5d169c571ae70fd4f41665ecfebb74b88cd2ddcdac42e3db659ea0755f059bc5` |
| 10 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reducebinpred--02618a908f194d6b04abcdc9.md) | 111 | `declaration-track:02618a908f194d6b04abcdc911c46f98352a24148a44ba994d97af01c7e51901` |
| 11 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceboolpred--7c377d4325264b20b14755ef.md) | 122 | `declaration-track:7c377d4325264b20b14755efdc263bf36b8c5939f58dd6f25a4b85fb9450d66c` |
| 12 | `def` | [reduceShiftShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/declarations/reduceshiftshift--05b10c4b6adec23465608df3.md) | 385 | `declaration-track:05b10c4b6adec23465608df3fac238148783c75a1cc4076d2241a21b6e288afc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
