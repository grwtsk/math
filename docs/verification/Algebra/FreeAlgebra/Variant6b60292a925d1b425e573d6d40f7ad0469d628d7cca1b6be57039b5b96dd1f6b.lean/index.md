# Verification target: GRWTSK.Algebra.FreeAlgebra.Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "828542458aeb41b8cf08b916b1de9d7e975f0f65",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/index.md) · [Full source](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `828542458aeb41b8cf08b916b1de9d7e975f0f65`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Free` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/pre--7b9b8b4753311da00a0f58f2.md) | 69 | `declaration-track:7b9b8b4753311da00a0f58f27916b7aec4b583323c8c6cae81af98b4baad96a4` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--bb6a0af7efa1b806fad00b50.md) | 78 | `declaration-track:bb6a0af7efa1b806fad00b500c33467a657dc9e30517d613d15d5afc8969ae82` |
| 3 | `def` | [hasCoeGenerator](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hascoegenerator--cd0103ae43acdc86ce6403c0.md) | 82 | `declaration-track:cd0103ae43acdc86ce6403c038c1cefa5581b97f8bbca51b75a112c63e7e4252` |
| 4 | `def` | [hasCoeSemiring](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hascoesemiring--aaad7128434fa81b13698809.md) | 86 | `declaration-track:aaad7128434fa81b1369880963ffff95be51bfac964b4ab044cadabfaf58d445` |
| 5 | `def` | [hasMul](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hasmul--8351a52c82df501d3de9bdba.md) | 90 | `declaration-track:8351a52c82df501d3de9bdbae93112dcaeb6deba8de84f3735e3bbbfc47c254f` |
| 6 | `def` | [hasAdd](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hasadd--517f8d08a9f7a0b9fd4295e4.md) | 94 | `declaration-track:517f8d08a9f7a0b9fd4295e4159b00d39c7dabff3b203f5b73cc5f150425b858` |
| 7 | `def` | [hasZero](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/haszero--1965c4f5fecd10029eecb9be.md) | 98 | `declaration-track:1965c4f5fecd10029eecb9becf3d579777df3a33d01550edfff5e107caa60353` |
| 8 | `def` | [hasOne](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hasone--9ffa532ee9900042fa6ac117.md) | 102 | `declaration-track:9ffa532ee9900042fa6ac1173f5f2521310e2e3c97caf50aa71c9bc7f5f7d09f` |
| 9 | `def` | [hasSmul](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hassmul--dbc325e666986d10bc6cd809.md) | 108 | `declaration-track:dbc325e666986d10bc6cd80979cea6a676a3b35a7d7d219f6b97e0cbe655de7f` |
| 10 | `def` | [liftFun](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/liftfun--b29d50b28b061a14b8f38017.md) | 120 | `declaration-track:b29d50b28b061a14b8f38017b0746c7db629034df371b721ce49a5b2ee1efcc6` |
| 11 | `inductive` | [Rel](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/rel--6bb4776e605c97d9ecc3b500.md) | 131 | `declaration-track:6bb4776e605c97d9ecc3b500776dd18fb23a6d2f23a6aa72b227bd318a5b7301` |
| 12 | `def` | [FreeAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/freealgebra--d7baaf78c57bdfb32f433c26.md) | 162 | `declaration-track:d7baaf78c57bdfb32f433c266fd9a46ad58210ed89153f826cb91473a56d7490` |
| 13 | `instance` | [instSMul](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instsmul--04aeba69ba100789fb53f366.md) | 173 | `declaration-track:04aeba69ba100789fb53f366a1ed832cd638ba3856829b2b599c3c98cf1aa2d1` |
| 14 | `instance` | [instZero](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instzero--214f708f129ddddced142fdc.md) | 176 | `declaration-track:214f708f129ddddced142fdcf9c3fda8ea34d09fbf1dd5a5bee63ca48b302278` |
| 15 | `instance` | [instOne](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instone--b72c49ed5f07abc614a19552.md) | 178 | `declaration-track:b72c49ed5f07abc614a1955238028f432a5a081757c38acc5a847b9440d0b9c2` |
| 16 | `instance` | [instAdd](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instadd--94207f7c7f5a768c6d879444.md) | 180 | `declaration-track:94207f7c7f5a768c6d879444e701d0248169d2f16c8d120292fdf1f3107633eb` |
| 17 | `instance` | [instMul](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instmul--d6f3990d36b8b4c93a9cf8ba.md) | 183 | `declaration-track:d6f3990d36b8b4c93a9cf8ba7c22792e2e8eb4a49791c29d4eee66bce212e7b2` |
| 18 | `theorem` | [mk_mul](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/mk-mul--c7fa41bac341fd8a6438f826.md) | 187 | `result-track:c7fa41bac341fd8a6438f826076347a102297d77f8ca4fc3a68d13da3baeff47` |
| 19 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instmonoidwithzero--5ad5c5cf1355a7180440f94f.md) | 195 | `declaration-track:5ad5c5cf1355a7180440f94f5a69f90e6b6c54a187bde5518e271ac18e3a6ca5` |
| 20 | `instance` | [instDistrib](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instdistrib--9da11486b3f2c7158a25ac10.md) | 213 | `declaration-track:9da11486b3f2c7158a25ac100fcb26a70d5a4548d956f70784e3a6057e440907` |
| 21 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instaddcommmonoid--0b7de6aaf6e25e45f6ce3df1.md) | 221 | `declaration-track:0b7de6aaf6e25e45f6ce3df1e6cd2ba8551a836720335d0151e4002e7d66b447` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--4cc2853d41223f459163b9ae.md) | 248 | `declaration-track:4cc2853d41223f459163b9ae07e73130e5b2d1383fc071e3a4c30602de0f6e95` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--6d5c9fbc95d01db1e8c488ab.md) | 256 | `declaration-track:6d5c9fbc95d01db1e8c488abdeefa6b95edb453a5bc55f07581b66dc935a8f5b` |
| 24 | `instance` | [instAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instalgebra--fcb2a25e9639a5e720abbf53.md) | 259 | `declaration-track:fcb2a25e9639a5e720abbf53d3dbea16da68c3af1fbf20277dd161f18b3cb5ca` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/example--8461eae70e1b8f418dae4643.md) | 274 | `declaration-track:8461eae70e1b8f418dae46432345ebe0be6f99ea4b2245024433c6559acebf35` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--9f65275fb3295e4016a754ba.md) | 276 | `declaration-track:9f65275fb3295e4016a754ba3e58ee40b8c1b23b85f947674abb128e99f7bbf9` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--a31b59cbe8e5efe6146b6a76.md) | 286 | `declaration-track:a31b59cbe8e5efe6146b6a761894c8227a9c45c6b3c09a805f9bc9f37d030f66` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--aab4c5f6ba2be6bdb7aea0eb.md) | 291 | `declaration-track:aab4c5f6ba2be6bdb7aea0eb5ac45ea1e76c1302de21703ffb5cce7f36a35cca` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/example--ae01c60c1d2df176443f93cc.md) | 296 | `declaration-track:ae01c60c1d2df176443f93ccad23397e41ff115efa7a42c8c08fe38276a8327d` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/quot-mk-eq--21297d9c4cbb2a0308c88b52.md) | 306 | `result-track:21297d9c4cbb2a0308c88b523e189ff8c802b8f10d9bc83b2911864b02671832` |
| 31 | `def` | [liftAux](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/liftaux--af96c2d3ed26cd103d373260.md) | 312 | `declaration-track:af96c2d3ed26cd103d3732601108456fc8f38b8156d03f996fbf22fc7a71ad80` |
| 32 | `def` | [lift](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/lift--6cf24e55e57fcaeba2b2ecc9.md) | 367 | `declaration-track:6cf24e55e57fcaeba2b2ecc9a9797621cff48d3ab194c532b0912c8df7bf7816` |
| 33 | `theorem` | [liftAux_eq](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/liftaux-eq--0e0d6c9045ff4492d11f2de8.md) | 399 | `result-track:0e0d6c9045ff4492d11f2de8fc3f3c3ed51dcd14aca02138c5ae987314f55130` |
| 34 | `theorem` | [lift_symm_apply](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/lift-symm-apply--631dae744a9ec0e47cbf3a94.md) | 405 | `result-track:631dae744a9ec0e47cbf3a949d2a6a32565d0548905c7ff3c4bd0f90bfd6212d` |
| 35 | `theorem` | [ι_comp_lift](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/comp-lift--9980c8ba9a6ac7818ac97f7d.md) | 413 | `result-track:9980c8ba9a6ac7818ac97f7db00ddc37c9c4e44d71159f924e13d65a8cc6b5d0` |
| 36 | `theorem` | [lift_ι_apply](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/lift-apply--1fcb3c74931455897ad1a771.md) | 420 | `result-track:1fcb3c74931455897ad1a77136417712cfcf8b9c6d1871640b203abb1873af2b` |
| 37 | `theorem` | [lift_unique](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/lift-unique--0f39ff8c01843307bfc7a3c2.md) | 426 | `result-track:0f39ff8c01843307bfc7a3c23f2602b8586db9b45b73114671ca6b13b376b1b6` |
| 38 | `theorem` | [lift_comp_ι](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/lift-comp--62ca99d1dfac39d72abba6cc.md) | 442 | `result-track:62ca99d1dfac39d72abba6cce11096c8d22247a23777ea6beb362248dda1fc1a` |
| 39 | `theorem` | [hom_ext](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/hom-ext--9238cf0d93e4906adcd92396.md) | 450 | `result-track:9238cf0d93e4906adcd92396fc2e90c6a9ba68167d9aca3398e600d837f0f481` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/equivmonoidalgebrafreemonoid--2fc3c2d8e753f38cac44bb52.md) | 461 | `declaration-track:2fc3c2d8e753f38cac44bb5252d6a235a61e4666a7e8b8fad2dd3a123aff7c12` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/instance--a148e15cfe65bb73674c081b.md) | 478 | `declaration-track:a148e15cfe65bb73674c081b847c2bc77a180f2fe0184eba7fe7fb3d8f21ec96` |
| 42 | `def` | [algebraMapInv](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/algebramapinv--3291feeebcc6aeb0ae877c3e.md) | 484 | `declaration-track:3291feeebcc6aeb0ae877c3eaa23290124fcb1566dc0df97ae48659440d5f561` |
| 43 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/algebramap-leftinverse--7c9d2968b6250ec37bd79602.md) | 488 | `result-track:7c9d2968b6250ec37bd796025b63f5eb19b03101834b77a3db6e04eed9fa2b14` |
| 44 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/algebramap-inj--5d530350ffc74cb31f17e3f5.md) | 494 | `result-track:5d530350ffc74cb31f17e3f5dd0a856e379fdeb59a5375f374c0840d7ba34b84` |
| 45 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/algebramap-eq-zero-iff--d80f1ca696ec562faa233782.md) | 500 | `result-track:d80f1ca696ec562faa233782f3ff4191c92b9690fbb86857d133a3e15d883f54` |
| 46 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/algebramap-eq-one-iff--63feb284ae9401c9d8ee526f.md) | 505 | `result-track:63feb284ae9401c9d8ee526f52d574df359ba46e356741fc5cbd83ebd8abe8d1` |
| 47 | `theorem` | [ι_injective](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/injective--2ba637f459a1eb3af6f5c340.md) | 510 | `result-track:2ba637f459a1eb3af6f5c3401959f1de4f0c71d4c6463b71865f10c49c0bfa39` |
| 48 | `theorem` | [ι_inj](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/inj--e5e42c85d87f29f8d1b18399.md) | 522 | `result-track:e5e42c85d87f29f8d1b18399aee601e74353c11feffe54ff853adf7fff7e8800` |
| 49 | `theorem` | [ι_ne_algebraMap](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/ne-algebramap--2344877581fb6b585fdd696f.md) | 527 | `result-track:2344877581fb6b585fdd696fc7725184fa0d1e25b92816007852e3570f2e24f7` |
| 50 | `theorem` | [ι_ne_zero](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/ne-zero--2e6fa8709a0cd85bebf1a4f9.md) | 538 | `result-track:2e6fa8709a0cd85bebf1a4f994d5956c147402f09f50cc99c49f4568f708fa8e` |
| 51 | `theorem` | [ι_ne_one](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/ne-one--1e53807b49f4357b17d02ac4.md) | 543 | `result-track:1e53807b49f4357b17d02ac465684c2f266aebdb392a99c13f16842556bfceef` |
| 52 | `theorem` | [induction](../../../../mathematics/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/declarations/induction--1d8dd8a30636a172c302d12c.md) | 561 | `result-track:1d8dd8a30636a172c302d12cfe05ff5f850d2bd70827af1ac1614d2620146779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
