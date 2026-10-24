# Verification target: GRWTSK.Algebra.Inverse.Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cc35f1e817a99fa5c37a870077fe0a6cdca298f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cc35f1e817a99fa5c37a870077fe0a6cdca298f`.

Source path: `GRWTSK/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/instance--7f9e0687c6482f6f14705107.md) | 54 | `declaration-track:7f9e0687c6482f6f14705107c089e60d24dd75ad4d57a53fb3a81c3cba77685b` |
| 2 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/inv-eq--68f3b3d4e7df81cc31e177e6.md) | 56 | `result-track:68f3b3d4e7df81cc31e177e63dd858c12596e78252a73d2fcf6d51ec83df3640` |
| 3 | `theorem` | [inv_zero'](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/inv-zero--fbc398d878e5871f9d8444c9.md) | 58 | `result-track:fbc398d878e5871f9d8444c94b31e0fe6b22f86d0317db019f4b0ca6adb2a511` |
| 4 | `theorem` | [inv_of_ne_zero](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/inv-of-ne-zero--fbfa1a3eff586e7e5e8611d2.md) | 60 | `result-track:fbfa1a3eff586e7e5e8611d25b929daf48acb74b87893fed9c1483566e8a3f6e` |
| 5 | `theorem` | [coe_inv_of_ne_zero](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/coe-inv-of-ne-zero--ad4ffaf1b28ca4b2d8cb0b4e.md) | 63 | `result-track:ad4ffaf1b28ca4b2d8cb0b4e0c60b67bbd9716715a414983c0eda63b73a940f3` |
| 6 | `theorem` | [mem_inv_iff](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/mem-inv-iff--1cc0165660a1cc7641d2d493.md) | 69 | `result-track:1cc0165660a1cc7641d2d493de686ec2f1e5eb8f217e1498306b1798dc467239` |
| 7 | `theorem` | [inv_anti_mono](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/inv-anti-mono--a5146c7bab35afce88f2011d.md) | 72 | `result-track:a5146c7bab35afce88f2011d4f9c6c90db00c6c3aa9139855523c871fa9031c4` |
| 8 | `theorem` | [le_self_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/le-self-mul-inv--f73cec9614e181868c03cff4.md) | 77 | `result-track:f73cec9614e181868c03cff4652bc6f44cbf22bc0cde65a5eec43ee08dcd078e` |
| 9 | `theorem` | [coe_ideal_le_self_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/coe-ideal-le-self-mul-inv--1ab3e145692f813f2c28a220.md) | 83 | `result-track:1ab3e145692f813f2c28a22095b7ae3393b794ebe94887997465c4ae42c6a104` |
| 10 | `theorem` | [right_inverse_eq](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/right-inverse-eq--cdf1939811cbc61c1bbf429d.md) | 88 | `result-track:cdf1939811cbc61c1bbf429d4570f83c03bf19fa798b64a46bd54b70d15a8716` |
| 11 | `theorem` | [mul_inv_cancel_iff](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/mul-inv-cancel-iff--0957a4d720a15c40b056e89b.md) | 91 | `result-track:0957a4d720a15c40b056e89ba3e77576ffe028e28e3a34ff539930d7009b1b38` |
| 12 | `theorem` | [mul_inv_cancel_iff_isUnit](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/mul-inv-cancel-iff-isunit--008b986bc4b5cf40902bffe0.md) | 94 | `result-track:008b986bc4b5cf40902bffe0cd10ea4b26b1a7658214e70ef3ab8683da4c3ee6` |
| 13 | `theorem` | [map_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/map-inv--24347112f154bc4c7b643d21.md) | 100 | `result-track:24347112f154bc4c7b643d21b552f9ffb50204d0c32b9218bcbed4845231c211` |
| 14 | `theorem` | [spanSingleton_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/spansingleton-inv--1a632642c84eb04b2c89d583.md) | 107 | `result-track:1a632642c84eb04b2c89d583f5816cc032819a18edaceed51d100445971412fe` |
| 15 | `theorem` | [spanSingleton_div_spanSingleton](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/spansingleton-div-spansingleton--eefcc690753b881d9692470a.md) | 110 | `result-track:eefcc690753b881d9692470a69b099838c822e8138f36123a70da1f0642addbc` |
| 16 | `theorem` | [spanSingleton_div_self](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/spansingleton-div-self--21699f249b703938d8d4e5d3.md) | 114 | `result-track:21699f249b703938d8d4e5d3b1952efb948c3b6a7ff4485c8486c7aee9e18f84` |
| 17 | `theorem` | [coe_ideal_span_singleton_div_self](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/coe-ideal-span-singleton-div-self--a1bb827d937b62cce8d5ed2f.md) | 118 | `result-track:a1bb827d937b62cce8d5ed2f0d6916fe72dd26c055b7c1bae06d6452bf685b53` |
| 18 | `theorem` | [spanSingleton_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/spansingleton-mul-inv--310586910e89e5bef60a3575.md) | 124 | `result-track:310586910e89e5bef60a3575e7199f5801dd975a293ba2dfa984dfa08285579a` |
| 19 | `theorem` | [coe_ideal_span_singleton_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/coe-ideal-span-singleton-mul-inv--dd33d7efeb6f951aa5e0829e.md) | 128 | `result-track:dd33d7efeb6f951aa5e0829e6fefa81fadf623c71b0ca2c4fe12b8393b0086c9` |
| 20 | `theorem` | [spanSingleton_inv_mul](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/spansingleton-inv-mul--19e016b05a361b0bf8652f32.md) | 135 | `result-track:19e016b05a361b0bf8652f32e10bdf6207d831e0cfb7c4ea0decdc0c90d90260` |
| 21 | `theorem` | [coe_ideal_span_singleton_inv_mul](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/coe-ideal-span-singleton-inv-mul--dc1958d061f3b15db9fb4408.md) | 139 | `result-track:dc1958d061f3b15db9fb44089cafd0cb48765d818157160c0fc3cb5964352274` |
| 22 | `theorem` | [mul_generator_self_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/mul-generator-self-inv--ca98b184abeaac93f46fd5ea.md) | 143 | `result-track:ca98b184abeaac93f46fd5ea0bec623d4360a00d030ec41d439f7729bdeabee5` |
| 23 | `theorem` | [invertible_of_principal](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/invertible-of-principal--9a49f2f4c8b89b0e061ab2b8.md) | 153 | `result-track:9a49f2f4c8b89b0e061ab2b85ad01125d595c61454a0959637c4ffd064affaaf` |
| 24 | `theorem` | [invertible_iff_generator_nonzero](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/invertible-iff-generator-nonzero--fda6fab7581a691965e364ed.md) | 158 | `result-track:fda6fab7581a691965e364ed622727636f5c20c1a8699359be92413110291c10` |
| 25 | `theorem` | [isPrincipal_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/isprincipal-inv--b55694c4a7ade6af575f146a.md) | 173 | `result-track:b55694c4a7ade6af575f146a029235e6368fdb62da0bb5b18d5a186024d83380` |
| 26 | `lemma` | [den_mem_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/den-mem-inv--2d845ae71f557155e1c9ac84.md) | 183 | `result-track:2d845ae71f557155e1c9ac84ea99dabbd11aa4e549d67585e77d11bd779fe478` |
| 27 | `lemma` | [num_le_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/num-le-mul-inv--ca3e09ca255bc12cafa40d41.md) | 193 | `result-track:ca3e09ca255bc12cafa40d416a50ebca4b10a320906f4edcfd7932fc66c15b76` |
| 28 | `lemma` | [bot_lt_mul_inv](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/bot-lt-mul-inv--334b3d8a9c1f3aa30fa0d368.md) | 201 | `result-track:334b3d8a9c1f3aa30fa0d368cec072e598a23c16d5d303417b7e2fe4b7b97d57` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variantcdf314c30d33e2c8ec0145229d09b4dd7d121484494fe5f1c8a2ea5c40249bea.lean/declarations/instance--a1ac3add4f8a45f2dc589327.md) | 204 | `declaration-track:a1ac3add4f8a45f2dc58932737060d02276691279c3be477f44bc2eea215bfc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
