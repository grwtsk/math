# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaSpecAdjunction.Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6fbd7fd54059fc19b4a4117c86887875597888a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6fbd7fd54059fc19b4a4117c86887875597888a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Scheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ΓToStalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/tostalk--58b9bf24ce36d26703799525.md) | 74 | `declaration-track:58b9bf24ce36d26703799525b01915d7fa92f22016cb25bc8fe309a15969e4f9` |
| 2 | `def` | [toΓSpecFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specfun--fcb25da7a2879f942e927ef5.md) | 79 | `declaration-track:fcb25da7a2879f942e927ef5f8ccc7ea7b1e0896f27b872826fde33a87da37a9` |
| 3 | `theorem` | [not_mem_prime_iff_unit_in_stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/not-mem-prime-iff-unit-in-stalk--042450f7f8589c400cab3bfa.md) | 83 | `result-track:042450f7f8589c400cab3bfaa1d7e0aa7bce15e3a057ed9449a2f0aa240222ed` |
| 4 | `theorem` | [toΓSpec_preim_basicOpen_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-spec-preim-basicopen-eq--cb67cfdf512a59949b99ed8c.md) | 90 | `result-track:cb67cfdf512a59949b99ed8c4c05897a596ff11ce3782074ce16c4722bbdc694` |
| 5 | `theorem` | [toΓSpec_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-spec-continuous--1f02302065734db36e7a7997.md) | 97 | `result-track:1f02302065734db36e7a79973e55d7b01204d53cc8bc75d05987def38b8885db` |
| 6 | `def` | [toΓSpecBase](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specbase--5524d41704b953b6b476b68b.md) | 107 | `declaration-track:5524d41704b953b6b476b68b60de302353dc0429b60c46162621de2b573348ab` |
| 7 | `abbrev` | [toΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specmapbasicopen--df243147d8f8fd7dfd6c7032.md) | 115 | `declaration-track:df243147d8f8fd7dfd6c70329a279efc211b4938e5e55929d419d61f9940d2ee` |
| 8 | `theorem` | [toΓSpecMapBasicOpen_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specmapbasicopen-eq--2cb4aab71a958931a550a1d1.md) | 120 | `result-track:2cb4aab71a958931a550a1d1d09e87685fa3c649ba5b6f3fa4d4d7282a50c1ca` |
| 9 | `abbrev` | [toToΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/toto-specmapbasicopen--eca87efef590b766b9e33265.md) | 125 | `declaration-track:eca87efef590b766b9e33265f8fff819732efba015517f22e7b98b36f7f38131` |
| 10 | `theorem` | [isUnit_res_toΓSpecMapBasicOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/isunit-res-to-specmapbasicopen--d94e62607fcfc9dae0b5236d.md) | 131 | `result-track:d94e62607fcfc9dae0b5236d49ca6f9e4be1d18ce2d3213c8e4addb940e775ad` |
| 11 | `def` | [toΓSpecCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-speccapp--a5c6c6a74cac38bd4b439870.md) | 141 | `declaration-track:a5c6c6a74cac38bd4b439870fc337d8edc728689e95a34bb3794e816a7bbd561` |
| 12 | `theorem` | [toΓSpecCApp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-speccapp-iff--d8637068aeafee777ad1f6ac.md) | 149 | `result-track:d8637068aeafee777ad1f6ac8cc8c1d6f8d3a8a137356566729e454d046a5bf2` |
| 13 | `theorem` | [toΓSpecCApp_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-speccapp-spec--288aa949593bfe567b91c6b3.md) | 169 | `result-track:288aa949593bfe567b91c6b3bbc9d60190bca3886d24311d94705da3b3bb249d` |
| 14 | `def` | [toΓSpecCBasicOpens](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-speccbasicopens--353e695ac597e58de0414526.md) | 175 | `declaration-track:353e695ac597e58de041452620cbd7e41027dbbb825370bd983b67b752b21a6d` |
| 15 | `def` | [toΓSpecSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specsheafedspace--b61c84ea39280da0f3370051.md) | 190 | `declaration-track:b61c84ea39280da0f3370051e73b0a1e972aedebb9edd8eb99a607b81536222e` |
| 16 | `theorem` | [toΓSpecSheafedSpace_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specsheafedspace-app-eq--2cf75e5615d6add042fc911b.md) | 199 | `result-track:2cf75e5615d6add042fc911b05c87f3431e22eac45cc82d232a0de5fcecd93d7` |
| 17 | `theorem` | [toΓSpecSheafedSpace_app_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-specsheafedspace-app-spec--6c05799936aced0231705391.md) | 213 | `result-track:6c05799936aced02317053913acc19f69c390bba60c2cd90fea809742980ff37` |
| 18 | `theorem` | [toStalk_stalkMap_toΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/tostalk-stalkmap-to-spec--bd2e5886618ef8aa80032149.md) | 221 | `result-track:bd2e5886618ef8aa80032149fb6f23ea4b783a73509e7d6c57f84e3f716ba471` |
| 19 | `def` | [toΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/to-spec--d13edb48708bb5b8a22877ce.md) | 239 | `declaration-track:d13edb48708bb5b8a22877ce0f4601b688547d144697c4e5752db82cd717901f` |
| 20 | `theorem` | [comp_ring_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/comp-ring-hom-ext--390aac8ae2a87bf8fac19fac.md) | 266 | `result-track:390aac8ae2a87bf8fac19fac3b5aaf7a1d14c6aba45a99ea04545ec5942ab85c` |
| 21 | `theorem` | [Γ_Spec_left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/spec-left-triangle--252c0a1c0bda494bea14a614.md) | 288 | `result-track:252c0a1c0bda494bea14a6148a085fe61f4dfde0e4b16cfbfc39624f71c58657` |
| 22 | `def` | [identityToΓSpec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/identityto-spec--2d1655d5c2e2ae7ea724e975.md) | 300 | `declaration-track:2d1655d5c2e2ae7ea724e9756a6b99a340688ecb833164ce16ac71430d3f88bb` |
| 23 | `theorem` | [left_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/left-triangle--e715cc52da01a8bc5843186d.md) | 324 | `result-track:e715cc52da01a8bc5843186db076c548e846370b064e7ab104ea1e06c8749e58` |
| 24 | `theorem` | [right_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/right-triangle--43f89cebdd679d9ba4964247.md) | 330 | `result-track:43f89cebdd679d9ba496424728a2e3bbafa08d377d678b75866fbf14b0ef8e72` |
| 25 | `def` | [locallyRingedSpaceAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/locallyringedspaceadjunction--64dbd52f0b6e7f5fa2c55c4b.md) | 357 | `declaration-track:64dbd52f0b6e7f5fa2c55c4b68c94e23ab398910bd7355edb3c8526bf50335b7` |
| 26 | `lemma` | [locallyRingedSpaceAdjunction_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/locallyringedspaceadjunction-unit--0486f04729210bd5d0b017b7.md) | 375 | `result-track:0486f04729210bd5d0b017b7cb8e844e91d77877c088dcb507961eb096d6a4a4` |
| 27 | `lemma` | [locallyRingedSpaceAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/locallyringedspaceadjunction-counit--355838b315a413235195b51c.md) | 379 | `result-track:355838b315a413235195b51c93a22ea24b6a8a1cb32839feec101cdaf221aedc` |
| 28 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction--2ee8e9da18cebd45d1a32515.md) | 387 | `declaration-track:2ee8e9da18cebd45d1a32515036d0d87ce0b818e8b3c198f9dfa6acb13c848f2` |
| 29 | `theorem` | [adjunction_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-homequiv-apply--8950f58cbab7588221ce9f62.md) | 393 | `result-track:8950f58cbab7588221ce9f623f968f0c9654688c1ee9a7c9566e68149ee3c031` |
| 30 | `theorem` | [adjunction_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-homequiv--6f0a1a6be5b9a45fd2c397f0.md) | 401 | `result-track:6f0a1a6be5b9a45fd2c397f0f89cdaa05b9a47668df0cd2869fe7cafa5da7d9b` |
| 31 | `theorem` | [adjunction_homEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-homequiv-symm-apply--7e4ea2cc0df4e01ca91f45cc.md) | 406 | `result-track:7e4ea2cc0df4e01ca91f45cc28448d539e96346e65eed17592c7ed17908a1fdb` |
| 32 | `theorem` | [adjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-counit-app--07ce69faaffbc7d2f57ad0c8.md) | 413 | `result-track:07ce69faaffbc7d2f57ad0c8cdc1d1e4a952d2c26b16aa0d558abe6fba3b8d94` |
| 33 | `theorem` | [adjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-unit-app--de1f87ad5807eb0fb417ad50.md) | 421 | `result-track:de1f87ad5807eb0fb417ad50be18d85eec26b247bc8052c9e2bd61bff5d40fb2` |
| 34 | `instance` | [isIso_locallyRingedSpaceAdjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/isiso-locallyringedspaceadjunction-counit--9dbac9362958ad7ccabc2e4f.md) | 429 | `declaration-track:9dbac9362958ad7ccabc2e4f18b852f83e47bef12963639c2e3579d49adf9ab8` |
| 35 | `instance` | [isIso_adjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/isiso-adjunction-counit--eb556ad51ddea3070a70f336.md) | 435 | `declaration-track:eb556ad51ddea3070a70f33660f177884ad099282916a70ee78e215bfe79ed4d` |
| 36 | `theorem` | [adjunction_unit_app_app_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/adjunction-unit-app-app-top--82ec3c211e0c5eb03b6cbee7.md) | 442 | `result-track:82ec3c211e0c5eb03b6cbee76b75363e4a25abc674c776c7c17ad6a3c673ffa3` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--ae6512e3064dc657abe2caea.md) | 470 | `declaration-track:ae6512e3064dc657abe2caeaa6dbb7fbd1d6eb02131f0602e81249308d2ab8e9` |
| 38 | `instance` | [Spec.preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/spec-preserveslimits--2971301ba546da2564bba270.md) | 473 | `declaration-track:2971301ba546da2564bba2707a4b8858ca4cace307596b45b8564d0a7bf35560` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--84b13f23efeb3d32cae6a26d.md) | 478 | `declaration-track:84b13f23efeb3d32cae6a26dc7bebaf05a744305138f132db2f1cfe4974893c3` |
| 40 | `instance` | [Spec.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/spec-full--512d6bba1849f3e2ab770651.md) | 481 | `declaration-track:512d6bba1849f3e2ab77065191a0a1426fff524505083d292ea4e57ef8a5c9bc` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--e5363e160ee928ab931c0534.md) | 486 | `declaration-track:e5363e160ee928ab931c05346fc9a88b08480bb1100c2843083e91a5d4c96352` |
| 42 | `instance` | [Spec.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/spec-faithful--a95dfa1ed6ed26b84e4b160b.md) | 489 | `declaration-track:a95dfa1ed6ed26b84e4b160b6961171ad32143c603e9d8062fa2ab6d9991f3de` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--e2f7dc35f728727c0dd507dc.md) | 493 | `declaration-track:e2f7dc35f728727c0dd507dc49c87f9c4cc5a7b3c03d6cf3c031d97a4f395f3a` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--8f6cb7cb548e647ddd7ac392.md) | 496 | `declaration-track:8f6cb7cb548e647ddd7ac392768ba821a3f34c20ec66ffa0eac29cbdf6a3af48` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/instance--dc40cfedd7ecae8dadc1529e.md) | 499 | `declaration-track:dc40cfedd7ecae8dadc1529ec50ae3c79fb8916998e61e8b3ce01b12d97467ac` |
| 46 | `instance` | [Spec.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/declarations/spec-reflective--8571d4c6e9a7ebc8377ab0a1.md) | 502 | `declaration-track:8571d4c6e9a7ebc8377ab0a16b57cc64577b5e16d2f3f33e8d2fe278a7e3ef91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
