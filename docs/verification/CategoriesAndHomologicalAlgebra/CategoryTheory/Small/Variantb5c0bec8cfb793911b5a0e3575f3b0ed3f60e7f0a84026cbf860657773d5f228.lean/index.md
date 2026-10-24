# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Small.Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ab27679b52eafffe56520bc374e3e916ed237e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ab27679b52eafffe56520bc374e3e916ed237e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EssentiallySmall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [filteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/filteredclosure--3c9f5edc49afc33a3665cdd7.md) | 32 | `declaration-track:3c9f5edc49afc33a3665cdd70e21f38d625b8d00b0c5d54e264727be33c2274c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--d493865cd2ca347ceeb41919.md) | 41 | `declaration-track:d493865cd2ca347ceeb41919f43af0dff967f3e1fac0728b747fef9ee62f5306` |
| 3 | `inductive` | [InductiveStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inductivestep--aa5e0e5e683c1afd2c748ae2.md) | 66 | `declaration-track:aa5e0e5e683c1afd2c748ae261be1d4c888258c6d7ee89487193f4446392370e` |
| 4 | `def` | [inductiveStepRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inductivesteprealization--08df743f432cdd132d21c332.md) | 74 | `declaration-track:08df743f432cdd132d21c33271789f639c716a80a02edbab526f0e568550ae5e` |
| 5 | `def` | [bundledAbstractFilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/bundledabstractfilteredclosure--4c8bba3de1de2eccf712e4d4.md) | 84 | `declaration-track:4c8bba3de1de2eccf712e4d43180d19391e1c62f5ea3787c07b693281a5c19c6` |
| 6 | `def` | [AbstractFilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/abstractfilteredclosure--93bf9fac8af3adc0a08a9e8b.md) | 90 | `declaration-track:93bf9fac8af3adc0a08a9e8b3c97a230203bc5cf0705b27fecd359a0e7c708c5` |
| 7 | `def` | [abstractFilteredClosureRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/abstractfilteredclosurerealization--12ea7c1728782a8521446a11.md) | 94 | `declaration-track:12ea7c1728782a8521446a1149f98b1519851b67387a4fa734f90ff33c43ead7` |
| 8 | `theorem` | [small_fullSubcategory_filteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/small-fullsubcategory-filteredclosure--c8a0836132c0945607a4479a.md) | 99 | `result-track:c8a0836132c0945607a4479a1cd31362907bebad5d3b25ab311add169b9fec9f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--4557232b8250411928552124.md) | 119 | `declaration-track:4557232b8250411928552124a9264c28d3359667a6a2fb272db05dd94d1ea20f` |
| 10 | `def` | [SmallFilteredIntermediate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/smallfilteredintermediate--fed9d8a591dda2f4129baefa.md) | 132 | `declaration-track:fed9d8a591dda2f4129baefa9af67cc0988e5f0cef09b627509148252ab5479d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--2044ef13975a3acf80f1997c.md) | 135 | `declaration-track:2044ef13975a3acf80f1997cfaef864dd4bec6c387d3cd148625b4a4530f4999` |
| 12 | `def` | [factoring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/factoring--823fb062002f743da5450f26.md) | 142 | `declaration-track:823fb062002f743da5450f26d452be870d2f67c57c62df4163d26737aefb3ba5` |
| 13 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inclusion--4aa70110f1bbc4c34db0ce89.md) | 147 | `declaration-track:4aa70110f1bbc4c34db0ce899e5f66b5400aa59243f394332cd97f38b1ae3edf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--3642a2dcd8804dff1de04ffd.md) | 150 | `declaration-track:3642a2dcd8804dff1de04ffd2e307629c1be013054712f2bbcbacdab037c953a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--74197d750c0b72514ad6c777.md) | 153 | `declaration-track:74197d750c0b72514ad6c777d237b1acdfa11628883f9c99caf59b6fb2c86f21` |
| 16 | `def` | [factoringCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/factoringcompinclusion--3ee11515e4da1f4ed26c1af9.md) | 158 | `declaration-track:3ee11515e4da1f4ed26c1af93520f8303bed0830679c57f9809ad8afe59c28d2` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--6d8c27d120abf3212b7a97ac.md) | 161 | `declaration-track:6d8c27d120abf3212b7a97ac6b288154c90ff62d3cff1123334513d240d70e5f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--db5b5998eb6df31b06c2b046.md) | 164 | `declaration-track:db5b5998eb6df31b06c2b046c011c81a0cea048e85e68bcf5c6c457b44f50f1c` |
| 19 | `inductive` | [cofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/cofilteredclosure--6d37d32823fd708310a7a835.md) | 182 | `declaration-track:6d37d32823fd708310a7a835a868791fc4896456470e5614f8ec56f40b191b58` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--7782950904520e4793d59653.md) | 191 | `declaration-track:7782950904520e4793d5965348583f943e20e89d08cbe3e71ed26ff601ef8308` |
| 21 | `inductive` | [InductiveStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inductivestep--12991244f7fc405a953ba7c3.md) | 201 | `declaration-track:12991244f7fc405a953ba7c3b91f0d8ca4e738c9a317c06087b7fb9a27275532` |
| 22 | `def` | [inductiveStepRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inductivesteprealization--815c55bad64e6f16802b9f82.md) | 209 | `declaration-track:815c55bad64e6f16802b9f821d196412042775fca431254e283355ade4676928` |
| 23 | `def` | [bundledAbstractCofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/bundledabstractcofilteredclosure--155ab97ba23ceaecb01d6a2c.md) | 219 | `declaration-track:155ab97ba23ceaecb01d6a2cf0ee3526ed4ca9da452a946bad048ec7b7f6ac34` |
| 24 | `def` | [AbstractCofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/abstractcofilteredclosure--09a81b477adf992d4f11e62f.md) | 226 | `declaration-track:09a81b477adf992d4f11e62ff192ce1795057a126387903bc82689379743cd2a` |
| 25 | `def` | [abstractCofilteredClosureRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/abstractcofilteredclosurerealization--1aeb8f521d979468cdb82078.md) | 231 | `declaration-track:1aeb8f521d979468cdb820781a4f52110e5ae1ddccef8232dfce6cf544dd1672` |
| 26 | `theorem` | [small_fullSubcategory_cofilteredClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/small-fullsubcategory-cofilteredclosure--0a7153f3ab478a753870ea90.md) | 236 | `result-track:0a7153f3ab478a753870ea905982e7c7ec9de07e825e9b58931544333d6afc5d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--3c20cfc88e65bd0fe190fe51.md) | 257 | `declaration-track:3c20cfc88e65bd0fe190fe513bbd49d3467d9d63cd707563b3d00b512bf6fb69` |
| 28 | `def` | [SmallCofilteredIntermediate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/smallcofilteredintermediate--88ba10cd268f5ea4280c3fd8.md) | 271 | `declaration-track:88ba10cd268f5ea4280c3fd8b169ee06367209feff1eff7c8e80e9f288debffa` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--a6640355b0d1b8566c7cf94b.md) | 274 | `declaration-track:a6640355b0d1b8566c7cf94bb9d5a31461425ed63036248a17498886a56d7a43` |
| 30 | `def` | [factoring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/factoring--23d520297cbe779b0167bb71.md) | 281 | `declaration-track:23d520297cbe779b0167bb712064425cabc2f3a217faf63ff86120d5899cbafb` |
| 31 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/inclusion--1158a32ee6db191d691b8615.md) | 286 | `declaration-track:1158a32ee6db191d691b8615ebb5af1c17587510806d002a1827faec7b3a233e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--f6bdb7087b1d29de27bdca2c.md) | 289 | `declaration-track:f6bdb7087b1d29de27bdca2c426c5c3a01ed8386c03c34729edb2ed99f99a178` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--84929c4ffa9379245b841493.md) | 292 | `declaration-track:84929c4ffa9379245b8414934a587298470aba5481a91cc99807b49e51b15da3` |
| 34 | `def` | [factoringCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/factoringcompinclusion--c77aae7853dd81ffdbbbf93e.md) | 297 | `declaration-track:c77aae7853dd81ffdbbbf93eb85bebf1d80944c25dfb30f5a07069e67c7ba769` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--44bbbbe45c81410dafc16cf2.md) | 300 | `declaration-track:44bbbbe45c81410dafc16cf2683bccc0d016afc875f43ca7088f5f89f66fb345` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variantb5c0bec8cfb793911b5a0e3575f3b0ed3f60e7f0a84026cbf860657773d5f228.lean/declarations/instance--bb61c6ab577962cf3bb2e855.md) | 303 | `declaration-track:bb61c6ab577962cf3bb2e8554b384a73d282f183a741d02ad6dbaf39f7e2b8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
