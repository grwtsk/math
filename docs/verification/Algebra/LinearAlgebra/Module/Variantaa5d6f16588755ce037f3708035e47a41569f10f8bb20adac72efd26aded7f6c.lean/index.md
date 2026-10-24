# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9405a6eeff22fe7bdfdf18fa2c313984df57277d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9405a6eeff22fe7bdfdf18fa2c313984df57277d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.SelfAdjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Star` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [star_natCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-natcast-smul--46362c98ff7c753c67a7beca.md) | 39 | `result-track:46362c98ff7c753c67a7becac7ea5b1fd37a60f6e50801f85923b55c990c1c98` |
| 2 | `theorem` | [star_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-intcast-smul--7c265f8981c4e1a25e28804b.md) | 44 | `result-track:7c265f8981c4e1a25e28804bc755c4e8c0f0f1cb6fba9c2d23bc9ee1e2fa6297` |
| 3 | `theorem` | [star_inv_natCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-inv-natcast-smul--9af8f0d9a6512c1411e2dd4b.md) | 49 | `result-track:9af8f0d9a6512c1411e2dd4bb622f0ce68c6115b1b8751d285797a6ae94f4573` |
| 4 | `theorem` | [star_inv_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-inv-intcast-smul--8d1263162e511904e4131f62.md) | 54 | `result-track:8d1263162e511904e4131f629cc45c214fda47a5e3768e5da86335ea8877a6b3` |
| 5 | `theorem` | [star_ratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-ratcast-smul--be747685bc5fec366bf163e8.md) | 59 | `result-track:be747685bc5fec366bf163e8d215e6b16ed99962adf7676d2cd72d9d7a5705e6` |
| 6 | `lemma` | [star_nnrat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-nnrat-smul--bcf609d4190f30715ea3056d.md) | 74 | `result-track:bcf609d4190f30715ea3056d403c2a5b174bd12fce34b13346455e6a7bf61015` |
| 7 | `lemma` | [star_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/star-rat-smul--7cebe47f35f7a387ed4c293e.md) | 80 | `result-track:7cebe47f35f7a387ed4c293e82e005a9be405f1553125eb6b057f505ceacb95f` |
| 8 | `instance` | [StarAddMonoid.toStarModuleNNRat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/staraddmonoid-tostarmodulennrat--467e289e5edb3f2258a07a27.md) | 94 | `declaration-track:467e289e5edb3f2258a07a274fffa5718d9d0c777adbf730dcc457df770cfeb4` |
| 9 | `instance` | [StarAddMonoid.toStarModuleRat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/staraddmonoid-tostarmodulerat--e7775b5c566dbd8e9ce1f6cf.md) | 97 | `declaration-track:e7775b5c566dbd8e9ce1f6cf88e5335f364b2b17d5babc17e54414d981158ca6` |
| 10 | `def` | [starLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/starlinearequiv--c7e652988a1092d79eed3d87.md) | 105 | `declaration-track:c7e652988a1092d79eed3d87addb3e45b0e0b5cab760f8002f547dce368ccbca` |
| 11 | `def` | [selfAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/selfadjoint-submodule--2c5b28c026fdcc49e3f14fd6.md) | 117 | `declaration-track:2c5b28c026fdcc49e3f14fd6133405d851b7e0f77bdb516e1fd277d1b3e684c9` |
| 12 | `def` | [skewAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/skewadjoint-submodule--9b9cc20d7824101682b5e0e8.md) | 121 | `declaration-track:9b9cc20d7824101682b5e0e8aff4ab2e5fe3a336e8e642bb7780fe995605491c` |
| 13 | `def` | [selfAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/selfadjointpart--56391323e4fcf50c1d846a3c.md) | 128 | `declaration-track:56391323e4fcf50c1d846a3c312c6f24440be72289131b6f595aca4a15b5d579` |
| 14 | `def` | [skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/skewadjointpart--1f80ba565677ac397bf1f558.md) | 141 | `declaration-track:1f80ba565677ac397bf1f5586631008ed29000100025e56bd3917cc44b8501fd` |
| 15 | `theorem` | [StarModule.selfAdjointPart_add_skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/starmodule-selfadjointpart-add-skewadjointpart--744c5b64225e847d535d128c.md) | 155 | `result-track:744c5b64225e847d535d128c07e26489578a72de2308758b9e58bb6d981c398b` |
| 16 | `theorem` | [IsSelfAdjoint.coe_selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/isselfadjoint-coe-selfadjointpart-apply--ccdf738497b5e830624cac6f.md) | 160 | `result-track:ccdf738497b5e830624cac6f81ac06099be1815215c769727fd6fdc2058b5860` |
| 17 | `theorem` | [IsSelfAdjoint.selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/isselfadjoint-selfadjointpart-apply--bd95db7f85af56e4c4199e0f.md) | 164 | `result-track:bd95db7f85af56e4c4199e0fcf9210517e597cbe6b4bb70893e82ff17857fe08` |
| 18 | `theorem` | [selfAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/selfadjointpart-comp-subtype-selfadjoint--b0c09e08b3b836f7a6a9ddef.md) | 169 | `result-track:b0c09e08b3b836f7a6a9ddef9c213dd213ae57b3219e1005497241046f175b17` |
| 19 | `theorem` | [IsSelfAdjoint.skewAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/isselfadjoint-skewadjointpart-apply--92b51dd45cf4592ac38e3dcd.md) | 173 | `result-track:92b51dd45cf4592ac38e3dcd0296a2b8f7a0420ce79ba4ae2a3d729e925d8c2f` |
| 20 | `theorem` | [skewAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/skewadjointpart-comp-subtype-selfadjoint--3c12873c6b7a9165aa5dc187.md) | 178 | `result-track:3c12873c6b7a9165aa5dc187baa1a4970ad2d50d819a1ef8ab7de86751187799` |
| 21 | `theorem` | [selfAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/selfadjointpart-comp-subtype-skewadjoint--d68b4f0b15a7efe6f20e3820.md) | 183 | `result-track:d68b4f0b15a7efe6f20e3820424c6d5f0e8df407b254b2d39a1fe3c66c119b63` |
| 22 | `theorem` | [skewAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/skewadjointpart-comp-subtype-skewadjoint--fe1e935b5bcd0f8cddf7c8cc.md) | 188 | `result-track:fe1e935b5bcd0f8cddf7c8cccb970664c8ea303d3f7743fad8b79a5fd3405ff7` |
| 23 | `def` | [StarModule.decomposeProdAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/starmodule-decomposeprodadjoint--97b3200d24ebbec3bd9c6343.md) | 199 | `declaration-track:97b3200d24ebbec3bd9c63438f425b307ce3dfd06f714c778e6aa6b7958db2bb` |
| 24 | `theorem` | [algebraMap_star_comm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/algebramap-star-comm--a03fba56292d8a09bf192558.md) | 214 | `result-track:a03fba56292d8a09bf192558352cb29b3593ccb9e08f513002041d0ad8805561` |
| 25 | `lemma` | [IsSelfAdjoint.algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/isselfadjoint-algebramap--51d521b04cae3a74c3ff8d2e.md) | 218 | `result-track:51d521b04cae3a74c3ff8d2e77e935c9bcf2bed0751a52bca3522aba1fc25645` |
| 26 | `lemma` | [isSelfAdjoint_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/declarations/isselfadjoint-algebramap-iff--a56b2a29e3e3844860570957.md) | 222 | `result-track:a56b2a29e3e3844860570957e5d1b70d2e067915d3f8254197b2175156bef910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
