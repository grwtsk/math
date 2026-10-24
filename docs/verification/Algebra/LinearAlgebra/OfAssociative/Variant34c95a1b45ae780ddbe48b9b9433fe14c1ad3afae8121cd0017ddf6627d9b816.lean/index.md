# Verification target: GRWTSK.Algebra.LinearAlgebra.OfAssociative.Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9220cf4e739fdfef4fc5a79bea65b2688b5fad05",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9220cf4e739fdfef4fc5a79bea65b2688b5fad05`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean.json)

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
| 1 | `def` | [ofAssociativeRing](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/ofassociativering--2e46b5064532749ff14285cd.md) | 58 | `declaration-track:2e46b5064532749ff14285cd24c152d54a40f49d4cc4c76b8ae795da78514b3f` |
| 2 | `theorem` | [of_associative_ring_bracket](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/of-associative-ring-bracket--5f4fc8b3628f6dfadcb810f0.md) | 65 | `result-track:5f4fc8b3628f6dfadcb810f024c2e5e355898e887c677afdeb131868a6f026be` |
| 3 | `theorem` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lie-apply--909788078bd8ee14468adad9.md) | 69 | `result-track:909788078bd8ee14468adad9e49dcea96a07e82021e041f3cdee1fc6236cdc84` |
| 4 | `abbrev` | [LieRingModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lieringmodule-ofassociativemodule--eb22e76d73cd4ada1a9d23d5.md) | 90 | `declaration-track:eb22e76d73cd4ada1a9d23d5be703fbb2f8977baa85fc9d4bfff060afb4d49cb` |
| 5 | `theorem` | [lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lie-eq-smul--1d1d22af84ab5d16d0d91329.md) | 98 | `result-track:1d1d22af84ab5d16d0d91329efffa4ab80b3b3956f8fa6e16edf282ba5a54bca` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/instance--0c32aa67a7a59b09bc76165e.md) | 109 | `declaration-track:0c32aa67a7a59b09bc76165e6b3f7af0242ff494eadf2cfb5c28ac1aadbfa8aa` |
| 7 | `theorem` | [LieModule.ofAssociativeModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liemodule-ofassociativemodule--fb7981d537d6a29202e72cf3.md) | 125 | `result-track:fb7981d537d6a29202e72cf366e3b62f80b296a2ccdc11d7b2d2f7f839ef8da4` |
| 8 | `instance` | [Module.End.instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/module-end-instlieringmodule--c48912d94731f64216551070.md) | 129 | `declaration-track:c48912d94731f64216551070f8233dd97648acbb34645e5b22ebce3dc285c34a` |
| 9 | `instance` | [Module.End.instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/module-end-instliemodule--29e8e1a796cf650aa05a263e.md) | 132 | `declaration-track:29e8e1a796cf650aa05a263e22b133270c9a580db94cc36f48005a6b54e481de` |
| 10 | `lemma` | [Module.End.lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/module-end-lie-apply--8bc4c6b7af4ce18a690b9e80.md) | 135 | `result-track:8bc4c6b7af4ce18a690b9e80586da9a85b27cada83970ac6c7cf7da57b47e308` |
| 11 | `theorem` | [Module.End.instLieRingModule_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/module-end-instlieringmodule-eq--007c44cdcd44d1bd75faea3e.md) | 141 | `result-track:007c44cdcd44d1bd75faea3e5259509c8cec8a95d944aec03996ca65949f05db` |
| 12 | `def` | [toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toliehom--642697394680fd371d9cd870.md) | 154 | `declaration-track:642697394680fd371d9cd87075b251d079ff5284dd40b46c474937099a100ee2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/instance--f61101ee8df2f686506216bf.md) | 158 | `declaration-track:f61101ee8df2f686506216bf17add7c09d848dc746a5505641948119765e7525` |
| 14 | `theorem` | [coe_toLieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/coe-toliehom--f8ffa8acc79bb2b8d1719c08.md) | 162 | `result-track:f8ffa8acc79bb2b8d1719c085a0b9a4395810017717d9979b47bb60ab24d73ec` |
| 15 | `theorem` | [toLieHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toliehom-apply--744c3e17b1e27e3fe63eceff.md) | 165 | `result-track:744c3e17b1e27e3fe63eceffbe2e60c695d6eaf44b6c532b4d4bd06a4e80a577` |
| 16 | `theorem` | [toLieHom_id](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toliehom-id--2c469f1e1887ed9db0953d1b.md) | 169 | `result-track:2c469f1e1887ed9db0953d1b0bd8d6298e477dc947ac68fb6e8b68868a9079c8` |
| 17 | `theorem` | [toLieHom_comp](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toliehom-comp--bd0cab2e3f2672ecc95cb448.md) | 173 | `result-track:bd0cab2e3f2672ecc95cb4485a459afe499cbd8dbf365d492ff306256c17f4ab` |
| 18 | `theorem` | [toLieHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toliehom-injective--6879f7e8eb489b6b1cffd5e4.md) | 176 | `result-track:6879f7e8eb489b6b1cffd5e4c7bc2a486794c2af0f4eec44d09c49ac2d10e396` |
| 19 | `def` | [LieModule.toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liemodule-toend--3fb0876fccc4a54879e7a0b1.md) | 197 | `declaration-track:3fb0876fccc4a54879e7a0b12b6d564c33ba46617bc2277d4dcb1f934a75e7e4` |
| 20 | `def` | [LieAlgebra.ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liealgebra-ad--77cc1f9d7b939b1e315f7d60.md) | 207 | `declaration-track:77cc1f9d7b939b1e315f7d601bd6e364ac46dd8373eac457e8cc5175fe5fc35d` |
| 21 | `theorem` | [LieAlgebra.ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liealgebra-ad-apply--bccac1691b7c01ef06dcdc5a.md) | 211 | `result-track:bccac1691b7c01ef06dcdc5a080f215d562428aca6be6c5a4215bf21295eee4e` |
| 22 | `theorem` | [LieModule.toEnd_module_end](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liemodule-toend-module-end--b8a8d75bf0f0b798e051a92f.md) | 215 | `result-track:b8a8d75bf0f0b798e051a92f9e5fa007256e2c2d6e94eef7f2dae6ed0f30e68b` |
| 23 | `theorem` | [LieSubalgebra.toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebra-toend-eq--47cec9d16ff1ba72c5cd94fa.md) | 218 | `result-track:47cec9d16ff1ba72c5cd94fa74b3923a97e9169ec99bbfb11a46a72f7555981d` |
| 24 | `theorem` | [LieSubalgebra.toEnd_mk](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebra-toend-mk--49f2050c6530cef6b3f30e73.md) | 223 | `result-track:49f2050c6530cef6b3f30e73d4870f051eabcecdb0352f9f9c2bacd21146b9a5` |
| 25 | `class` | [IsFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/isfaithful--2916e899d2def4c778198edd.md) | 235 | `declaration-track:2916e899d2def4c778198edd654c1e033e21e6b724ef70071b9d4404a7f43481` |
| 26 | `lemma` | [toEnd_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-eq-iff--c064163078fdc1c7a7604cf0.md) | 239 | `result-track:c064163078fdc1c7a7604cf0526804db469649331dd252843c614df22341bff4` |
| 27 | `lemma` | [ext_of_isFaithful](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/ext-of-isfaithful--a87176f3878b6eb64b1e97c7.md) | 244 | `result-track:a87176f3878b6eb64b1e97c74c8db4d90883b46774e9c79439cd611926ce55b3` |
| 28 | `lemma` | [toEnd_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-eq-zero-iff--f6e9f0edf8d8626a2f88c1d9.md) | 249 | `result-track:f6e9f0edf8d8626a2f88c1d98b34ba178c5931f5af91b2251eb556792e238a51` |
| 29 | `lemma` | [isFaithful_iff'](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/isfaithful-iff--9d6e5493091c6d7287ac5341.md) | 254 | `result-track:9d6e5493091c6d7287ac5341bd242456295e357c1686b2595d542f3b7a1648b3` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/instance--7e6781eadbef84d0035ee995.md) | 262 | `declaration-track:7e6781eadbef84d0035ee9952c49c580c3166bce18c355f4020479c7393b7658` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/instance--29288a58bfddec2a36ca7033.md) | 267 | `declaration-track:29288a58bfddec2a36ca70336b6960fd5617d788802580c6f141de890c6a1f64` |
| 32 | `lemma` | [LieSubmodule.coe_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubmodule-coe-toend--1f97352c8b2c2d092b4a5d03.md) | 279 | `result-track:1f97352c8b2c2d092b4a5d03fd6c807ae3f84cbdefdf163e01529c3fd0bbba90` |
| 33 | `lemma` | [LieSubmodule.coe_toEnd_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubmodule-coe-toend-pow--e075c6d80a474f73a85af0fe.md) | 282 | `result-track:e075c6d80a474f73a85af0fec6f44a6dba77cf02a202a15bf0e3f939ec2336ae` |
| 34 | `lemma` | [LieSubalgebra.coe_ad](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebra-coe-ad--e0e86dec50cd2cad948e34a1.md) | 288 | `result-track:e0e86dec50cd2cad948e34a1604e8056a033859a1be826a196c26e20429532e1` |
| 35 | `lemma` | [LieSubalgebra.coe_ad_pow](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebra-coe-ad-pow--0e11def45ef796170d0b243f.md) | 291 | `result-track:0e11def45ef796170d0b243f2cb1101f6eedb4d13961c4a95831ad0a7a831f6d` |
| 36 | `lemma` | [LieModule.toEnd_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liemodule-toend-lie--4f1cc342100b4c9dee326960.md) | 299 | `result-track:4f1cc342100b4c9dee326960d0760d83f0ae8460f03c4b4221781ed6c043dbfd` |
| 37 | `lemma` | [LieAlgebra.ad_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liealgebra-ad-lie--fd49a9521eb69dd115fdb9a9.md) | 303 | `result-track:fd49a9521eb69dd115fdb9a910da0a2354f73277bfa08a31868b2dbed4ea891a` |
| 38 | `lemma` | [LieModule.toEnd_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liemodule-toend-pow-lie--2ee6afbe72616db4a5e9fa81.md) | 308 | `result-track:2ee6afbe72616db4a5e9fa81aac7efc0cbaf0f5676cbe14b41da1c6bfba35525` |
| 39 | `lemma` | [LieAlgebra.ad_pow_lie](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liealgebra-ad-pow-lie--03fd27c6be2e8be6fd1114c2.md) | 324 | `result-track:03fd27c6be2e8be6fd1114c20af9bf298c4dbf0c8a1a11c5496440b3e726f428` |
| 40 | `lemma` | [toEnd_pow_comp_lieHom](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-pow-comp-liehom--855575f310adca15565a4785.md) | 338 | `result-track:855575f310adca15565a478572f598ed8c09c49f0e408feca246976f7b58d44b` |
| 41 | `lemma` | [toEnd_pow_apply_map](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-pow-apply-map--d018e768de73d262059271ea.md) | 344 | `result-track:d018e768de73d262059271ea60943443cbc24c5468620c530e4031e16fc26ed8` |
| 42 | `theorem` | [coe_map_toEnd_le](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/coe-map-toend-le--bc0cd0abbbc29b3798ff729b.md) | 356 | `result-track:bc0cd0abbbc29b3798ff729b3958410c7df801baacf319c65cdad9b378fd23d1` |
| 43 | `theorem` | [toEnd_comp_subtype_mem](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-comp-subtype-mem--8faa44b16d872b42ab902857.md) | 363 | `result-track:8faa44b16d872b42ab9028577fb1856a4b36b08c02d24f57bd0bd026d78fd170` |
| 44 | `theorem` | [toEnd_restrict_eq_toEnd](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/toend-restrict-eq-toend--921b796d799973288aedb405.md) | 368 | `result-track:921b796d799973288aedb40536043901e545eb262febae0799bead3ffd93f0e0` |
| 45 | `lemma` | [mapsTo_pow_toEnd_sub_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/mapsto-pow-toend-sub-algebramap--91770e8876bd5f99c337e71a.md) | 372 | `result-track:91770e8876bd5f99c337e71a44f86454ac3e2b55c24ab9b1e03941d6de64b363` |
| 46 | `theorem` | [LieAlgebra.ad_eq_lmul_left_sub_lmul_right](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liealgebra-ad-eq-lmul-left-sub-lmul-right--9db39ca57f64f85a004d8db3.md) | 381 | `result-track:9db39ca57f64f85a004d8db3d8a95b5e91dc16f60d5aa90d6c7a90bc6ae54604` |
| 47 | `theorem` | [LieSubalgebra.ad_comp_incl_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebra-ad-comp-incl-eq--7e3ad742ba328ad6d0b18ea6.md) | 385 | `result-track:7e3ad742ba328ad6d0b18ea60d66780d9a9b9ebccebabeb2a97a7003f07963e9` |
| 48 | `def` | [lieSubalgebraOfSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/liesubalgebraofsubalgebra--11b85705d3ed5152ada8f8c1.md) | 394 | `declaration-track:11b85705d3ed5152ada8f8c1978452af054f5a7bce2bd5cbae0efbd6a8e8fdbd` |
| 49 | `def` | [lieConj](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lieconj--7a0c8c9c11eee5c862d1ff83.md) | 411 | `declaration-track:7a0c8c9c11eee5c862d1ff836544bf6118e9e2742466a54edc19a89bd068b8c9` |
| 50 | `theorem` | [lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lieconj-apply--3b9feec0edc8cb61e9231d96.md) | 419 | `result-track:3b9feec0edc8cb61e9231d963ddc5ae0d3d16eafe86f2fa3a9a14ecce5e8afb8` |
| 51 | `theorem` | [lieConj_symm](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/lieconj-symm--85691b55496b41f44d8a3c71.md) | 423 | `result-track:85691b55496b41f44d8a3c7185c8a9d448b0fb0717d5d937644292243d8bd996` |
| 52 | `def` | [toLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/tolieequiv--34f39120b7537633abed99e4.md) | 435 | `declaration-track:34f39120b7537633abed99e4350bf5832db04c533e8f09f34dcb932a526df5c9` |
| 53 | `theorem` | [toLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/tolieequiv-apply--80085a8c1f8fc15afd05c29f.md) | 443 | `result-track:80085a8c1f8fc15afd05c29ff1f00290b52d4fad651f5f984974d7c3d647c3a7` |
| 54 | `theorem` | [toLieEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/tolieequiv-symm-apply--e3a57a8758ebd729d4e579eb.md) | 447 | `result-track:e3a57a8758ebd729d4e579ebb50972c9d7b813a5dde89cfa554110a43d6f3289` |
| 55 | `lemma` | [conj_ad_apply](../../../../../mathematics/Algebra/LinearAlgebra/OfAssociative/Variant34c95a1b45ae780ddbe48b9b9433fe14c1ad3afae8121cd0017ddf6627d9b816.lean/declarations/conj-ad-apply--4fda12641c7c1839c943b70c.md) | 463 | `result-track:4fda12641c7c1839c943b70c48e9bb008cb90cbafad49f675a38787a66682347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
