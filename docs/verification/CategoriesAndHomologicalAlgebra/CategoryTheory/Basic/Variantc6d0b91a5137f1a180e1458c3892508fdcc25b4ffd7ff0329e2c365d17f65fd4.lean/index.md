# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c0fcb49e88c13cd186c502599e5d32931fcfe5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c0fcb49e88c13cd186c502599e5d32931fcfe5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/instance--d671dee24695a2342a413786.md) | 25 | `declaration-track:d671dee24695a2342a41378602427d1130fcb45a5e333e8020a1f2a160c962c1` |
| 2 | `theorem` | [forIn'_eq_forIn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/forin-eq-forin--998a754425b79cb0eb3a6495.md) | 28 | `result-track:998a754425b79cb0eb3a64951c1fbcfaf616ec0c67fb156f55b3c46c2fedc074` |
| 3 | `theorem` | [forIn_eq_forIn'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/forin-eq-forin--104c96d9ea1344ef4888f4c2.md) | 43 | `result-track:104c96d9ea1344ef4888f4c2fb8a86fa8cd643a8c74cda47c0afc2644c4933bb` |
| 4 | `def` | [ForInStep.value](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/forinstep-value--c6024bf1d9a85870d97d24fd.md) | 51 | `declaration-track:c6024bf1d9a85870d97d24fd00521df2fa381d6d248b4da8dd328d7ebc2c6c2d` |
| 5 | `theorem` | [ForInStep.value_done](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/forinstep-value-done--a4cfeaa7d639580c003d649b.md) | 56 | `result-track:a4cfeaa7d639580c003d649b133aa98c28b2af6061dc6eca1fd37ff70e005532` |
| 6 | `theorem` | [ForInStep.value_yield](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/forinstep-value-yield--e634f0981fb4b45b1984535d.md) | 57 | `result-track:e634f0981fb4b45b1984535db71f3196208d9aa178ca828e10e6aa536a49a6a5` |
| 7 | `def` | [Functor.mapRev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/functor-maprev--291cedc5a2e21165d3ee106d.md) | 65 | `declaration-track:291cedc5a2e21165d3ee106dda14ece046ff11ec5324957fcfba948ea0955573` |
| 8 | `def` | [Functor.discard](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/functor-discard--1c0a764977ad7b211f7bd791.md) | 82 | `declaration-track:1c0a764977ad7b211f7bd7912e1b7476721e796bb1fc90c4a4d6f7ffacd5e5c4` |
| 9 | `class` | [Alternative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/alternative--777d116b14896e899259bc7e.md) | 100 | `declaration-track:777d116b14896e899259bc7e5de4ed537883a5b699a084b9c8cbfb1f6d0d517b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/instance--fd347e910122e703281da8ea.md) | 112 | `declaration-track:fd347e910122e703281da8ea8169245d182e990d0cd7e99face1cfde7a2d556e` |
| 11 | `def` | [guard](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/guard--76c77105eb7bc7ef77722afe.md) | 121 | `declaration-track:76c77105eb7bc7ef77722afe50fbbc4d84e85ae873c3c1da77a4f18e3c165f96` |
| 12 | `def` | [optional](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/optional--883a51cc96ed52126776c3ea.md) | 127 | `declaration-track:883a51cc96ed52126776c3eac291becece1f4ef9aeb9ef2b6a704b111b2c37ef` |
| 13 | `class` | [ToBool](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/tobool--0f35065d7aec813c4587f435.md) | 130 | `declaration-track:0f35065d7aec813c4587f43525ffdfa9df80c49f0b7e29b92556b6a28806ec18` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/instance--60e2137ad71494cc36f0b984.md) | 135 | `declaration-track:60e2137ad71494cc36f0b98488981bb20f29ee5298f06f4c9193fab1c9e8d9cf` |
| 15 | `def` | [bool](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/bool--7757e5477a9f3d4223dfc8ee.md) | 138 | `declaration-track:7757e5477a9f3d4223dfc8ee79120b7100c11da110a4a4b0c42cc0d29314a09c` |
| 16 | `def` | [orM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/orm--3f0ce8ac802252a8b06d93a5.md) | 150 | `declaration-track:3f0ce8ac802252a8b06d93a59ec16296c5d8d01169c19d86d149f07896437f98` |
| 17 | `def` | [andM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/andm--331d7cdcdd9ad3a466b9a97b.md) | 167 | `declaration-track:331d7cdcdd9ad3a466b9a97baeb2fd8057505361a8f1534d64564df6bdf5fb8e` |
| 18 | `def` | [notM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/notm--75743dfbcb9f912ea300522f.md) | 180 | `declaration-track:75743dfbcb9f912ea300522f406dac7c4b7682a7376ed43e79951238d3cf3f89` |
| 19 | `class` | [MonadControl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/monadcontrol--b7506e3a33085fc08e4dc6bf.md) | 307 | `declaration-track:b7506e3a33085fc08e4dc6bfc3522315868fe7078e6c924a7ee832aebfcd36a3` |
| 20 | `class` | [MonadControlT](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/monadcontrolt--0c9bbe8cf5137e612fe10937.md) | 336 | `declaration-track:0c9bbe8cf5137e612fe10937eac2fbf2409f4a7ebdf501c32d4c27103716fc8e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/instance--216284b8311b633fe690a036.md) | 359 | `declaration-track:216284b8311b633fe690a0362a59f2af2054370019e5aeb9be00f7740a665041` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/instance--b2630baab5c4a3f968cbff09.md) | 364 | `declaration-track:b2630baab5c4a3f968cbff09f5b26c9657656207aa938990b1bb541214df3bb9` |
| 23 | `def` | [controlAt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/controlat--acf8756e9e9659070fd1d2e2.md) | 378 | `declaration-track:acf8756e9e9659070fd1d2e2d4668fe19f8313fb4e73f7588b9ff3d613b79d3e` |
| 24 | `def` | [control](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/control--8760142c288de02b47a46670.md) | 392 | `declaration-track:8760142c288de02b47a46670e320dcbc53cdc830f88c2f73112ecff10970e561` |
| 25 | `class` | [ForM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/form--a818143dbb2914a73db507d9.md) | 406 | `declaration-track:a818143dbb2914a73db507d926ecfa63b321b0d064f18046bbf4562172c0550d` |
| 26 | `def` | [Bind.kleisliRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/bind-kleisliright--cbd4a19b3e59c81b2481bd54.md) | 416 | `declaration-track:cbd4a19b3e59c81b2481bd54891fc792c07c4234066592bab77833a75f26e343` |
| 27 | `def` | [Bind.kleisliLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/bind-kleislileft--2163a218342b346e9a2bc186.md) | 421 | `declaration-track:2163a218342b346e9a2bc1867f6e84ba16d20333c231a6b6847e22a39f4d2bfd` |
| 28 | `def` | [Bind.bindLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc6d0b91a5137f1a180e1458c3892508fdcc25b4ffd7ff0329e2c365d17f65fd4.lean/declarations/bind-bindleft--04509ff1fea67255d250d1b0.md) | 426 | `declaration-track:04509ff1fea67255d250d1b06e94c94352fa2597ddd32880629062763d29d922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
