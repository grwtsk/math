# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Algebraize.Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb667ee7dcdc55e2ae527fe820eb4009e02907ea",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb667ee7dcdc55e2ae527fe820eb4009e02907ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algebraizeGetParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/algebraizegetparam--2091322569df2a9d0879f0f1.md) | 82 | `declaration-track:2091322569df2a9d0879f0f1ae672f05f0297fe4e19a4143f61eda4d2c2c3b2d` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/initialize--915c771d5b6aa86f55726f33.md) | 110 | `declaration-track:915c771d5b6aa86f55726f33981c55ccaf4b0740b96c6452653a90c584dc0646` |
| 3 | `def` | [addAlgebraInstanceFromRingHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/addalgebrainstancefromringhom--943caaf7f25c81300095c12e.md) | 130 | `declaration-track:943caaf7f25c81300095c12e28303faf698a64704e80a99bbc589d99a2ce6ae7` |
| 4 | `def` | [addIsScalarTowerInstanceFromRingHomComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/addisscalartowerinstancefromringhomcomp--c9984b559fe14d2a386284e4.md) | 144 | `declaration-track:c9984b559fe14d2a386284e4027ec12e0b9f06f28222fe6c629ef9f8183a6a11` |
| 5 | `def` | [addProperties](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/addproperties--57ff8830379cad92650ff508.md) | 169 | `declaration-track:57ff8830379cad92650ff5086f0ec2c7a658c930db58e2abe544dd60bcf2d4bf` |
| 6 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/config--848cf29226b3a5709e603a5f.md) | 214 | `declaration-track:848cf29226b3a5709e603a5fc02a6794679227d8428f829bbf3cd1d4e5900ae0` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/syntax--e290c616447b11a0bef298b3.md) | 228 | `declaration-track:e290c616447b11a0bef298b3b89c16d9e448b26e3e33ef83d64683c58ebe3bf6` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/syntax--de089e5f81041d020fce5590.md) | 244 | `declaration-track:de089e5f81041d020fce55906624e635e69476f07461be135cb43f6725f82dc1` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/elab-rules--94c995345e27d09f376573d0.md) | 246 | `declaration-track:94c995345e27d09f376573d0d0178d623f5ece91bbe4f2b55e900bf484af182a` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/syntax--52de75b779c91e2e2cf24c7a.md) | 278 | `declaration-track:52de75b779c91e2e2cf24c7ad23cbb2ba58a49863ef5221672c271f16abcf1de` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebraize/Variantb74ad8d66a35b522f528054862348c4050b85d3758759cc18f658d8b503e3b69.lean/declarations/macro-rules--7056f08c00074770eab1c24e.md) | 280 | `declaration-track:7056f08c00074770eab1c24ed7d466b33fc9bebb06a6c73134840812223731e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
