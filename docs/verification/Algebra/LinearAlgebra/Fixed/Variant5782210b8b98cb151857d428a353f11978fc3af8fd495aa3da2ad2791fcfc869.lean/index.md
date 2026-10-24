# Verification target: GRWTSK.Algebra.LinearAlgebra.Fixed.Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b281c48b243c545fd0fb30be71adfa2e9dea9d4",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b281c48b243c545fd0fb30be71adfa2e9dea9d4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Invariant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.GroupRingAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedBy.subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/fixedby-subfield--8f60028e80764928ba57de5a.md) | 55 | `declaration-track:8f60028e80764928ba57de5a65665636b9706f80fe057e5f3f52b1944ddc8296` |
| 2 | `class` | [IsInvariantSubfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/isinvariantsubfield--e0d6cdc470b26138ee163269.md) | 70 | `declaration-track:e0d6cdc470b26138ee1632693fc5e36ce605aafb5c76a49eaa83beb78ed14b3e` |
| 3 | `instance` | [IsInvariantSubfield.toMulSemiringAction](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/isinvariantsubfield-tomulsemiringaction--c4f3daa56b6f0bd0c299413c.md) | 76 | `declaration-track:c4f3daa56b6f0bd0c299413cdfeee4bf1bda0c8290f2a54172b2562fa1172fe8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/instance--d4ff0e5eef3b975d424efc91.md) | 87 | `declaration-track:d4ff0e5eef3b975d424efc915caccfa2e3009af3c4d06bca284ea9a137103d31` |
| 5 | `def` | [subfield](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/subfield--6454740da027e3af82823229.md) | 98 | `declaration-track:6454740da027e3af828232295d244127be37ebc43a78dedd7a3b4cb1b8800fd2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/instance--059d6c3b8c249f018a7610e8.md) | 103 | `declaration-track:059d6c3b8c249f018a7610e8f4c2a78cf64744061c45286a829c1147dd30990a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/instance--83a254c74b74c97788e8b26e.md) | 106 | `declaration-track:83a254c74b74c97788e8b26e4124c04fbc27d1b90188cbded680684fbc8a6857` |
| 8 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/smulcommclass--f2e9070fa9a8f2601e63278f.md) | 109 | `declaration-track:f2e9070fa9a8f2601e63278f104bfb884f408f46b083f76132531d7efc5322f9` |
| 9 | `theorem` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/smul--e9a14d3735509a5eb96eb8f2.md) | 114 | `result-track:e9a14d3735509a5eb96eb8f2ed1da5934821d1991aadc09e7c175d53bf8f3faf` |
| 10 | `theorem` | [smul_polynomial](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/smul-polynomial--626eea40bac8e16d68ec5aaa.md) | 120 | `result-track:626eea40bac8e16d68ec5aaae2477f28777d6fbc33bf0596a5059cc0671e4bd5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/instance--68f69637d736c11898a46fef.md) | 126 | `declaration-track:68f69637d736c11898a46fef05a1ad6a8404c0fc9ab30d171ae4f9c64abf3f49` |
| 12 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/coe-algebramap--fbd65f9ebd2ea99afc101bc9.md) | 128 | `result-track:fbd65f9ebd2ea99afc101bc96323e92c2d019a34bf4c0e5b6bd562b17be26c69` |
| 13 | `theorem` | [linearIndependent_smul_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/linearindependent-smul-of-linearindependent--252fe7c397290b8eb49cd406.md) | 133 | `result-track:252fe7c397290b8eb49cd406e618432b7cecec9c2ce74d7487a6bbaaab76a922` |
| 14 | `def` | [minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/minpoly--0ddcdd98bed5fe17e80c56c2.md) | 183 | `declaration-track:0ddcdd98bed5fe17e80c56c2f609992a3ca969d24366838391c3e2ed87b40271` |
| 15 | `theorem` | [monic](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/monic--daef14398bb87a4d26c5a2f6.md) | 191 | `result-track:daef14398bb87a4d26c5a2f6d7f0f6dcb9c2869a49c16f6d72de1457a92ad21c` |
| 16 | `theorem` | [eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/eval--a062c30d6a8b635eacd7fff6.md) | 196 | `result-track:a062c30d6a8b635eacd7fff6a231b90c2f6bf053f8aca4f64057c2269ec7a410` |
| 17 | `theorem` | [eval₂'](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/eval--18bc0edf20d4757879635f62.md) | 203 | `result-track:18bc0edf20d4757879635f621bb4eba7930439a2302fccd3c742f8563016c878` |
| 18 | `theorem` | [ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/ne-one--2bd40577d4373a565507b308.md) | 208 | `result-track:2bd40577d4373a565507b30820a8b6255151f66ecf87c454e506c0a6d414d172` |
| 19 | `theorem` | [of_eval₂](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/of-eval--91a44972e60a8ff870110dab.md) | 213 | `result-track:91a44972e60a8ff870110dabe263d9cd594acee42f5c60b2f49ec560afc2f707` |
| 20 | `theorem` | [irreducible_aux](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/irreducible-aux--4f9b6ee25f1e18a718cc8a3d.md) | 236 | `result-track:4f9b6ee25f1e18a718cc8a3ddb641ab3e3c1ecfa33c2e5faa39ef38a440f4c2a` |
| 21 | `theorem` | [irreducible](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/irreducible--db1a0270c69178e7c1803fb5.md) | 255 | `result-track:db1a0270c69178e7c1803fb5f4b1556106e64266634a5f8663e05a5b6d07607a` |
| 22 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/isintegral--d815910abffc59bb9b16107d.md) | 263 | `result-track:d815910abffc59bb9b16107d7435d4853436d216b18cc5ac863325207e180f72` |
| 23 | `theorem` | [minpoly_eq_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/minpoly-eq-minpoly--92b4f21744310da37b33914d.md) | 271 | `result-track:92b4f21744310da37b33914df55a70c4f0ee056c71158817c94edfaf1cf1a79b` |
| 24 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/rank-le-card--84cf717881d51b94a73ba59a.md) | 276 | `result-track:84cf717881d51b94a73ba59a927b6ddc698cd02df0d7e5d7a2b8d1c250774082` |
| 25 | `instance` | [normal](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/normal--1e882e8adfbec0371eca58c2.md) | 290 | `declaration-track:1e882e8adfbec0371eca58c2bded3f0f9c22cc42f8c929e6b88d6b018a5ed86a` |
| 26 | `instance` | [separable](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/separable--b75c47f23997f25fdfa1fe59.md) | 299 | `declaration-track:b75c47f23997f25fdfa1fe594a391144b362519f0da917eb61017fba69bc5341` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/instance--841df9e8a3eff01233c985ca.md) | 308 | `declaration-track:841df9e8a3eff01233c985caaa84a463d617f2ca0ddd0c437c891ec0d9909745` |
| 28 | `theorem` | [finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/finrank-le-card--ce5c6ba86b5f20371b051991.md) | 315 | `result-track:ce5c6ba86b5f20371b0519912d38b7301043dc597e30cccfa2fdb0077c602db6` |
| 29 | `theorem` | [linearIndependent_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/linearindependent-tolinearmap--66338a8069f8702b7d66bebd.md) | 322 | `result-track:66338a8069f8702b7d66bebd8159c83820d138edf53cad2bcc95b840c66136ca` |
| 30 | `theorem` | [cardinal_mk_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/cardinal-mk-alghom--b62d51338b21049c50d5bf00.md) | 332 | `result-track:b62d51338b21049c50d5bf00f0e44d0dee06983108fe6deb71ee161a9751ed1d` |
| 31 | `instance` | [AlgEquiv.fintype](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/algequiv-fintype--4fea45a208bd8e3ab1d1cff4.md) | 338 | `declaration-track:4fea45a208bd8e3ab1d1cff4ecd60baefb7ca13385ad57709664d6eb8136a01a` |
| 32 | `theorem` | [finrank_algHom](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/finrank-alghom--897cda1265a9e02f8aef62d2.md) | 343 | `result-track:897cda1265a9e02f8aef62d2ecf621bf7c2918f413f30bdc6402c714c9536234` |
| 33 | `theorem` | [finrank_eq_card](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/finrank-eq-card--38d00bd9967e58762d8ef667.md) | 350 | `result-track:38d00bd9967e58762d8ef6674c2d59ffbe5833e8b7b12168852156ba0e146162` |
| 34 | `theorem` | [toAlgHom_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/toalghom-bijective--24d81efe54c0aa6bdef24c0c.md) | 362 | `result-track:24d81efe54c0aa6bdef24c0c7369d80eb464b986bb94d84a87113e08adbeafcb` |
| 35 | `def` | [toAlgHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/declarations/toalghomequiv--0262cc1d3f3608de52d8bed5.md) | 376 | `declaration-track:0262cc1d3f3608de52d8bed5448fe2bc9cc47d89b5511d0bdda397dcc2b84780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
