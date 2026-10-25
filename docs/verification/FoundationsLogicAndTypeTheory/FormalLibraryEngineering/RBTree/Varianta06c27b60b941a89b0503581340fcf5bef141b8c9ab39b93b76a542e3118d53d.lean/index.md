# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RbTree.Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "444c50fb9b38e90af6cb8d949d7b991240b382bb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `444c50fb9b38e90af6cb8d949d7b991240b382bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean.json)

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
| 1 | `inductive` | [RBColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbcolour--d314c68c3265dc036d63a508.md) | 11 | `declaration-track:d314c68c3265dc036d63a508b261a7cf060898d92f4631c4acc450993cea9bf2` |
| 2 | `inductive` | [RBTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbtree--bebbb22f732dca01ccee3747.md) | 14 | `declaration-track:bebbb22f732dca01ccee37479194a29a8864f29747637900703e498ee8efe73a` |
| 3 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/contains--9ecedf0e264c5d560a2a7005.md) | 20 | `declaration-track:9ecedf0e264c5d560a2a7005104ad21ff2a111c5e863d3291707155627a4808e` |
| 4 | `def` | [balance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/balance--043c8a751578fd7ebc708d00.md) | 27 | `declaration-track:043c8a751578fd7ebc708d00a0dc1725189b63acda8fd51529c1c377e5ea143c` |
| 5 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/insert--641741dc5c06623059cb5b0c.md) | 35 | `declaration-track:641741dc5c06623059cb5b0c62885ce9e5c00f483f4a3d449107f0d445212c39` |
| 6 | `def` | [empty?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/empty--88596ccbb45c7d53833a9ae2.md) | 54 | `declaration-track:88596ccbb45c7d53833a9ae20ba7ab311476d2fc690246333d34a3701c1d7e6a` |
| 7 | `def` | [Lean.Expr.app5?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/lean-expr-app5--d5e4f33b7e71da31f51c8bcf.md) | 57 | `declaration-track:d5e4f33b7e71da31f51c8bcf2f3ac905c2a0cc5509d36d1ef6a3631257659c36` |
| 8 | `def` | [node?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/node--1bd4e1b9abb0f7dd33ad7a8c.md) | 68 | `declaration-track:1bd4e1b9abb0f7dd33ad7a8c205b04b130cf0cfecc2399e5e797cbc3f5496d07` |
| 9 | `def` | [evalColourUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/evalcolourunsafe--7e0189ec8388e7f43f0ecc50.md) | 72 | `declaration-track:7e0189ec8388e7f43f0ecc50d0be771cecf29678c2a84968a653968bbdcb4385` |
| 10 | `opaque` | [evalColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/evalcolour--2c20a70133f3083ac5b06e5c.md) | 76 | `declaration-track:2c20a70133f3083ac5b06e5c4dfa46900221843ce74e73ac5e31e8838edac8db` |
| 11 | `inductive` | [RBTreeVarsColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbtreevarscolour--4333d33143aa3f86f99ddaa4.md) | 79 | `declaration-track:4333d33143aa3f86f99ddaa48334697f679a036844754aeaed6338c9c244377d` |
| 12 | `inductive` | [RBTreeVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbtreevars--98c6f03383edb0575bfafd58.md) | 89 | `declaration-track:98c6f03383edb0575bfafd5874655a94d8ec11c7378ca2d440b9a95defc435ee` |
| 13 | `structure` | [RBDisplayProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbdisplayprops--ebb2568896e76d42a0c5d084.md) | 97 | `declaration-track:ebb2568896e76d42a0c5d0840ed2fcb852cf34851104089e7c08a5c32dc95a63` |
| 14 | `def` | [RBDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbdisplay--2b605ddeef6563b869009cce.md) | 104 | `declaration-track:2b605ddeef6563b869009ccec54ea8b7cb6587a6f512821e8f5fbcf2074501ec` |
| 15 | `def` | [drawTree?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/drawtree--8e130ef60939628f22500c19.md) | 108 | `declaration-track:8e130ef60939628f22500c19d29e76c4d210418960c097bf2b1480e20f3d3c9c` |
| 16 | `def` | [RBTree.presenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/rbtree-presenter--63141b24b12a0789c756577b.md) | 129 | `declaration-track:63141b24b12a0789c756577b9dc778aa54589d5e0a392fc2faf6f8353cdab443` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Varianta06c27b60b941a89b0503581340fcf5bef141b8c9ab39b93b76a542e3118d53d.lean/declarations/example--9ce0cff2cee54247bd1166ee.md) | 139 | `declaration-track:9ce0cff2cee54247bd1166ee180e8141c4d6f8cf7ada71218c3e50617898d3e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
