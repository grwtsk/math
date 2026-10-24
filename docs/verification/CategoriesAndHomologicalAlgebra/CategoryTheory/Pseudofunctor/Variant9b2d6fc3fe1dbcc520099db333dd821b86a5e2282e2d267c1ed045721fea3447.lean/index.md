# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudofunctor.Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01d0dbc748f7f1d3ba2104fc74fec546d73d2da4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01d0dbc748f7f1d3ba2104fc74fec546d73d2da4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean.json)

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
| 1 | `def` | [mapCompRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapcompright--ae67549f17e8886f63da7259.md) | 45 | `declaration-track:ae67549f17e8886f63da7259a7bdded9e7f3c2e2f1e46eb83cfb928f26f07c0b` |
| 2 | `def` | [mapCompLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapcompleft--e834afb1a49a60c1db850209.md) | 51 | `declaration-track:e834afb1a49a60c1db850209400247371df23d524f159d95d16912ea163853f9` |
| 3 | `lemma` | [mapWhiskerLeft_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerleft-whiskerleft--c6264bd97cd192538e7da689.md) | 67 | `result-track:c6264bd97cd192538e7da689fa6aa0e8ae836b85b3be94efa43531b4bd849d47` |
| 4 | `lemma` | [mapWhiskerRight_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerright-whiskerleft--dc7ece5882761df47435838a.md) | 85 | `result-track:dc7ece5882761df47435838a67921a6c6678489cbc4ec0aa61761a58aeca03d0` |
| 5 | `lemma` | [mapWhiskerLeft_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerleft-whiskerright--6c91c3ccb18041ce4e042df4.md) | 95 | `result-track:6c91c3ccb18041ce4e042df48bd333238032745be64bdca7f0fa6faf85acd95a` |
| 6 | `lemma` | [mapWhiskerRight_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerright-whiskerright--3e9c7e18a9837c8c6ffd39d9.md) | 105 | `result-track:3e9c7e18a9837c8c6ffd39d9c99156c33c95b54fceab6b5a58fa191560b19b51` |
| 7 | `lemma` | [mapWhiskerLeft_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerleft-associator-hom--d506fbd10f993679452199cd.md) | 116 | `result-track:d506fbd10f993679452199cdb7c9b3de9a6d9a29f92d6f93eb83709aaf5a1e7a` |
| 8 | `lemma` | [mapWhiskerRight_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerright-associator-hom--66ee49734b08bf75ccb3ddf8.md) | 125 | `result-track:66ee49734b08bf75ccb3ddf8a9e0772e79824c9d3e77e9ab0dd18f1ae0bd040c` |
| 9 | `lemma` | [mapWhiskerLeft_leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerleft-leftunitor-hom--6ded913a3cdc198d64ac3f6b.md) | 134 | `result-track:6ded913a3cdc198d64ac3f6b3ce302d93c410379c6605b11540d001b9fc1489b` |
| 10 | `lemma` | [mapWhiskerRight_leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerright-leftunitor-hom--b5f19c75e2b015a5eb3864ca.md) | 142 | `result-track:b5f19c75e2b015a5eb3864cae386d9ad059fd21a4dc6b645b4b5e5949dca656c` |
| 11 | `lemma` | [mapWhiskerLeft_rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerleft-rightunitor-hom--94bc576fe982be239b1da5b5.md) | 150 | `result-track:94bc576fe982be239b1da5b53fc8353c3f98ae6669f515950f3bf39f181297e4` |
| 12 | `lemma` | [mapWhiskerRight_rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/mapwhiskerright-rightunitor-hom--7db92abdab392cffe920f0df.md) | 158 | `result-track:7db92abdab392cffe920f0dffe9acca8f20d7c8f257424b1da956c98fec0cc3a` |
| 13 | `def` | [pseudofunctorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/pseudofunctorright--45ee23a542bc0a0eadaf1b9c.md) | 171 | `declaration-track:45ee23a542bc0a0eadaf1b9c082a227089a4ccd0946a508c52b02b94b1f380b6` |
| 14 | `def` | [pseudofunctorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant9b2d6fc3fe1dbcc520099db333dd821b86a5e2282e2d267c1ed045721fea3447.lean/declarations/pseudofunctorleft--f6b9993aa16ba2f0359e11b1.md) | 189 | `declaration-track:f6b9993aa16ba2f0359e11b1f92464215c67d533fc166eeb0d517e9cabbe0d62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
