# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6651c6d577115ede5c7449f6b53bbfae3c230ee",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6651c6d577115ede5c7449f6b53bbfae3c230ee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Types.Coyoneda` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Center` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EnrichedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedcategory--5c9f48bad83a1cc1181d528e.md) | 57 | `declaration-track:5c9f48bad83a1cc1181d528e069cf3f8c5727f9be4df9680f471da5e73220d07` |
| 2 | `def` | [eId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/eid--8768f9866a906649a5eb4f43.md) | 75 | `declaration-track:8768f9866a906649a5eb4f4380640fd1fcdda2ab3fae5c5cea2be40cb64acfe3` |
| 3 | `def` | [eComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/ecomp--93b3f93d60948f52bc5168b5.md) | 80 | `declaration-track:93b3f93d60948f52bc5168b51db2e7c9eddf41f80bdb1dd80e5ed3ca575af5ac` |
| 4 | `theorem` | [e_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/e-id-comp--7cd70b599efa2b62da2e5ddf.md) | 84 | `result-track:7cd70b599efa2b62da2e5ddfa943068c61b017a4fef055a9b51ec6fb76f924c9` |
| 5 | `theorem` | [e_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/e-comp-id--86350c7b1122f4cc772ce452.md) | 89 | `result-track:86350c7b1122f4cc772ce4523fb185c38c91407eec3c138b4e530bd8f61a0d0c` |
| 6 | `theorem` | [e_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/e-assoc--1ab6c93112bee3d065fdd6bd.md) | 94 | `result-track:1ab6c93112bee3d065fdd6bd785db4289c0acf9022135049267ce1808dbbe553` |
| 7 | `theorem` | [e_assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/e-assoc--dc7e39aaf13cea4560aef177.md) | 100 | `result-track:dc7e39aaf13cea4560aef17786ee3ef320ea5688646a4db7c13b01f28d8c2810` |
| 8 | `def` | [TransportEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/transportenrichment--75eb4c8731c544c43eba1ec9.md) | 114 | `declaration-track:75eb4c8731c544c43eba1ec98afeaaedc56cad64f371ee63a41934eb010cce44` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/instance--e1fa0673d6e6f20bdaac56c0.md) | 121 | `declaration-track:e1fa0673d6e6f20bdaac56c00e70a9b5797ebb40ae60fd6f5f5daa1c393664f5` |
| 10 | `def` | [categoryOfEnrichedCategoryType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/categoryofenrichedcategorytype--e8856b9d8d823af3cfdefcba.md) | 148 | `declaration-track:e8856b9d8d823af3cfdefcba2e055b055e2f538cfd3f4ead306721631f8c6460` |
| 11 | `def` | [enrichedCategoryTypeOfCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedcategorytypeofcategory--21069c43dd09fc629a0b57c1.md) | 159 | `declaration-track:21069c43dd09fc629a0b57c10cda7a5636a5dd8d3a4c4c3e9e3b6e8a2ca4e774` |
| 12 | `def` | [enrichedCategoryTypeEquivCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedcategorytypeequivcategory--3c5870eea2db902882607a44.md) | 170 | `declaration-track:3c5870eea2db902882607a44aed29000b6b7376f729406abc3560a54e1888e7a` |
| 13 | `def` | [ForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment--bfc475b30172a82271891716.md) | 199 | `declaration-track:bfc475b30172a82271891716436da74d9cdf264b2ad319cf3791db1af43acc8c` |
| 14 | `def` | [ForgetEnrichment.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-of--2d5dca98e7b489d72ec1b9db.md) | 206 | `declaration-track:2d5dca98e7b489d72ec1b9db76927be9aab0932e74c6a217247ff097e460a836` |
| 15 | `def` | [ForgetEnrichment.to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-to--d7c5fe230ad5b587821702f9.md) | 210 | `declaration-track:d7c5fe230ad5b587821702f974aeedcffba81a256dbc1f9522787049ff56ba7a` |
| 16 | `theorem` | [ForgetEnrichment.to_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-to-of--4eaa6ae6375af4706dac5d49.md) | 214 | `result-track:4eaa6ae6375af4706dac5d49e71a84cd6154afd5d11b2b24910ea86d15abce4b` |
| 17 | `theorem` | [ForgetEnrichment.of_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-of-to--6fefaaa3f80159f6ead9a155.md) | 218 | `result-track:6fefaaa3f80159f6ead9a15533c740b1c89cd22d9086970312abbafa200e8ece` |
| 18 | `instance` | [categoryForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/categoryforgetenrichment--8937fff7a9dcc3413ac3e091.md) | 222 | `declaration-track:8937fff7a9dcc3413ac3e0911e5765ce169c16ce1f4107612a1da5a74493c267` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/example--25e96d7733d148c526a100ad.md) | 228 | `declaration-track:25e96d7733d148c526a100ad05be2f8a47ea3974e78d032dc2f4ca1b156f3347` |
| 20 | `def` | [ForgetEnrichment.homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-homof--724d59014144d0795bd4985f.md) | 233 | `declaration-track:724d59014144d0795bd4985f87f1a053ccd32366216d63985bf9c1ac0cac727a` |
| 21 | `def` | [ForgetEnrichment.homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-homto--db9a68833456e16da7ef90aa.md) | 238 | `declaration-track:db9a68833456e16da7ef90aa0cfad4e1d64c2a939ad2180ebf16955a5ba39263` |
| 22 | `theorem` | [ForgetEnrichment.homTo_homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-homto-homof--f8132a8b292f39556657ff28.md) | 243 | `result-track:f8132a8b292f39556657ff28fc3392ed127ad0fb1adcc7f6f31fed4e6d492b39` |
| 23 | `theorem` | [ForgetEnrichment.homOf_homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-homof-homto--2a65b903b9df19c5debbb6bf.md) | 248 | `result-track:2a65b903b9df19c5debbb6bf9d8cf25ad75535c604e3ccb3d97b46795230af02` |
| 24 | `theorem` | [forgetEnrichment_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-id--a105b0609da95f2c66542c64.md) | 254 | `result-track:a105b0609da95f2c66542c642b4d1ab7f78a86b9650e58cf347b2a9f327cc684` |
| 25 | `theorem` | [forgetEnrichment_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-id--45b398128f5044c3c152e1b1.md) | 259 | `result-track:45b398128f5044c3c152e1b1c0b2351bbfca3c1dd15dfed33320504489a5665c` |
| 26 | `theorem` | [forgetEnrichment_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/forgetenrichment-comp--7359ccc315b3046bd8c86ea0.md) | 265 | `result-track:7359ccc315b3046bd8c86ea077af4aab2a8470e7196e92926f7a07336bfcd830` |
| 27 | `structure` | [EnrichedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctor--0cceb73751630cfdb363bafe.md) | 277 | `declaration-track:0cceb73751630cfdb363bafe8da2b6567f27ad0f4037852b15707a7c64f6a8e2` |
| 28 | `def` | [EnrichedFunctor.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctor-id--ee72c13b69aa25bea27dab13.md) | 295 | `declaration-track:ee72c13b69aa25bea27dab135fdaa35c935c39a79d549369160d9e7e05c82575` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/instance--8d7e0630d978e4190d9a7e9d.md) | 299 | `declaration-track:8d7e0630d978e4190d9a7e9d299c8fdbed4bf0dbea4cd4f6accfc4c5969d62e8` |
| 30 | `def` | [EnrichedFunctor.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctor-comp--4ca79bf286158c8b98464bb1.md) | 304 | `declaration-track:4ca79bf286158c8b98464bb19353b44c3d5b7d2f08caeb7b95be2d2b47229389` |
| 31 | `lemma` | [EnrichedFunctor.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctor-ext--914117a250e335d46dc2c957.md) | 310 | `result-track:914117a250e335d46dc2c9578c59560e268b4eedb5c947e2b2c823b197497a6c` |
| 32 | `def` | [EnrichedFunctor.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctor-forget--d28b407e8feb128facf373ad.md) | 327 | `declaration-track:d28b407e8feb128facf373ada3047617c26353db41cc4ece39eedcf7f8e27e4f` |
| 33 | `structure` | [GradedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/gradednattrans--d5ef3b3c11aa32d2e6798699.md) | 397 | `declaration-track:d5ef3b3c11aa32d2e67986991aeef327b5b3b1a80d873173d058b8587e6485f4` |
| 34 | `def` | [enrichedNatTransYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichednattransyoneda--2e8163a10bdc412652cea2a0.md) | 414 | `declaration-track:2e8163a10bdc412652cea2a00479fdafe17925183499352c8dd3f55486f32ce9` |
| 35 | `def` | [enrichedFunctorTypeEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichedfunctortypeequivfunctor--ccce996b311617c81f74da73.md) | 437 | `declaration-track:ccce996b311617c81f74da730355747a8d05c53a1fb346b6b3bdb041dd469fbd` |
| 36 | `def` | [enrichedNatTransYonedaTypeIsoYonedaNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant52e345cf3500c49827b0f5297ca17fd440582cac406baeba2cd2ce18ea2adf0d.lean/declarations/enrichednattransyonedatypeisoyonedanattrans--18c9fb918a0c441ec7c7876b.md) | 456 | `declaration-track:18c9fb918a0c441ec7c7876b50c4f34bdff7b34743e646e7e58b7730b6090ef9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
