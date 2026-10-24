# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce2a757133040e243f4ac2773021d049913e38c2",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce2a757133040e243f4ac2773021d049913e38c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Exp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LieDerivation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/liederivation--a934413f900af891afd94abd.md) | 41 | `declaration-track:a934413f900af891afd94abd09c744f947b6bf2e4419e31356b52b384c14de24` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--c16199db2c087d36c37cb3b9.md) | 58 | `declaration-track:c16199db2c087d36c37cb3b9b7cd1bcea38e53623c2068e64e61b3e8ee4a4e11` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instlinearmapclass--01b1a1579ba3d1d413eeb733.md) | 62 | `declaration-track:01b1a1579ba3d1d413eeb733281e6664ffa7f8b4af0a233906ba69ea282677b9` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/tofun-eq-coe--c2bdc20b71ad789953cfd97f.md) | 66 | `result-track:c2bdc20b71ad789953cfd97feb24bce69418a6e6baf9cf8c695cc7dd658e4bff` |
| 5 | `def` | [Simps.apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/simps-apply--55071d3e672dd44570ae60eb.md) | 69 | `declaration-track:55071d3e672dd44570ae60eb5c590039e6159a864bf8bb445ef5594f0acd9c63` |
| 6 | `instance` | [instCoeToLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instcoetolinearmap--c5933b861dbdb40a3e034ad7.md) | 75 | `declaration-track:c5933b861dbdb40a3e034ad7d24a48ad087c705dd3ac8e5d47e0a603b4b12848` |
| 7 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/mk-coe--48b89096b411c8b5e28779d4.md) | 79 | `result-track:48b89096b411c8b5e28779d4621c00b443c645b33314faf105ac9524a8f0b208` |
| 8 | `theorem` | [coeFn_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coefn-coe--8956f02711807eba16d3f2b6.md) | 83 | `result-track:8956f02711807eba16d3f2b6f55cf3935631903a19427ed1baab87ed3cc17034` |
| 9 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-injective--f7ad3ad4c1b7c008007c0fef.md) | 86 | `result-track:f7ad3ad4c1b7c008007c0fefef0f11cbc40329678ddb30b8975deef30d7880cf` |
| 10 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/ext--2c64f371f31ed40f602c19d9.md) | 90 | `result-track:2c64f371f31ed40f602c19d9361fd6b516f43868a97cefe2d2b471cfaad404a7` |
| 11 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/congr-fun--eb60ebf0652d56fb08320e86.md) | 93 | `result-track:eb60ebf0652d56fb08320e86c3a9eb41ff816e6ae589f411e9ff881476058f9f` |
| 12 | `lemma` | [apply_lie_eq_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/apply-lie-eq-sub--19137cc754ee0888a12698b4.md) | 97 | `result-track:19137cc754ee0888a12698b438a9e29d53f2631e5a12c3bc80c6387fe227bdd8` |
| 13 | `lemma` | [apply_lie_eq_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/apply-lie-eq-add--9776c8563e11c4afc6bad215.md) | 102 | `result-track:9776c8563e11c4afc6bad21546a6940e6c4b69faf3f0362d5e0bc339a368dd8f` |
| 14 | `theorem` | [eqOn_lieSpan](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/eqon-liespan--06163c4387e85650cb698842.md) | 107 | `result-track:06163c4387e85650cb6988422ae516c14fad1d9dd05d4873e5b2c83dac86b7aa` |
| 15 | `theorem` | [ext_of_lieSpan_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/ext-of-liespan-eq-top--2733023c9d002fbb0daa2f04.md) | 119 | `result-track:2733023c9d002fbb0daa2f048556f5b50f4de9180e01032fc2394d390db3a236` |
| 16 | `theorem` | [iterate_apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/iterate-apply-lie--95d7427a45088cbd1aacd805.md) | 128 | `result-track:95d7427a45088cbd1aacd805e40a24dea52f67da0ff5c8c92af3a7986c9b3f88` |
| 17 | `theorem` | [iterate_apply_lie'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/iterate-apply-lie--6732c32ba57206d396cfae43.md) | 140 | `result-track:6732c32ba57206d396cfae43e27b50e50419d796e4f40531a354ae3bb5428d7f` |
| 18 | `instance` | [instZero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instzero--ce8f05b7cd129b888bc9d112.md) | 147 | `declaration-track:ce8f05b7cd129b888bc9d1128b5f8c8d42b8fda342749dda2f3cd082e598f72c` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-zero--4b9e733a70cfc0c1e2c82018.md) | 153 | `result-track:4b9e733a70cfc0c1e2c82018b940eace00809050a36fa580e0edb9c61859f97d` |
| 20 | `theorem` | [coe_zero_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-zero-linearmap--ad90b9ba8a3f56a30067af72.md) | 157 | `result-track:ad90b9ba8a3f56a30067af72e924744fcb5d17f87975a9b6c408311a54746daf` |
| 21 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/zero-apply--de73270d575461b5e48f2a62.md) | 160 | `result-track:de73270d575461b5e48f2a6268d08bb145e659f2a53eb3363112d0d615cd072c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--6d0e838a893d97863847e9a2.md) | 163 | `declaration-track:6d0e838a893d97863847e9a20ad268af83b9c21b291c5da8123da703e96c53f8` |
| 23 | `instance` | [instAdd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instadd--0c3499cd0a10611a41431632.md) | 166 | `declaration-track:0c3499cd0a10611a414316320d089a6648d9a75fbbb6a0158c23080d35820a8b` |
| 24 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-add--e173faf4c30eb2ec91a0c1b3.md) | 173 | `result-track:e173faf4c30eb2ec91a0c1b3a3811dfef97ecfad044af49f98d8af9a457d22c4` |
| 25 | `theorem` | [coe_add_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-add-linearmap--dc7c7b31f11855e0d31e2d03.md) | 177 | `result-track:dc7c7b31f11855e0d31e2d037f2dd5d87826b46153cdc9e1591bbfabebd8d53b` |
| 26 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/add-apply--2bd882a81cd568b6a6aa6dc8.md) | 180 | `result-track:2bd882a81cd568b6a6aa6dc8be869755aaaae29fa5c36ddec5fcf507159c697e` |
| 27 | `theorem` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/map-neg--24d3b6b34ab0243ac8f3c636.md) | 183 | `result-track:24d3b6b34ab0243ac8f3c63601115169f8b030fca8eedd7cc3455bde0d270c6b` |
| 28 | `theorem` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/map-sub--d8d7eb6c13f15fa395f4878d.md) | 186 | `result-track:d8d7eb6c13f15fa395f4878d0f8a1cd835f287097e8ae6a31703612a1c0c5274` |
| 29 | `instance` | [instNeg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instneg--f5d3ebca4022fcec0087e263.md) | 189 | `declaration-track:f5d3ebca4022fcec0087e263c033129e6c5d38fac98874843001ab6612e49588` |
| 30 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-neg--50cb889e497df13ca3039c0d.md) | 196 | `result-track:50cb889e497df13ca3039c0d6068bf6cd2287695317f9c4467e4f193efcfd324` |
| 31 | `theorem` | [coe_neg_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-neg-linearmap--8b5e45e3012a452179c0bf73.md) | 200 | `result-track:8b5e45e3012a452179c0bf73bc91eda089cd9bb8d58fc7ca671f7af0b6f9eeaa` |
| 32 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/neg-apply--93ddaed07e77e58eddbad870.md) | 203 | `result-track:93ddaed07e77e58eddbad87020fc7552acf3fa1cd68f01d2b7f3393785e14cf0` |
| 33 | `instance` | [instSub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instsub--a77cc1a0844eb84f78d168b0.md) | 206 | `declaration-track:a77cc1a0844eb84f78d168b08d2430554ac8cfa5a3d13a86087381d124273fe5` |
| 34 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-sub--358b7d4ce9b440dad703203e.md) | 212 | `result-track:358b7d4ce9b440dad703203eb6fbf062efae9ec097814fc6b4f8f24832a3c587` |
| 35 | `theorem` | [coe_sub_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-sub-linearmap--f4fc649b2b80abf5fc730366.md) | 216 | `result-track:f4fc649b2b80abf5fc730366df093790a17664054b392d8fdfb3d948584c7d06` |
| 36 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/sub-apply--b0b1d633d8fc4e599470a63d.md) | 219 | `result-track:b0b1d633d8fc4e599470a63dc19a1c6a1405373a08fd807a7017239cfbecdde5` |
| 37 | `class` | [SMulBracketCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/smulbracketcommclass--f466f661c4a5d09d0c808600.md) | 225 | `declaration-track:f466f661c4a5d09d0c80860062606277bd5969fa8738e7e63c4c4904b9d9175d` |
| 38 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instsmul--9d2e6941af20878394532318.md) | 234 | `declaration-track:9d2e6941af208783945323187c716a650b3ea2a1358a7eda6d40478083e037b2` |
| 39 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-smul--60ec633eea15740d15211216.md) | 241 | `result-track:60ec633eea15740d1521121685e83d3588bcd118d32640d0e199ba3ae8070a1e` |
| 40 | `theorem` | [coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coe-smul-linearmap--55e0d9525b7dc84a2cd3dafc.md) | 245 | `result-track:55e0d9525b7dc84a2cd3dafcb3ec0ce19a08544e794ef1bf2b982d3cf71895da` |
| 41 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/smul-apply--3829b0b7671c0317eeb36d1e.md) | 248 | `result-track:3829b0b7671c0317eeb36d1e5e51c5f65ce7f04f1b44b7046b0bc960b458b20b` |
| 42 | `instance` | [instSMulBase](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instsmulbase--ba79079543fb49f121759d18.md) | 251 | `declaration-track:ba79079543fb49f121759d18f583133c571ba8fe1a9721ce2ffcd0a92bccbb8b` |
| 43 | `instance` | [instSMulNat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instsmulnat--ea2aad853b43be1d95f40b1f.md) | 253 | `declaration-track:ea2aad853b43be1d95f40b1fbb3c5380cefe151fcd1fdc58ce5cfd66572dfb99` |
| 44 | `instance` | [instSMulInt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instsmulint--58d402debf12a4fea8f7b295.md) | 255 | `declaration-track:58d402debf12a4fea8f7b29577079702e7cce7f2e9931e5267ac9e7c7889ee58` |
| 45 | `instance` | [instAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instaddcommgroup--5dc16f60837408604f5b1a94.md) | 257 | `declaration-track:5dc16f60837408604f5b1a947f1922bd2d82eaa11e2287b07bc38648ea924f54` |
| 46 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coefnaddmonoidhom--758be1345b24d0d616f0165f.md) | 261 | `declaration-track:758be1345b24d0d616f0165f2943785ab1e1d96741221152ef4f04c3de5b7ee4` |
| 47 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/coefnaddmonoidhom-apply--d0b782ba7ab63310741e379b.md) | 267 | `result-track:d0b782ba7ab63310741e379b37699eb0f87ebf2d478d7d0d49fb082cbfadfdfe` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--d18a0d78cb415ab8dd10e7c8.md) | 269 | `declaration-track:d18a0d78cb415ab8dd10e7c817c1ed2d3a809957011b2937295376af1eb0cb30` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--2dedb7a3f031fdf32891953b.md) | 272 | `declaration-track:2dedb7a3f031fdf32891953b457b91f89c8b3e8515aa2ba0c2b856b8c308e320` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--916c2e11050c29bd0b3ded19.md) | 275 | `declaration-track:916c2e11050c29bd0b3ded19e1b872a896935d5b7577030d633cb7564a42a4ce` |
| 51 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instmodule--2aa9f4344598520dde460e15.md) | 280 | `declaration-track:2aa9f4344598520dde460e15f9b1fd110e8df67502c477adf6fcfde1dcea304d` |
| 52 | `instance` | [instBracket](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instbracket--f890faaa12dbf5caeae3cf46.md) | 291 | `declaration-track:f890faaa12dbf5caeae3cf4689c35f2070a22f42e664807fd021af582441e3f5` |
| 53 | `lemma` | [commutator_coe_linear_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/commutator-coe-linear-map--47b53714d04f813fb25af9f2.md) | 300 | `result-track:47b53714d04f813fb25af9f2dd96a262ade9741093f1204efcf274e044dfa05d` |
| 54 | `lemma` | [commutator_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/commutator-apply--bd3490dee827f26ca8b3722d.md) | 303 | `result-track:bd3490dee827f26ca8b3722df9d2afef51c7386cfe6d0f1a7e8c781c59760285` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instance--fcf425f7fc286bfc078da1c1.md) | 306 | `declaration-track:fcf425f7fc286bfc078da1c1641d5be90d566f7687b3da4c6b809570e708ff48` |
| 56 | `instance` | [instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instliealgebra--8e4b0d4f3f76a6f0fc5d15bc.md) | 317 | `declaration-track:8e4b0d4f3f76a6f0fc5d15bcead012f1a9c9170e56bf419a496ec4bc75fa7ef1` |
| 57 | `lemma` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/lie-apply--5f60ab60721117628705a94a.md) | 320 | `result-track:5f60ab60721117628705a94ac35efaa7b3705422bcd6ac545bbbf956b8fca21d` |
| 58 | `def` | [toLinearMapLieHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/tolinearmapliehom--dd4a866865f608ffe8b070cc.md) | 331 | `declaration-track:dd4a866865f608ffe8b070cc3f2d596b26aa9d31f50fe8e2f2ba72aa46fffe64` |
| 59 | `lemma` | [toLinearMapLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/tolinearmapliehom-injective--d8003ee963663f100df5f759.md) | 338 | `result-track:d8003ee963663f100df5f75931744af0e688d30a02633ef1d71d7661d7bf26b6` |
| 60 | `instance` | [instNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instnoetherian--a9766b4bf86e8f616d476266.md) | 342 | `declaration-track:a9766b4bf86e8f616d4762667d3a91b7dd80b6a7b77000863be872fbec4a0dd6` |
| 61 | `def` | [inner](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/inner--13b93d3eac666d37e769f65e.md) | 354 | `declaration-track:13b93d3eac666d37e769f65e58d511af3f87102506c21e520e9a1004165b171a` |
| 62 | `instance` | [instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instlieringmodule--4eec6393a45485ceb2dbfa3d.md) | 361 | `declaration-track:4eec6393a45485ceb2dbfa3d701c9074310d0bef22c10355541a781fe91d4f4b` |
| 63 | `lemma` | [lie_lieDerivation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/lie-liederivation-apply--d7dec85c20c21276b624194b.md) | 367 | `result-track:d7dec85c20c21276b624194b24566d57fdacc9921a2736686dd389b5ffc46fbf` |
| 64 | `lemma` | [lie_coe_lieDerivation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/lie-coe-liederivation-apply--50f331ed851e67f967bec741.md) | 371 | `result-track:50f331ed851e67f967bec7413986e5494d20619075ee7ba0d679b9bf4f70b864` |
| 65 | `instance` | [instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/instliemodule--4a5030008c0d0cc5a5350ed6.md) | 375 | `declaration-track:4a5030008c0d0cc5a5350ed6cb39b15dd92e0f8f765cd98cf5ccb73f10e0106d` |
| 66 | `lemma` | [leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/leibniz-lie--0dd51e442cbfe21dcdbb5c88.md) | 379 | `result-track:0dd51e442cbfe21dcdbb5c886a9b520444585c89646dacb9de11e8ae8e18a0f8` |
| 67 | `def` | [exp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/exp--bdd1b5bf58cd0c5830ff60d4.md) | 393 | `declaration-track:bdd1b5bf58cd0c5830ff60d43976ec657ee54af794214dd823d2f7a9e9b3c86b` |
| 68 | `lemma` | [exp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/exp-apply--57e5ff7c0875cd248eab45ef.md) | 409 | `result-track:57e5ff7c0875cd248eab45ef3fbfe36b560c79657ffa7b18e0996f98c79d76a4` |
| 69 | `lemma` | [exp_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb75706163724f6f8c67d37ab0017caa8d39733906031a3701135c746089f4c8.lean/declarations/exp-map-apply--b56aa89377f43696f04be740.md) | 413 | `result-track:b56aa89377f43696f04be740cd60a5c43e0b96fd74c40cf12641be64c14fcdfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
