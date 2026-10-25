# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc622839ec29279f219f39a0da8601d00844e023",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc622839ec29279f219f39a0da8601d00844e023`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean.json)

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
| 1 | `inductive` | [ProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree--d36366b0e826c508fa648108.md) | 30 | `declaration-track:d36366b0e826c508fa6481088786fd26e0ee0bbdd4fdc9a31668c6e4f58028c3` |
| 2 | `def` | [ProdTree.getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-gettype--b2e0897b5e9b5e2f26de4ba4.md) | 36 | `declaration-track:b2e0897b5e9b5e2f26de4ba4ec07670b1b89b91a15aee7c02865b412126d17b6` |
| 3 | `def` | [ProdTree.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-size--d55de445ee746ddf5d0ce62b.md) | 41 | `declaration-track:d55de445ee746ddf5d0ce62b235b564e1068c549da9497d2cec8fe6358e1ad60` |
| 4 | `def` | [ProdTree.components](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-components--d63f7ed60b53fd65f0c68caa.md) | 46 | `declaration-track:d63f7ed60b53fd65f0c68caaa88814fad892b20b5a8a4e85d660f8158b4c62af` |
| 5 | `def` | [mkProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/mkprodtree--ff194aa21ee379681d621bf9.md) | 51 | `declaration-track:ff194aa21ee379681d621bf9c981b90e51af859e2765abf610f7aa50f76806bf` |
| 6 | `def` | [ProdTree.unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-unpack--b53aa06ba7ead164d9a5fab3.md) | 68 | `declaration-track:b53aa06ba7ead164d9a5fab37753c0dcffcab1cd79694d284f560667891486c9` |
| 7 | `def` | [ProdTree.pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-pack--5c53f836ab0379c7ff105ae7.md) | 77 | `declaration-track:5c53f836ab0379c7ff105ae7199f824d3870c20ab34c96b5fec8210ffc5eb849` |
| 8 | `def` | [ProdTree.convertTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/prodtree-convertto--cac14f158cde47ab4f206d14.md) | 95 | `declaration-track:cac14f158cde47ab4f206d14efe2937a479bfca456df2bce902dd76f8b2357ef` |
| 9 | `def` | [mkProdFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/mkprodfun--296787d0eff9fbb546730c2d.md) | 100 | `declaration-track:296787d0eff9fbb546730c2dc080d4ccde3867f5559b85f4b9da6a3eb58d810c` |
| 10 | `def` | [mkProdEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/mkprodequiv--4ffcd51678c65eab01c60ccc.md) | 113 | `declaration-track:4ffcd51678c65eab01c60ccc5e5bdf098a48dcfccf39c1a6b0346ffef28870bf` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/syntax--4d4b04bb800874979902f9a1.md) | 126 | `declaration-track:4d4b04bb800874979902f9a139d69da255693ded43eda5eb1ac6c195af22cb30` |
| 12 | `def` | [elabProdAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/elabprodassoc--32829f2507fe251b6ad4b881.md) | 131 | `declaration-track:32829f2507fe251b6ad4b881adc9ce8bbe533befcfc66bbb66470ec928396ebe` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variant6eda20f4d8026a60e3bf1885c58be4b4b3d74a6dc51f7a6db24136911563d736.lean/declarations/macro--e5d28a058516a23c6546b132.md) | 154 | `declaration-track:e5d28a058516a23c6546b132339a9a96931f270b23f512e62a968526e26ad059` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
