# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrimeCert.Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a8d8392e22135106c735f9d04afee318661159",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a8d8392e22135106c735f9d04afee318661159`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeDict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/primedict--ab8c65fb4b3fc148b7b0d673.md) | 22 | `declaration-track:ab8c65fb4b3fc148b7b0d673b7b572d31efab24aa3a9c3b6833ef931b6421587` |
| 2 | `def` | [PrimeDict.getM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/primedict-getm--26602ad7d78251ec4720f7ae.md) | 24 | `declaration-track:26602ad7d78251ec4720f7ae4e1d5944e7fb2036303b341665ceffa4c089f152` |
| 3 | `abbrev` | [PrimeCertMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/primecertmethod--5a82dc4d2592fc5803748a93.md) | 29 | `declaration-track:5a82dc4d2592fc5803748a93de098f75e0ed0c7836e97b299d5a5aed0d31eb84` |
| 4 | `structure` | [PrimeCertExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/primecertext--9772b428dbd70c5ad0e0959f.md) | 33 | `declaration-track:9772b428dbd70c5ad0e0959faa63ee97560c438cf9afcfe2045467c398e7df73` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/initialize--8c07ac192fc3b2cd3dcc5fa0.md) | 40 | `declaration-track:8c07ac192fc3b2cd3dcc5fa0d8b110e2a19f0a61db01fb12d824e0a0a19c9687` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/syntax--f967943ae8371270cd90cc60.md) | 53 | `declaration-track:f967943ae8371270cd90cc60951e15bbe01cd87b5c79d0a0158c85e5daadfcbe` |
| 7 | `def` | [mkPrimeCertExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/mkprimecertext--5483f35db3ec9d002f1c4726.md) | 56 | `declaration-track:5483f35db3ec9d002f1c4726c26fad11d2855841f7eeac4d48283185b86b76dd` |
| 8 | `def` | [PrimeCertExt.mkMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/primecertext-mkmethod--473abf153d8e9c042f35da34.md) | 61 | `declaration-track:473abf153d8e9c042f35da34f1e3b2945f46c3f56e7a62856c6132cc8339dbf9` |
| 9 | `def` | [_root_.Lean.Name.toSyntaxCat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/root-lean-name-tosyntaxcat--2f89ec2205f1cf8570161774.md) | 69 | `declaration-track:2f89ec2205f1cf857016177452d7028024b75e45b76f6d6c44e41328ef9733f0` |
| 10 | `def` | [mkSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/mksyntax--387ed4a0f00da3a77cee116a.md) | 78 | `declaration-track:387ed4a0f00da3a77cee116a7d60108bc93cdd53f6bb601784b8e3c4892cd15a` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/initialize--e8d8841e8a20ff3e8caf46b1.md) | 83 | `declaration-track:e8d8841e8a20ff3e8caf46b1d7f3152bfdfb32e532e46407058c0aae798e5c8e` |
| 12 | `def` | [parseStepGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/parsestepgroup--a60bbe5c54adcefd5e508bf3.md) | 104 | `declaration-track:a60bbe5c54adcefd5e508bf35811c197142a22f255e5c9708f9e1d27aa85fda2` |
| 13 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCert/Variantf30949c53df41326416d7ce9b3b0f0bb863399927cace0c82b6fe3277f030179.lean/declarations/elab--d9e6aa86ce533a9eb3335b83.md) | 141 | `declaration-track:d9e6aa86ce533a9eb3335b8389fb4ac0edcc9bc914ad609080ef1492e8b490cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
