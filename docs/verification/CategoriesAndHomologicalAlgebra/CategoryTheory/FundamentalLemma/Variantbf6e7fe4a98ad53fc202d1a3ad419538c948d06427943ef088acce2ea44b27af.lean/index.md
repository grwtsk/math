# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FundamentalLemma.Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1ca6cf0613f633b6d6c0df82408b632d53e7dae",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1ca6cf0613f633b6d6c0df82408b632d53e7dae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean.json)

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
| 1 | `def` | [leftHomotopyClassToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/lefthomotopyclasstohom--716add1fdbcf48ddedba1410.md) | 45 | `declaration-track:716add1fdbcf48ddedba14102d9218c5b26cfb58ca11bae54ec87e9123358f15` |
| 2 | `lemma` | [leftHomotopyClassToHom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/lefthomotopyclasstohom-mk--e65ec49abc00fdcc89bfbefa.md) | 49 | `result-track:e65ec49abc00fdcc89bfbefa3d2e6e61e17998d4843a905c05443b348e760082` |
| 3 | `def` | [rightHomotopyClassToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/righthomotopyclasstohom--7573deba138719c9ae86b8b7.md) | 54 | `declaration-track:7573deba138719c9ae86b8b7e0c203ecf2caf0d578bf2b24866298b1fd5690a2` |
| 4 | `lemma` | [rightHomotopyClassToHom_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/righthomotopyclasstohom-mk--54bd078e1034f0ab51eaecce.md) | 58 | `result-track:54bd078e1034f0ab51eaeccedc77389f1c78f4c4faa27dcda92171064baa472a` |
| 5 | `lemma` | [bijective_leftHomotopyClassToHom_iff_bijective_rightHomotopyClassToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/bijective-lefthomotopyclasstohom-iff-bijective-righthomotopyclasstohom--ea92ddcf0d724c79d6fafba5.md) | 62 | `result-track:ea92ddcf0d724c79d6fafba51d8ef4323009b43ebe3931dacaad33343992a2d6` |
| 6 | `lemma` | [bijective_rightHomotopyClassToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/bijective-righthomotopyclasstohom--0590228250f645d1135ad614.md) | 77 | `result-track:0590228250f645d1135ad614177da6f85a4004700bd9fbb44f15a3a4f3209032` |
| 7 | `lemma` | [bijective_leftHomotopyClassToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/bijective-lefthomotopyclasstohom--e61f39272be814e5d41a4a38.md) | 119 | `result-track:e61f39272be814e5d41a4a387e3fb33fbb4f5640a14e4bba527fd093d6b4ff84` |
| 8 | `lemma` | [map_surjective_of_isLocalization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/map-surjective-of-islocalization--f5f2c6f6822f4191fe5dff60.md) | 124 | `result-track:f5f2c6f6822f4191fe5dff60c5410e73bed32c2d6dd5c63c9803c0d203378c5c` |
| 9 | `lemma` | [RightHomotopyRel.iff_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/righthomotopyrel-iff-map-eq--4aa4266c6b77e2085b65721c.md) | 130 | `result-track:4aa4266c6b77e2085b65721ccad6cfca99956bc9b0b4d964cc9caf5534b5fced` |
| 10 | `lemma` | [LeftHomotopyRel.iff_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/declarations/lefthomotopyrel-iff-map-eq--07d98e64959fd01e8685595a.md) | 137 | `result-track:07d98e64959fd01e8685595acd72e0b902ec5ac89dc77317b9ee557c9a923d0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
