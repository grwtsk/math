# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df55b79f94e524badfe4340d725655c2ca588c0e",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df55b79f94e524badfe4340d725655c2ca588c0e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Coherence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.BicategoryCoherence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LiftObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/liftobj--202067f0a3c3a3ec771d4ad3.md) | 57 | `declaration-track:202067f0a3c3a3ec771d4ad3106361e9ca3e14d3661b0c52fd9dba7a74a095ce` |
| 2 | `instance` | [LiftObj_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/liftobj-unit--196c0efe3a05406aa82af500.md) | 60 | `declaration-track:196c0efe3a05406aa82af500ccf6d740559c7e31b05e5c4ec9267d3f8f9725a5` |
| 3 | `instance` | [LiftObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/liftobj-tensor--86b42af78752db8bd5edc2b8.md) | 62 | `declaration-track:86b42af78752db8bd5edc2b820d3c0b4412f9fbe61a3c547f1d2e04a4f6a7b29` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/instance--d321e5081be0043cbaf3b402.md) | 65 | `declaration-track:d321e5081be0043cbaf3b402c13cda4f9a43050bf54d74f149059d7711dd982e` |
| 5 | `class` | [LiftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom--bf2667369651c3df7f0b7ec9.md) | 69 | `declaration-track:bf2667369651c3df7f0b7ec972f5cdb438c98adfc8bd30a9726afa7c73b7013f` |
| 6 | `instance` | [LiftHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-id--2076500d676946cebd1c3a96.md) | 72 | `declaration-track:2076500d676946cebd1c3a962465ece0c550ff19d0865b31c09ae51bf3ad1b09` |
| 7 | `instance` | [LiftHom_left_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-left-unitor-hom--b38395bb715ac2ab25d3fdc5.md) | 74 | `declaration-track:b38395bb715ac2ab25d3fdc5a273c7191863987e6616f701ba4dc4e9b7321c9c` |
| 8 | `instance` | [LiftHom_left_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-left-unitor-inv--09ababecd705185e16e27c50.md) | 77 | `declaration-track:09ababecd705185e16e27c50bdfd15306407c511e4afc15f632500539d343a74` |
| 9 | `instance` | [LiftHom_right_unitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-right-unitor-hom--543ead8bef50c567d3699714.md) | 80 | `declaration-track:543ead8bef50c567d369971445b99ca433c0a5aab94cdb790685fc4f70ef545b` |
| 10 | `instance` | [LiftHom_right_unitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-right-unitor-inv--c43f4874f6de2258f35b54d6.md) | 83 | `declaration-track:c43f4874f6de2258f35b54d6aee85b4a3db14076d3776a4f0ecc991df05a0483` |
| 11 | `instance` | [LiftHom_associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-associator-hom--7e2c3c0fb1ca34ae08c2f1d2.md) | 86 | `declaration-track:7e2c3c0fb1ca34ae08c2f1d2e1c759c71939beb6b7b0e82663e1064772b949ce` |
| 12 | `instance` | [LiftHom_associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-associator-inv--a17eeb4d28d81950837b7a83.md) | 90 | `declaration-track:a17eeb4d28d81950837b7a832d0d67d5defda5d5faedbc82eb09820ecd9716e3` |
| 13 | `instance` | [LiftHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-comp--b1086902cfe598d26d26e11c.md) | 94 | `declaration-track:b1086902cfe598d26d26e11c014a38689f646e0daa1b6749739d4a1737c0f67f` |
| 14 | `instance` | [LiftHom_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/lifthom-tensor--cb914a6328cec3d8d994d807.md) | 98 | `declaration-track:cb914a6328cec3d8d994d807dcffb213de6e6de31c5c77428525bb2ec146d5ea` |
| 15 | `class` | [MonoidalCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidalcoherence--2dcb1b67ce07cca64ec14c0f.md) | 107 | `declaration-track:2dcb1b67ce07cca64ec14c0f6c36abc94a0e7d23d4b4d346f92d30053a22967b` |
| 16 | `instance` | [refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/refl--6a01fa92bd40af8cc7b7fb79.md) | 116 | `declaration-track:6a01fa92bd40af8cc7b7fb79ec6e3c052c7d077004b55a8a2e9cd6ff7a39a8e8` |
| 17 | `instance` | [tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/tensor--7c9751dc810ba74d3f1707d1.md) | 119 | `declaration-track:7c9751dc810ba74d3f1707d12c367089672792053bdc39d2cde0a944eacdd260` |
| 18 | `instance` | [tensor_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/tensor-right--f92ab0a7987ddbab502ee10c.md) | 124 | `declaration-track:f92ab0a7987ddbab502ee10c3dcb0fbf13a0954b4f30fe0f63f3124c3d8fa4be` |
| 19 | `instance` | [tensor_right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/tensor-right--178c9605a54b999c61cbb9e7.md) | 129 | `declaration-track:178c9605a54b999c61cbb9e7f7018d808dd7d7db4c686b3edb7860001cd55e60` |
| 20 | `instance` | [left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/left--db531a49aeecf0af09e00896.md) | 134 | `declaration-track:db531a49aeecf0af09e008967278278feb6b404bc33a8b1524ce45e3669e4276` |
| 21 | `instance` | [left'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/left--2e2d33341fa6b358cac89337.md) | 139 | `declaration-track:2e2d33341fa6b358cac893376b7f98aeff8c014db5a71b337d02b2a86ab05717` |
| 22 | `instance` | [right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/right--669ce37e8eddd3ea6221874a.md) | 144 | `declaration-track:669ce37e8eddd3ea6221874a0a46c874c773dc70661fc9c38a8e9af2ef376866` |
| 23 | `instance` | [right'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/right--eb897b3ae914ee65f54132b4.md) | 149 | `declaration-track:eb897b3ae914ee65f54132b48fd498714f4b37190f58d29fc2e4bcc8085ea991` |
| 24 | `instance` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/assoc--2ab4e21451b716cc40ffd5ac.md) | 154 | `declaration-track:2ab4e21451b716cc40ffd5ac41fb70b2eb9fb4e0c59f8908e721b35a1d038fc0` |
| 25 | `instance` | [assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/assoc--85af2fbfe556722393569b43.md) | 159 | `declaration-track:85af2fbfe556722393569b438df3d91db51a0f72f4a60736e96c74253006a29f` |
| 26 | `def` | [monoidalIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidaliso--771cf02ed04e626a00639d6a.md) | 167 | `declaration-track:771cf02ed04e626a00639d6ab9222faf94130c94e0a16667e2a58cab7e200c88` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/example--abb1a665bed53ae0a8149be8.md) | 170 | `declaration-track:abb1a665bed53ae0a8149be8900fc59445c0b2643233763e517f6eb8ceaff290` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/example--4d2b92d1c9d615ed40166843.md) | 172 | `declaration-track:4d2b92d1c9d615ed40166843fabb9f09970bb95c3e352fb38dc0d76a37d8cc34` |
| 29 | `def` | [monoidalComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidalcomp--c2954e78b5a661bffc507499.md) | 179 | `declaration-track:c2954e78b5a661bffc507499426abba3890506d308ac3b87bcc2b4f81b6a008c` |
| 30 | `def` | [monoidalIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidalisocomp--886d30ae716c789ae1c185ce.md) | 189 | `declaration-track:886d30ae716c789ae1c185ced6f901ea7dea7d7a193e063fc64ebf1754e87235` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/example--a478d13d8458fb63f85ae478.md) | 197 | `declaration-track:a478d13d8458fb63f85ae478bbcd59265093a2e837e708cf7d6cbad84980abc5` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/example--4825bff64341132f8248d4c0.md) | 201 | `declaration-track:4825bff64341132f8248d4c0181f2ec4e8c1d332dd730efb7a49262e0c5149e6` |
| 33 | `lemma` | [monoidalComp_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidalcomp-refl--cd315f0395d0a9fbb2ade876.md) | 203 | `result-track:cd315f0395d0a9fbb2ade8767fc65a1667e3a1e8d0b2a0abc9ee3b3e252ffdf3` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/example--d27d747d40618074973ac17b.md) | 207 | `declaration-track:d27d747d40618074973ac17bc722451e9f851317e4a5b05c4dee4624add0e3fc` |
| 35 | `def` | [exception](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/exception--51c443cc4f863cdf66e92809.md) | 216 | `declaration-track:51c443cc4f863cdf66e928098a4e5c99e3dcb81d6165ca78cbaf0ea8e0d495c0` |
| 36 | `def` | [exception'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/exception--e07cbf991f5fcc3bf52bde0d.md) | 219 | `declaration-track:e07cbf991f5fcc3bf52bde0dcf0ed1e7e683b90a7ebfde0b0548a93433f5cf97` |
| 37 | `def` | [mkProjectMapExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/mkprojectmapexpr--ad9bb412a5ab6ef86429fa48.md) | 229 | `declaration-track:ad9bb412a5ab6ef86429fa48dea596311ce4655930707915b98270e702748f55` |
| 38 | `def` | [monoidal_coherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/monoidal-coherence--8b024716f96e45fba3de2b81.md) | 235 | `declaration-track:8b024716f96e45fba3de2b81c45b7c9f165ee34e5c1ddc76e9d97eaead8f15f2` |
| 39 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/elab--0d0c0a5fa0c558927935488c.md) | 253 | `declaration-track:0d0c0a5fa0c558927935488c9a4f51e2433df023c8ba16c7a7f82d7cb8cf5982` |
| 40 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/elab--a6f65a74449cf74048dee901.md) | 271 | `declaration-track:a6f65a74449cf74048dee9017365b9a3a6a1760b0f772640039dacc9693214c8` |
| 41 | `lemma` | [assoc_liftHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/assoc-lifthom--5f4f16baba254f7b845eb258.md) | 284 | `result-track:5f4f16baba254f7b845eb258634f7aacaa1f626ef47fa884477bd6da53be268b` |
| 42 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/elab--d9c1a49f6c2f31ee4757731b.md) | 296 | `declaration-track:d9c1a49f6c2f31ee4757731bc48025ccdefe1b211d6ac08d091c1570b84e19aa` |
| 43 | `lemma` | [insert_id_lhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/insert-id-lhs--d8776f3a39d86734b1694d71.md) | 306 | `result-track:d8776f3a39d86734b1694d71abcaebafc40568ca6f1e05d4a3b189bbc8ac0d62` |
| 44 | `lemma` | [insert_id_rhs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/insert-id-rhs--2ef6e98240a40fac47aac7b0.md) | 310 | `result-track:2ef6e98240a40fac47aac7b0c938f03f412ab2e49440f006aa922239a958273c` |
| 45 | `def` | [insertTrailingIds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/inserttrailingids--cc2ccc113db40bac1b06edbd.md) | 315 | `declaration-track:cc2ccc113db40bac1b06edbd1f62206f596a2451c9dd1bb75f8c7aacea16e971` |
| 46 | `def` | [coherence_loop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/coherence-loop--f4113d66749ab148165c8a79.md) | 330 | `declaration-track:f4113d66749ab148165c8a79417037c870b1d75ace56e35011c40aacd094f0aa` |
| 47 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/syntax--bc8588418720ea4bbd71a1b8.md) | 373 | `declaration-track:bc8588418720ea4bbd71a1b80a99d5507bbb379462a6743ed99c95660acdcf4c` |
| 48 | `elab_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant844ac5a126a8590da55ca54739c2706f30ff383cb0d2a56016f1bc47bb5ebc84.lean/declarations/elab-rules--890aa9604d390a18bbf0aaca.md) | 376 | `declaration-track:890aa9604d390a18bbf0aaca6a1f4647f948be89c888a86139d18867d6896014` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
