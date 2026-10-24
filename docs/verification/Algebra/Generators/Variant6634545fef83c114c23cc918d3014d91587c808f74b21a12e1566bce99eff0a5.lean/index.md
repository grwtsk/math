# Verification target: GRWTSK.Algebra.Generators.Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc38c074ab0787fce0fc6bfe038df33d6828931",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc38c074ab0787fce0fc6bfe038df33d6828931`.

Source path: `GRWTSK/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Cotangent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Generators](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/algebra-generators--2fe293b9c3e96ed30d3fa0d2.md) | 65 | `declaration-track:2fe293b9c3e96ed30d3fa0d2affa8fac2ecbdaa5b32604e3d412f7a2e2ddcf15` |
| 2 | `abbrev` | [Ring](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ring--ae3694407ce87467dd0f94f2.md) | 88 | `declaration-track:ae3694407ce87467dd0f94f2a526490aef519d7f21dc6d54800eb0a1ef74b995` |
| 3 | `def` | [σ](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/anonymous--8986675fb871775e7c557266.md) | 91 | `declaration-track:8986675fb871775e7c557266b7e8a459865e5b9c4507f70d94d397b9a022f551` |
| 4 | `def` | [Simps.σ](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/simps--937b311c59fa2676065c6201.md) | 94 | `declaration-track:937b311c59fa2676065c62018773ab7393ce88958902de39d87fa03e41f4269f` |
| 5 | `lemma` | [aeval_val_σ](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/aeval-val--ee48c6aeb8cc85898faa17eb.md) | 99 | `result-track:ee48c6aeb8cc85898faa17ebdc314cf8ccf7c9762685d4e90f54a654c925095f` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/instance--5f32438159a461f2738f1f57.md) | 101 | `declaration-track:5f32438159a461f2738f1f57ae3ef747fe423dd29e517af3453c8d4f6a007884` |
| 7 | `lemma` | [algebraMap_apply](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/algebramap-apply--635de28b8b9541381391390e.md) | 106 | `result-track:635de28b8b9541381391390e4d62114ebcf4d5924a0c37e5b61abc603c1ac4b6` |
| 8 | `lemma` | [σ_smul](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/smul--87869b6b0b18d23210f0fadf.md) | 110 | `result-track:87869b6b0b18d23210f0fadf3795fb0c59383873c3b5acc08de3db0e3ba6cec0` |
| 9 | `lemma` | [σ_injective](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/injective--2b6aba9ade9b60644312be1d.md) | 113 | `result-track:2b6aba9ade9b60644312be1dae219fa8194937ec1c0e98a749b242f1f5ab3768` |
| 10 | `lemma` | [algebraMap_surjective](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/algebramap-surjective--5f381915420cc26461fc0883.md) | 117 | `result-track:5f381915420cc26461fc0883630feef70e1e8d837d4851f8d86e23021c0d9ca7` |
| 11 | `def` | [ofSurjective](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofsurjective--f21c63e3de821fa24501b5d8.md) | 125 | `declaration-track:f21c63e3de821fa24501b5d8960c6f2b0abb55559df5320fcd11d8b5a148b126` |
| 12 | `def` | [ofSurjectiveAlgebraMap](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofsurjectivealgebramap--f913a81ca044303868318dca.md) | 133 | `declaration-track:f913a81ca044303868318dca5804d580f5f2eb6b2a4c77c9bd0209c07773a399` |
| 13 | `def` | [id](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/id--2f9ae4b1772919d1b70676ee.md) | 140 | `declaration-track:2f9ae4b1772919d1b70676eedd792f94cd07f8a0f30ecf8a360370b031c47013` |
| 14 | `def` | [ofAlgHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofalghom--9bc182b999aa7afe8fee67f3.md) | 146 | `declaration-track:9bc182b999aa7afe8fee67f3aae54855da91836708de25ba2ec45b95d99887dd` |
| 15 | `def` | [ofSet](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofset--f916e8cf8d6f10550c56c76b.md) | 152 | `declaration-track:f916e8cf8d6f10550c56c76b307ceb665940202e2e39c1ac5b2cae28383d1114` |
| 16 | `def` | [self](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/self--dac80ded06d221251fb56772.md) | 161 | `declaration-track:dac80ded06d221251fb5677273f65464cf90bede4bb35a3c8ef14152b4e8339b` |
| 17 | `def` | [toExtension](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/toextension--00b849964ed56f8b668b7fe7.md) | 170 | `declaration-track:00b849964ed56f8b668b7fe7a533e75254ecb2591a9f84432c2716299f99b425` |
| 18 | `def` | [localizationAway](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/localizationaway--2a293f5aa83f697a372fe611.md) | 183 | `declaration-track:2a293f5aa83f697a372fe611814ef25fce6cfce7377f9d366e49936d60973f44` |
| 19 | `def` | [comp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/comp--b889e2ca614c6de13d72079f.md) | 206 | `declaration-track:b889e2ca614c6de13d72079f548a18224b7f4a12cbe7f8c4c99fafdc145bf9c7` |
| 20 | `def` | [extendScalars](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/extendscalars--9604dfecc07aeec191c876d6.md) | 223 | `declaration-track:9604dfecc07aeec191c876d6f0f342d724ffc0432b7599cb1e0fe7780c695827` |
| 21 | `def` | [baseChange](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/basechange--a72ff496bb458b9e64cab0eb.md) | 233 | `declaration-track:a72ff496bb458b9e64cab0eb5c8508ef4337457365541507aa2b50dab06b9937` |
| 22 | `def` | [reindex](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/reindex--5e9c81f369d1d751d97a96d8.md) | 261 | `declaration-track:5e9c81f369d1d751d97a96d86b56dcf35bbdb47c2d12d2e350e10afc2b616861` |
| 23 | `lemma` | [reindex_val](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/reindex-val--895bbe19457830569f49e0c0.md) | 271 | `result-track:895bbe19457830569f49e0c047108de7fdb8437812c5a1a261a8d9ea32f6c0ba` |
| 24 | `structure` | [Hom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom--3ad1181c8e182d009502f4c9.md) | 296 | `declaration-track:3ad1181c8e182d009502f4c9334899f5590acab90f41c213ada90612ee7f8eef` |
| 25 | `def` | [Hom.toAlgHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom--27061b5f48fd9f95d3761dfd.md) | 308 | `declaration-track:27061b5f48fd9f95d3761dfd4bb8a4d80a5c09e0f965decf2030ed2d4989fe6c` |
| 26 | `lemma` | [Hom.algebraMap_toAlgHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-algebramap-toalghom--8a917c03fd6f73ed052a9877.md) | 312 | `result-track:8a917c03fd6f73ed052a9877da798f0192a28962f122ceaa9dd2d21c993d5c6e` |
| 27 | `lemma` | [Hom.toAlgHom_X](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom-x--6c4fb7b3e86e30fc2df0bfb8.md) | 322 | `result-track:6c4fb7b3e86e30fc2df0bfb8035f6152c297be725d388a73e6b8bdee04c06b21` |
| 28 | `lemma` | [Hom.toAlgHom_C](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom-c--3f80bf87672b6b3451dd61ba.md) | 325 | `result-track:3f80bf87672b6b3451dd61ba9ada1ea0a8b4b8ab914268bd494920bdd2d3b6d6` |
| 29 | `lemma` | [Hom.toAlgHom_monomial](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom-monomial--6f0c09a1c971610e281dacc6.md) | 328 | `result-track:6f0c09a1c971610e281dacc6a4f65b61ca6b8ceb6fdc80cbd7dd3278b9c162b7` |
| 30 | `def` | [Hom.equivAlgHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-equivalghom--c0fe0789d7b1b9b3d768c304.md) | 337 | `declaration-track:c0fe0789d7b1b9b3d768c30450dadb809cec3a72c9c9485086711ae8f763b1f0` |
| 31 | `def` | [defaultHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/defaulthom--3454b13140c00b15143f1466.md) | 349 | `declaration-track:3454b13140c00b15143f1466a2fdaa348a2074727b153f820d3174cca02bf1f6` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/instance--6611479d23bcc5a4186bcba6.md) | 351 | `declaration-track:6611479d23bcc5a4186bcba65db8276e8675988dba4d4b25165bb4d2d0b767cd` |
| 33 | `def` | [Hom.id](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-id--b2430c59d9d6ed8f85bc94c2.md) | 355 | `declaration-track:b2430c59d9d6ed8f85bc94c2bd72b85ed1a00e03ebb44b5210d572488c205b92` |
| 34 | `lemma` | [Hom.toAlgHom_id](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom-id--6f25df9f486c236d3cdbcdf9.md) | 358 | `result-track:6f25df9f486c236d3cdbcdf9f38d2068207e41fe50d61da45bb3749a34760973` |
| 35 | `def` | [Hom.comp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-comp--bc902545ce07998623a74b2c.md) | 364 | `declaration-track:bc902545ce07998623a74b2c7aa6cbb3d7b9dcb486ae9472dd8cdf2e7c20538a` |
| 36 | `lemma` | [Hom.comp_id](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-comp-id--3def0a2888c52bb4d333390d.md) | 375 | `result-track:3def0a2888c52bb4d333390dd4b122d3cca290d6e39f86e0b29852768f0d6318` |
| 37 | `lemma` | [Hom.id_comp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-id-comp--7ba4f1e1b334c67dfbc0b46e.md) | 381 | `result-track:7ba4f1e1b334c67dfbc0b46e9fa1413d48e84f8d8209d881ce1358b13ed05574` |
| 38 | `lemma` | [Hom.toAlgHom_comp_apply](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toalghom-comp-apply--a6b259e024ab1ea53bd7a103.md) | 388 | `result-track:a6b259e024ab1ea53bd7a1032bae8a2bd361fdfad6d8e3e8378a0f5b5e5ffbae` |
| 39 | `def` | [toComp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/tocomp--35341bf3cd3f40bb82ae9863.md) | 404 | `declaration-track:35341bf3cd3f40bb82ae986300800cf89a8c5765e5580c122b2b4cfdb7c2402a` |
| 40 | `lemma` | [toComp_toAlgHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/tocomp-toalghom--05f0d9ef139eaadccc62ff92.md) | 408 | `result-track:05f0d9ef139eaadccc62ff92b2d9645ab2fcfb4890ba29c7f44c2586daaa6d4b` |
| 41 | `def` | [ofComp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofcomp--69f17927f5574d4ffa6076c9.md) | 415 | `declaration-track:69f17927f5574d4ffa6076c94d2bb295d0c7a1eead8a2d7c4634874a9aaa29b5` |
| 42 | `lemma` | [ofComp_toAlgHom_monomial_sumElim](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofcomp-toalghom-monomial-sumelim--56be38df495365f536b1a844.md) | 419 | `result-track:56be38df495365f536b1a8445ac32d6e2908b5db62b6d69426349070ebd4d87f` |
| 43 | `lemma` | [toComp_toAlgHom_monomial](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/tocomp-toalghom-monomial--b0d6b0791f22a401aeeed2e2.md) | 430 | `result-track:b0d6b0791f22a401aeeed2e24872db946cd865c351baaa523d48a02ba725d83c` |
| 44 | `lemma` | [toAlgHom_ofComp_rename](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/toalghom-ofcomp-rename--5f321ddd61001c4ef2ab0e8e.md) | 438 | `result-track:5f321ddd61001c4ef2ab0e8e655cb539228c04dff985d6879b59d20d5c582958` |
| 45 | `lemma` | [toAlgHom_ofComp_surjective](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/toalghom-ofcomp-surjective--89c5ccc997b63d7b9c4ca8a7.md) | 444 | `result-track:89c5ccc997b63d7b9c4ca8a7859b2ae447316b52bed73568e29229663e61e462` |
| 46 | `def` | [toExtendScalars](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/toextendscalars--446d9ef9ea483223d18c9364.md) | 468 | `declaration-track:446d9ef9ea483223d18c936493ee87c32f4ec0ff3bfbd889b9ee16f46df8b3af` |
| 47 | `def` | [Hom.toExtensionHom](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toextensionhom--7e635cf3968d18042d5943e3.md) | 476 | `declaration-track:7e635cf3968d18042d5943e362b9f90e11758233b15de8520e96aa023b567dd1` |
| 48 | `lemma` | [Hom.toExtensionHom_id](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toextensionhom-id--5c23f2179da37ba0e0d6cfbb.md) | 483 | `result-track:5c23f2179da37ba0e0d6cfbb7216d16c10290d13e594a93939afb77a1e1353aa` |
| 49 | `lemma` | [Hom.toExtensionHom_comp](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toextensionhom-comp--890310f11f363744dd67c56f.md) | 486 | `result-track:890310f11f363744dd67c56f8402a6f2ec1293f4b3e3e58b2cac50afa4cdc908` |
| 50 | `lemma` | [Hom.toExtensionHom_toAlgHom_apply](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/hom-toextensionhom-toalghom-apply--22cb0378d33d0089b1e03fa8.md) | 493 | `result-track:22cb0378d33d0089b1e03fa8d42df143a6bbd0baecb0c9a1e8aaceba2345a3c0` |
| 51 | `abbrev` | [ker](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ker--a7ffb45864884414fae30df7.md) | 498 | `declaration-track:a7ffb45864884414fae30df78af3045c07c6e1a73846ef4733d4cf00e325c885` |
| 52 | `lemma` | [ker_eq_ker_aeval_val](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ker-eq-ker-aeval-val--f8ff90fe00d3a1990ace4cba.md) | 500 | `result-track:f8ff90fe00d3a1990ace4cbae0fc271a2e6c0083fa3fc8ce8fef232662be2631` |
| 53 | `lemma` | [aeval_val_eq_zero](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/aeval-val-eq-zero--e029f88efdf171fe13a77592.md) | 505 | `result-track:e029f88efdf171fe13a7759280b4230e30a37832011f8aac411fce381d78fbc3` |
| 54 | `lemma` | [map_toComp_ker](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/map-tocomp-ker--a31e605ab97a230cf0600c1b.md) | 507 | `result-track:a31e605ab97a230cf0600c1b345fa38913c5bb96bd9f201cb79ae2df94d90a96` |
| 55 | `def` | [kerCompPreimage](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/kercomppreimage--ccb348c1b8bbf4460e249246.md) | 582 | `declaration-track:ccb348c1b8bbf4460e2492469cf51aa17ca30890f0a9bab4aebbcbcfe366787c` |
| 56 | `lemma` | [ofComp_kerCompPreimage](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ofcomp-kercomppreimage--27571ebbaa771280ea3589ab.md) | 598 | `result-track:27571ebbaa771280ea3589ab1438629ab4a086cbc5dd6e927cb9efabf6652f11` |
| 57 | `lemma` | [map_ofComp_ker](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/map-ofcomp-ker--f6b9bf4b10f60e8fe6ca2733.md) | 613 | `result-track:f6b9bf4b10f60e8fe6ca2733926e61e290108fd472d53522fcd07d4cd8ff2335` |
| 58 | `lemma` | [ker_comp_eq_sup](../../../../mathematics/Algebra/Generators/Variant6634545fef83c114c23cc918d3014d91587c808f74b21a12e1566bce99eff0a5.lean/declarations/ker-comp-eq-sup--72735680ea466b2158accca6.md) | 625 | `result-track:72735680ea466b2158accca651fe33c6ea2b3fc9b304365c2f2e49b013a41a24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
