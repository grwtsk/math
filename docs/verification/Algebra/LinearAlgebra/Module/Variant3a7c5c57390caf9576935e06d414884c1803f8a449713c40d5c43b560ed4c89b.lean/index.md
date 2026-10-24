# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ff35426e6c3fb0b2c45a6129986e587274c446",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ff35426e6c3fb0b2c45a6129986e587274c446`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.DirectLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DirectLimit.Eqv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/directlimit-eqv--66f146075745f3cad476b3e7.md) | 46 | `declaration-track:66f146075745f3cad476b3e7df7084861a587cc31c4c378f8b7971f9c7329881` |
| 2 | `def` | [DirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/directlimit--f0909c097922668285210cea.md) | 53 | `declaration-track:f0909c097922668285210cea291914a9824e4ee1bfaeb5951c1ad9c817cf113f` |
| 3 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/addcommmonoid--150d597f199ebe2fa13a0ac6.md) | 59 | `declaration-track:150d597f199ebe2fa13a0ac6f7ebbf46a02ac7f8e617e401a770929d51f514ae` |
| 4 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/module--7f276921c071ee130c156927.md) | 62 | `declaration-track:7f276921c071ee130c1569270f71d4b7d0674e03bb8759db329e00bc10a7361e` |
| 5 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/addcommgroup--c8b64cf558063c22f43c3c2c.md) | 73 | `declaration-track:c8b64cf558063c22f43c3c2ce96325a7e345e0deb90acdf48f4ec0ddc7cb04b4` |
| 6 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/inhabited--13a5434d52953c277e13e4ef.md) | 77 | `declaration-track:13a5434d52953c277e13e4ef4032cb7959633aa14e75a05773bfe847a3c09927` |
| 7 | `instance` | [unique](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/unique--fed5ba70b2b48bfc4fd8ca50.md) | 80 | `declaration-track:fed5ba70b2b48bfc4fd8ca50abee5fb4f659190454f9bfd6c941abe5bc29e327` |
| 8 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of--efb4b7d3074a4c4c5b54e951.md) | 86 | `declaration-track:efb4b7d3074a4c4c5b54e9518499733de8a8e4ff0df3b86490eb4698bc045eac` |
| 9 | `theorem` | [quotMk_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/quotmk-of--37d513e5f4c47e1ddba13c43.md) | 91 | `result-track:37d513e5f4c47e1ddba13c436f6d365859978fe1c4e4da55f1ec775590568c2b` |
| 10 | `theorem` | [of_f](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of-f--21288ece5192aee964f9dede.md) | 94 | `result-track:21288ece5192aee964f9dedeb8ca657979d06693e4f786e04343bf28cd16ef7f` |
| 11 | `theorem` | [exists_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/exists-of--42f1790ff62e87d23dd4e1f8.md) | 99 | `result-track:42f1790ff62e87d23dd4e1f8ddfe36807b65913f95c4c286eb599aa2c8c3fcbc` |
| 12 | `theorem` | [exists_of₂](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/exists-of--af41226dabd5bd998e43e208.md) | 110 | `result-track:af41226dabd5bd998e43e2082a76984b995e6993a32010d393226efdafebd4da` |
| 13 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/induction-on--13b878a349cad89c2a2f905d.md) | 118 | `result-track:13b878a349cad89c2a2f905d94d05333d0f56c1ac87de948318ff024e711760e` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift--7caa0cc3a3994ac8427073ed.md) | 129 | `declaration-track:7caa0cc3a3994ac8427073eddeea128b31051432a2457f18ce158d2b3c89efeb` |
| 15 | `theorem` | [lift_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-of--2f4844a4c1ed43f6ba414610.md) | 137 | `result-track:2f4844a4c1ed43f6ba414610378c93f24fe1935151ca5231bd280380c934d65e` |
| 16 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-unique--53811c86efb31039431e0e9e.md) | 140 | `result-track:53811c86efb31039431e0e9e92431720b7e080e6f2927280f0a228ad2bc7f660` |
| 17 | `lemma` | [lift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-injective--1662e2f6a6dd04dc3a815c46.md) | 145 | `result-track:1662e2f6a6dd04dc3a815c46e5dd91606faa1fd462301c98f4cb8c4684398080` |
| 18 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map--402a17a3840ad55446365c2f.md) | 167 | `declaration-track:402a17a3840ad55446365c2f6d7018e5d8768e6efbf20224cc3e9babf8789a49` |
| 19 | `lemma` | [map_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-apply-of--3b504e0cbe4a50a7d96cfc0b.md) | 174 | `result-track:3b504e0cbe4a50a7d96cfc0b94f841cffab19ba56c9e7c0a74e2a387f7702c80` |
| 20 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-id--59d1481171f72c8198d396a4.md) | 180 | `result-track:59d1481171f72c8198d396a41dadc057ac81db52ff1f285f34fd013aae7ae735` |
| 21 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-comp--eed6fcf76dc13c6133690e98.md) | 185 | `result-track:eed6fcf76dc13c6133690e98cc23842b6e7d84c08346298d93e96ef2f82f35a6` |
| 22 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr--e7508ad3c709cb12d3091a46.md) | 204 | `declaration-track:e7508ad3c709cb12d3091a46da6c689b5e0641c6a5fd2eb5854fc09801ac1d6d` |
| 23 | `lemma` | [congr_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr-apply-of--250c67d53e97759cfd56eff8.md) | 212 | `result-track:250c67d53e97759cfd56eff820b878333bfd4c26bab1f9976493b4ac004018da` |
| 24 | `lemma` | [congr_symm_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr-symm-apply-of--761e4d16a03955ceea688dcd.md) | 218 | `result-track:761e4d16a03955ceea688dcde99aac3fd9b302320d8f3ad62f5b43a6c748b075` |
| 25 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/linearequiv--901980bf61236e7176532bb3.md) | 236 | `declaration-track:901980bf61236e7176532bb3fc7e9a2a1f7f2ff6dd08f42c81b447b179e3a041` |
| 26 | `theorem` | [linearEquiv_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/linearequiv-of--bc1a943ed8fb8b910e95a1fc.md) | 243 | `result-track:bc1a943ed8fb8b910e95a1fcdda020193601202a4c3b57511bd68cec308492c7` |
| 27 | `theorem` | [linearEquiv_symm_mk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/linearequiv-symm-mk--a8b85200880924519c0c5e40.md) | 246 | `result-track:a8b85200880924519c0c5e4013e41b96201e9aa091955419142606550f8d013a` |
| 28 | `theorem` | [exists_eq_of_of_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/exists-eq-of-of-eq--6b78c968cb392f742f01e6c3.md) | 252 | `result-track:6b78c968cb392f742f01e6c3ee54efc40741c03d2dd2d06128d41165d8bd8705` |
| 29 | `theorem` | [of.zero_exact](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of-zero-exact--d1c052b79022618da5f3f1ec.md) | 262 | `result-track:d1c052b79022618da5f3f1ec53445d3c93629aef9816ba169dc1c24d69971d41` |
| 30 | `def` | [DirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/directlimit--db5b9804ed439c61b265c2ca.md) | 276 | `declaration-track:db5b9804ed439c61b265c2ca48aab77652bcd8e6dad94aacfe8c8f7130e6a545` |
| 31 | `instance` | [directedSystem](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/directedsystem--9b988699b7c8091149346e69.md) | 283 | `declaration-track:9b988699b7c8091149346e698ddfe6a8206997eb37b9c76048a5b463d5cf106a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/instance--0e7eab3a991ca4c7d433c331.md) | 289 | `declaration-track:0e7eab3a991ca4c7d433c3313e17396574a3e1de526eaeda186f5e80420e4e9f` |
| 33 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/addcommgroup--37568df6db99de5cc134670d.md) | 292 | `declaration-track:37568df6db99de5cc134670d1e62afbbfceb40c068731243daea0a0b8f5480f1` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/instance--ad9d5c6e3856b4b822635670.md) | 296 | `declaration-track:ad9d5c6e3856b4b822635670c075409d38d34962610932bcbf0cecbe55ef7c97` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/instance--6c22210a6b664f4c64b48b39.md) | 299 | `declaration-track:6c22210a6b664f4c64b48b39fee363231787973b777f4843ca8b3289352db0de` |
| 36 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of--7d17e5270fe2a034cce057e3.md) | 302 | `declaration-track:7d17e5270fe2a034cce057e3fc4e535c951e0154118ebde82c5159b40b4df8fd` |
| 37 | `theorem` | [of_f](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of-f--6e4b8a8b61517894a317ffd8.md) | 308 | `result-track:6e4b8a8b61517894a317ffd8450d0ba5e4c7d6b1a6cde5cebc0176b27419340b` |
| 38 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/induction-on--3144e257efe9c57cd4b2283e.md) | 312 | `result-track:3144e257efe9c57cd4b2283e7016d39f93bb2f2b5b0bfc6f5048b0eb4d868d90` |
| 39 | `theorem` | [of.zero_exact](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/of-zero-exact--83014668cab79cadb4e7a080.md) | 318 | `result-track:83014668cab79cadb4e7a0806e8f28752ec9aef1e437de08d512a5c3eaf840ac` |
| 40 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift--e3a61f8035ba4f7a86ec4836.md) | 330 | `declaration-track:e3a61f8035ba4f7a86ec483606983013c23c2a8a0b033e706f869cde38b9a468` |
| 41 | `theorem` | [lift_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-of--4b62f1d62775c149e8f4a19e.md) | 337 | `result-track:4b62f1d62775c149e8f4a19e398dd9c07747e8eb4e5140b7bf6419c8fb364a1e` |
| 42 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-unique--ec8e87968ffd856ca43009d3.md) | 345 | `result-track:ec8e87968ffd856ca43009d3843ae27e07327aa08ac97becc0be76be73a8b9e7` |
| 43 | `lemma` | [lift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/lift-injective--30611d88a500d1c062dd2498.md) | 350 | `result-track:30611d88a500d1c062dd24984649f01c51c0f60ba071fc6d960ac2248564cc0e` |
| 44 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map--843be5b71af5ebdc0957c273.md) | 367 | `declaration-track:843be5b71af5ebdc0957c2735b686695ee31feedd1f1b38081a56fb63a733e00` |
| 45 | `lemma` | [map_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-apply-of--d4234ef8bac32ef8ee3a574e.md) | 375 | `result-track:d4234ef8bac32ef8ee3a574e27009722b7f53faf18f3fb968a1c4f222aef09e0` |
| 46 | `lemma` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-id--7b8d91ed17cb4623b1d54088.md) | 381 | `result-track:7b8d91ed17cb4623b1d54088bd2f72e139d54fb423bb2474bdb584878a23152b` |
| 47 | `lemma` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/map-comp--4d33622bbd33eec42361aa0e.md) | 386 | `result-track:4d33622bbd33eec42361aa0e376f3defa1b19b10eba2cbbd2e88ba3b8d8ca430` |
| 48 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr--0c7ac9791766cd199ba91cec.md) | 405 | `declaration-track:0c7ac9791766cd199ba91cec0bb1b009e6bf191bdc94c227daca7b8de66ebf79` |
| 49 | `lemma` | [congr_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr-apply-of--436fe5c99d1ada51b3299700.md) | 416 | `result-track:436fe5c99d1ada51b32997001caba448a0ca0be8bd4028ebd1bb20630a9317ac` |
| 50 | `lemma` | [congr_symm_apply_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3a7c5c57390caf9576935e06d414884c1803f8a449713c40d5c43b560ed4c89b.lean/declarations/congr-symm-apply-of--eaed32c550778aedabf801ff.md) | 422 | `result-track:eaed32c550778aedabf801ff725c0040495b8477b4553b731bef8aeb3d67e09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
