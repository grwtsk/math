# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoSquare.Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcef7afa2290577698a8e01970e124df6cebf114",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcef7afa2290577698a8e01970e124df6cebf114`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/twosquare--fd0a25fbf020b01d4d0539e7.md) | 54 | `declaration-track:fd0a25fbf020b01d4d0539e7a0295088ec5391c518f7285b717db0e6d8a67b17` |
| 2 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/mk--f993887dde57d65b970719eb.md) | 59 | `declaration-track:f993887dde57d65b970719ebea1eadcb7682a5f44a01f87d9a9b90286dbb68c8` |
| 3 | `abbrev` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/nattrans--4046019769e9e8d1dcce5c39.md) | 63 | `declaration-track:4046019769e9e8d1dcce5c3921feb83d701d6f2c775570fb4db95d7376f026f5` |
| 4 | `def` | [equivNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/equivnattrans--127327409dcf42c0548fdaab.md) | 68 | `declaration-track:127327409dcf42c0548fdaabc77271f46ea8e433d98ef7a225cbaf5673411e48` |
| 5 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/op--c1a7f226608ac1dfb5fa1e26.md) | 77 | `declaration-track:c1a7f226608ac1dfb5fa1e26ce5a407ed9ccaec5b9701b30f5d402f178ebca71` |
| 6 | `lemma` | [natTrans_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/nattrans-op--09144423732ad70c57634aa1.md) | 80 | `result-track:09144423732ad70c57634aa15061dfa49c9f49b7ef145d12f13bbe2bac79ba9c` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/ext--51621382b07761be73160bb1.md) | 84 | `result-track:51621382b07761be73160bb18c697e80f94f351fb5259dc55c8b975c11073db6` |
| 8 | `def` | [hId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/hid--7e7a91769177f1f2baea4e22.md) | 90 | `declaration-track:7e7a91769177f1f2baea4e221e1ff0cc2b4ebd04036148dee843c75ff7b88b36` |
| 9 | `def` | [vId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/vid--40cd42f53e7fbfc419fdd09d.md) | 98 | `declaration-track:40cd42f53e7fbfc419fdd09da4723b08fa5c2755b6073297dc4c95183f68757f` |
| 10 | `def` | [whiskerTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/whiskertop--d9de5de5da901c58cb1b4411.md) | 106 | `declaration-track:d9de5de5da901c58cb1b4411c3ad413b823be08ebe084707dc6bfca090c7de10` |
| 11 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/whiskerleft--289ef22219c5a01f477c3f75.md) | 111 | `declaration-track:289ef22219c5a01f477c3f75196743da24894c6cffe840f1d5d745b27d111f1f` |
| 12 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/whiskerright--655655bbf91d3a0120ab6d26.md) | 117 | `declaration-track:655655bbf91d3a0120ab6d26e461bb76fe1a7198dca545229e72f7dfc46b0a40` |
| 13 | `def` | [whiskerBottom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/whiskerbottom--4ae299a0b83cca88a5abc47c.md) | 123 | `declaration-track:4ae299a0b83cca88a5abc47c1a58262229248c690709b315d551a3b92b94d44a` |
| 14 | `def` | [hComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/hcomp--f7c2f69887c841510627667b.md) | 133 | `declaration-track:f7c2f69887c841510627667b242e63191139c8171741c9d72954d400be93bfee` |
| 15 | `def` | [vComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/vcomp--54e6feae7f99ccb64bf5c1b0.md) | 143 | `declaration-track:54e6feae7f99ccb64bf5c1b091992e1ad2bee02d4c083cbf7111dd8f861cd9f3` |
| 16 | `lemma` | [hCompVCompHComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variantc4dac7138d3af2f202aa38e7039cc66649281a7163a68592a380343e8f78a4f3.lean/declarations/hcompvcomphcomp--077cd32616ef1b4d95756871.md) | 157 | `result-track:077cd32616ef1b4d95756871af2e6e182279dbd0ab1295d7912523e73eec8970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
