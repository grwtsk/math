# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f43f7439e008a55a3f0980f323525f8411dc985",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f43f7439e008a55a3f0980f323525f8411dc985`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Coherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoryCoherence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.MonoidalComp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/liftobj--13d0607a925bcba7f81cd789.md) | 43 | `declaration-track:13d0607a925bcba7f81cd789439ae18356dc240bfc495ea18406b06a84dd9d71` |
| 2 | `instance` | [LiftObj_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/liftobj-unit--a1786c03f455f95788feea7b.md) | 46 | `declaration-track:a1786c03f455f95788feea7b3d29983dbdb2960f6ac880c7df242fd41edca7e0` |
| 3 | `instance` | [LiftObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/liftobj-tensor--91a03791ee26f70b66d30c2e.md) | 48 | `declaration-track:91a03791ee26f70b66d30c2ec61b63e1404838d1ebf7ba85d14aaca4b256fec9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/instance--8602cf227a79d9d0217f9d22.md) | 51 | `declaration-track:8602cf227a79d9d0217f9d228096a5de0652cdbda9160fb361b1bfeef2b0f530` |
| 5 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom--b573c498d87dc6117bb4ef98.md) | 55 | `declaration-track:b573c498d87dc6117bb4ef98087b1ad59fdad3bb372d298934543017e6a564e1` |
| 6 | `instance` | [LiftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-id--1e55b3d03a1847e950ea2530.md) | 58 | `declaration-track:1e55b3d03a1847e950ea253097de15342f45ab5e84777ca04085d67b3197d358` |
| 7 | `instance` | [LiftHom_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-left-unitor-hom--383d5611f4a8777066e46648.md) | 60 | `declaration-track:383d5611f4a8777066e466486106ee26dada695d3b3efeb9aa46ea966ef0ff0c` |
| 8 | `instance` | [LiftHom_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-left-unitor-inv--26e830b6eb13c9caeda55f80.md) | 63 | `declaration-track:26e830b6eb13c9caeda55f801333e6a1c292bead27c528d593b7cd2867085d8d` |
| 9 | `instance` | [LiftHom_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-right-unitor-hom--65ca6079a5002567cb5c35e1.md) | 66 | `declaration-track:65ca6079a5002567cb5c35e1fc83acf507491c3d57661f28115b88c7b703e15b` |
| 10 | `instance` | [LiftHom_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-right-unitor-inv--dc6ec51a4b758e933aec1077.md) | 69 | `declaration-track:dc6ec51a4b758e933aec107790572485b1fd1dfcee06d6355d32f470a3aeedbe` |
| 11 | `instance` | [LiftHom_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-associator-hom--1cebc42d6046453c56a8c0b3.md) | 72 | `declaration-track:1cebc42d6046453c56a8c0b36ab3d88ec1dd7b3ae40b2942324f4e9f1d70cdc8` |
| 12 | `instance` | [LiftHom_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-associator-inv--91bf92e6997b35663c760397.md) | 76 | `declaration-track:91bf92e6997b35663c760397f178e5c73362ac9fb2266cae7b8105510360de81` |
| 13 | `instance` | [LiftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-comp--14fad4340d954079aeb9ce55.md) | 80 | `declaration-track:14fad4340d954079aeb9ce55c842b89753aeaef0995968d9d3d3d5785d3a057f` |
| 14 | `instance` | [liftHom_WhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-whiskerleft--fab67222431fc2a73aa168fe.md) | 84 | `declaration-track:fab67222431fc2a73aa168fe4485a03a845f42ad6f6f630f0a9663050d7d7429` |
| 15 | `instance` | [liftHom_WhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-whiskerright--29c88b9d1f34c5bfb45cab8e.md) | 88 | `declaration-track:29c88b9d1f34c5bfb45cab8e22a53342b0ca280f41647d2c88664bc82d122aad` |
| 16 | `instance` | [LiftHom_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/lifthom-tensor--42fea5eece3d0e84c215c00b.md) | 92 | `declaration-track:42fea5eece3d0e84c215c00b1c39e1e5c6ddeaf91897932a33df5554557e749a` |
| 17 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/exception--6bb462663a6339b95b82a78f.md) | 101 | `declaration-track:6bb462663a6339b95b82a78f8752d5209431d6ac8e8be70a21012aba8fd3b843` |
| 18 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/exception--dc5c9df3b1104e871d136053.md) | 105 | `declaration-track:dc5c9df3b1104e871d13605346fbf027f40249728f0e29de626ba1653297a972` |
| 19 | `def` | [mkProjectMapExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/mkprojectmapexpr--c66a1cb87d61d8438c25cdf8.md) | 115 | `declaration-track:c66a1cb87d61d8438c25cdf845502735746f21c1f6dd83b6cb4f63593f6c289a` |
| 20 | `def` | [monoidal_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/monoidal-coherence--3cc9cd3a02fde8c2f557ecd7.md) | 121 | `declaration-track:3cc9cd3a02fde8c2f557ecd769c76cf21ddcabe7ab11a2b15e81fd9ae41cd78f` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/elab--9f58c9fee9bcd09cb20e2d5d.md) | 141 | `declaration-track:9f58c9fee9bcd09cb20e2d5d5736fe2a5d80e87b2b32b76d333ca15f3691c437` |
| 22 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/elab--c2b84e6b606eb4e31182cc35.md) | 159 | `declaration-track:c2b84e6b606eb4e31182cc3505a296777c346e59bda22a215b2453e44f88bad7` |
| 23 | `lemma` | [assoc_liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/assoc-lifthom--db776035757cd8143ef08caf.md) | 172 | `result-track:db776035757cd8143ef08caf05b31aa6a94ad764c454bff51af147e9a41ae06b` |
| 24 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/elab--65803d03b8c715433006fbe4.md) | 184 | `declaration-track:65803d03b8c715433006fbe420b1488f0e8c06cd0030c97b2518ee1ab47eea20` |
| 25 | `lemma` | [insert_id_lhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/insert-id-lhs--fd5e789ea0aad12e056d44b6.md) | 197 | `result-track:fd5e789ea0aad12e056d44b6d592d467d88243df5ddcd85a4bd48af36855a823` |
| 26 | `lemma` | [insert_id_rhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/insert-id-rhs--0b83d1c2014134837da866ba.md) | 201 | `result-track:0b83d1c2014134837da866ba73157c9801df9684b837b9caf9dce8ce7165fc5f` |
| 27 | `def` | [insertTrailingIds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/inserttrailingids--e57c3fab353bf07cbcd056bc.md) | 206 | `declaration-track:e57c3fab353bf07cbcd056bc12e1bcce04f419a3b1c7fddc2bc4ce1fb027a759` |
| 28 | `def` | [coherence_loop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/coherence-loop--913be4b26984e72d4f6f39af.md) | 221 | `declaration-track:913be4b26984e72d4f6f39afb2dc9766e866bd190ef405dc73e09b803b0c4933` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/syntax--b3e854061285722bb837a994.md) | 255 | `declaration-track:b3e854061285722bb837a994ad3698db175ca7b995a415a05af6c8b2a1a977ba` |
| 30 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/elab-rules--936aa8c938fd520c9a607746.md) | 258 | `declaration-track:936aa8c938fd520c9a6077465850b259de6e15f8674501fa2493492cc5357ff6` |
| 31 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/syntax--3c7c2654a7bd04a6a37dbabc.md) | 286 | `declaration-track:3c7c2654a7bd04a6a37dbabc698b16228eba6f980572e228dffa1b7841d3c52e` |
| 32 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant033598e1e7544929f62df03a54eab28b079c6f68f46a1b3a460f63c3e299d36d.lean/declarations/elab-rules--7ae9da33c1cb0565ee2867a2.md) | 289 | `declaration-track:7ae9da33c1cb0565ee2867a23a7433204c52866315c2908425a57ed70dcfed99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
