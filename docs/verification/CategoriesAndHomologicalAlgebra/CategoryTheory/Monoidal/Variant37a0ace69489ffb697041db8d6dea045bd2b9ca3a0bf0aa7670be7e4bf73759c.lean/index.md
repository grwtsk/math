# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e88aadaaf329e3857e555bbc9c21c1a58eb842",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e88aadaaf329e3857e555bbc9c21c1a58eb842`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.BifunctorAssociator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Monoidal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/hastensor--3e2723a7560b51174eef89d1.md) | 45 | `declaration-track:3e2723a7560b51174eef89d1d5c26c27b43c8bc72ef7532db541a2726c49a24d` |
| 2 | `abbrev` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensorobj--2021486de025ee6ff3b8858b.md) | 52 | `declaration-track:2021486de025ee6ff3b8858b3cbd830886d147ac2834d40e3fcdc9cbf5323c01` |
| 3 | `abbrev` | [ιTensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensorobj--0bb872c477d51071368f2ab3.md) | 58 | `declaration-track:0bb872c477d51071368f2ab3c758c0629835d2104128414f03fd645d69893848` |
| 4 | `abbrev` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensorhom--24c5fb239330e0fed1d4f273.md) | 64 | `declaration-track:24c5fb239330e0fed1d4f2734d3539283f90a00443de7006e2ee0a9da22b482d` |
| 5 | `abbrev` | [HasGoodTensor₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/hasgoodtensor--4b487057ae67acefd9294a4a.md) | 72 | `declaration-track:4b487057ae67acefd9294a4a1c9f63cc0bd81a40df7f49d7ded3eab6cf899019` |
| 6 | `abbrev` | [HasGoodTensor₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/hasgoodtensor--4bcc95e3421c25f6a958c89d.md) | 78 | `declaration-track:4bcc95e3421c25f6a958c89d8e96f01c946bf2e265f4e4c3763504a56c7e6e90` |
| 7 | `abbrev` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/associator--51a2b0f571ace942af7ec859.md) | 82 | `declaration-track:51a2b0f571ace942af7ec85985913f89b98c6ac5acacf7b3c7f50238d2e408f0` |
| 8 | `abbrev` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensorunit--4f8f1f4f89b39cf5e375c127.md) | 91 | `declaration-track:4f8f1f4f89b39cf5e375c127922df4ad67a471d17f9cb23739311337a722239a` |
| 9 | `def` | [tensorUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensorunitiso--84d25ab64e0d85e16f1c425d.md) | 96 | `declaration-track:84d25ab64e0d85e16f1c425d51da888a92f09894101ae802aa52f422a2bf5b52` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--fe4847302e186ae69dc6d7a0.md) | 110 | `declaration-track:fe4847302e186ae69dc6d7a03d0d7fd68f959a08455048119c259de9758178f2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--9944411ae3b0fbad1a28b123.md) | 114 | `declaration-track:9944411ae3b0fbad1a28b12377f3ab3a41b484e4dc3b3bd921dd322571dd6ac6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--4c2ed0bc9c69013ef531121b.md) | 119 | `declaration-track:4c2ed0bc9c69013ef531121b2a4fbc6d85ca36191fb5a23e09556ff275b67243` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--ab637f2b5a6c2d2b09a00a0f.md) | 132 | `declaration-track:ab637f2b5a6c2d2b09a00a0fd6bb68c4332583d85977e5dba9a8ec0b7e00f7d4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--e65eea54cae71bb8b7842d07.md) | 135 | `declaration-track:e65eea54cae71bb8b7842d07c3776ba53d9fa753a367ba993e4e8d3437b7a15a` |
| 15 | `lemma` | [unit_tensor_d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/unit-tensor-d--5001b45a2b671a8fbe59a4d9.md) | 139 | `result-track:5001b45a2b671a8fbe59a4d9e90abd49767a5b39a747eaf8e59d0924f0f5b837` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--dee6b9e7298b5c1d7e85a536.md) | 154 | `declaration-track:dee6b9e7298b5c1d7e85a536d6b9b0f4ec96a6419341306df6c22590d501bae4` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/instance--cf9fe04dc68aa63774aa8dd3.md) | 157 | `declaration-track:cf9fe04dc68aa63774aa8dd3eb29c4e4067cfbb41a3c168b779450a4129632bb` |
| 18 | `lemma` | [tensor_unit_d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/tensor-unit-d--49fa474d88fc0e938a265136.md) | 161 | `result-track:49fa474d88fc0e938a2651369c94cc28b5fc8df85aa3f44355b4962594cdf7ee` |
| 19 | `def` | [leftUnitor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/leftunitor--35941235bd5b1cc5ebd49271.md) | 183 | `declaration-track:35941235bd5b1cc5ebd49271e5317652cab46a75240337ebcb14b91e9fab1e8c` |
| 20 | `lemma` | [leftUnitor'_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/leftunitor-inv--390083643d37e8a453673cfa.md) | 188 | `result-track:390083643d37e8a453673cfa58d5e90f8abb4c48f0b8ecb24a7fac51d0fad118` |
| 21 | `lemma` | [leftUnitor'_inv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/leftunitor-inv-comm--00dcc8cfae288ac5fe5ce521.md) | 203 | `result-track:00dcc8cfae288ac5fe5ce521364bc0db8cf4375fd22876df19b9888b7f20073c` |
| 22 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/leftunitor--39bb7e598fbd48a8d1408020.md) | 217 | `declaration-track:39bb7e598fbd48a8d1408020275839827790bb0977c42be86308efbf792a2129` |
| 23 | `def` | [rightUnitor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/rightunitor--56ad63190068f41bf5d366b3.md) | 229 | `declaration-track:56ad63190068f41bf5d366b39bff024755bd9de9d9fbddc878ae0eafc1766303` |
| 24 | `lemma` | [rightUnitor'_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/rightunitor-inv--0b1ba7dbd02978af8f100dc3.md) | 234 | `result-track:0b1ba7dbd02978af8f100dc38cb534200018b99a25660c738b56e7b03d3afed1` |
| 25 | `lemma` | [rightUnitor'_inv_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/rightunitor-inv-comm--3c64bd4168643cbe3f60bf0c.md) | 248 | `result-track:3c64bd4168643cbe3f60bf0c941735862493d5dee76cb9fe74c872b23ac6a065` |
| 26 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/rightunitor--c27febae946802d2df96fbc0.md) | 262 | `declaration-track:c27febae946802d2df96fbc09a13b8c8432af2d780e4c61c71af358f1d568ad5` |
| 27 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/monoidalcategorystruct--cb890117df9288efe41a89b0.md) | 279 | `declaration-track:cb890117df9288efe41a89b0a8e6836581d208cccbe8e3d044149eb49eaf79bf` |
| 28 | `def` | [Monoidal.inducingFunctorData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/monoidal-inducingfunctordata--0fe21d5b322ec05976cd8b43.md) | 293 | `declaration-track:0fe21d5b322ec05976cd8b43bf0b33667a58b38290e1e3d253068521bae658b2` |
| 29 | `instance` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/monoidalcategory--64ab7f31dd9bb06d49f50d18.md) | 330 | `declaration-track:64ab7f31dd9bb06d49f50d18cf6fd9a12a7294df63b98042030efbefc7b34ef2` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant37a0ace69489ffb697041db8d6dea045bd2b9ca3a0bf0aa7670be7e4bf73759c.lean/declarations/example--d2c49dd6d8043325e9bedbca.md) | 333 | `declaration-track:d2c49dd6d8043325e9bedbcafee5110353127c05da692d89ab6c74cbaa6d03e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
