# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4683cbee0cf1f9f57c11a8273cb97e20d1e9300",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4683cbee0cf1f9f57c11a8273cb97e20d1e9300`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DFinsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialLaw](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/polynomiallaw--8b1b2bbf6bec8e0d499bad63.md) | 66 | `declaration-track:8b1b2bbf6bec8e0d499bad630f2ac1102557ca43494356b117f798e343439d93` |
| 2 | `theorem` | [PolynomialLaw.isCompat_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/polynomiallaw-iscompat-apply--73f7fffa960917f4261650cf.md) | 79 | `result-track:73f7fffa960917f4261650cf0066fa33810ac94099c839559a91f49e125b0ed7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--665be80610becf312edfacec.md) | 98 | `declaration-track:665be80610becf312edfacec49d34e94140a06c055802f23d7b26fdcc4964c64` |
| 4 | `theorem` | [zero_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/zero-def--c1f2ddd461fb0604e3a52e35.md) | 101 | `result-track:c1f2ddd461fb0604e3a52e356dba80ebc039a9cc8e92110d585d0c0bf6e5b3a2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--3dc3626f0c65bb5ae41135b9.md) | 104 | `declaration-track:3dc3626f0c65bb5ae41135b9705e4dab0b852236c6247c60b9c9c09eb1214893` |
| 6 | `def` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/id--cb98afbc3e4de8c7d82f96eb.md) | 107 | `declaration-track:cb98afbc3e4de8c7d82f96eba5f9bea9d8323cc6e169c080ac0f8a21edc120df` |
| 7 | `theorem` | [id_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/id-apply--59ec740494daf7f288e1818f.md) | 110 | `result-track:59ec740494daf7f288e1818fba02cca8cf66d84cad70906a9d2ce9d437b1fa1c` |
| 8 | `def` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/add--1297c6fc882412906afe5379.md) | 114 | `declaration-track:1297c6fc882412906afe53796284873d1c3aca21a364cb78413de2f9dc31bb06` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--f5376f0d3618cffb38f7ff2b.md) | 117 | `declaration-track:f5376f0d3618cffb38f7ff2bf42c9910340ea6facb7a2025fd11fea7673738b8` |
| 10 | `theorem` | [add_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/add-def--13ca976bff16772e55354e73.md) | 120 | `result-track:13ca976bff16772e55354e73edd468b342038166f32a225e42d1394d077d35eb` |
| 11 | `theorem` | [add_def_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/add-def-apply--ad8fc3ff9a7bb78ad1d88049.md) | 123 | `result-track:ad8fc3ff9a7bb78ad1d88049491964fa23326dfd1f92ee1b493d18e5b8a07dfe` |
| 12 | `def` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/smul--fd8e6c18a35b400f8653a3db.md) | 127 | `declaration-track:fd8e6c18a35b400f8653a3dbebe2341651e33cc364bbe1f1fc6f87cc2dab3db2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--fe0eb5ae64854e6f2f35be9d.md) | 130 | `declaration-track:fe0eb5ae64854e6f2f35be9d2e4a418d9e2498cf729c8e61f225a2cd62c53d78` |
| 14 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/smul-def--0a9e43c7579a61c65f7897df.md) | 133 | `result-track:0a9e43c7579a61c65f7897df55801ff495b94e4e40ad96f97137e970e1e9ee9a` |
| 15 | `theorem` | [smul_def_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/smul-def-apply--7ed277b99f985f811d7fb2b6.md) | 136 | `result-track:7ed277b99f985f811d7fb2b6dbaf1feb3e5ef782f8c6a1e902394f9fb25f4942` |
| 16 | `theorem` | [add_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/add-smul--3826a2407eaae0d7775259a9.md) | 139 | `result-track:3826a2407eaae0d7775259a98a3258cdd7df9893ff7107e9df763dd0dd5aa0d4` |
| 17 | `theorem` | [zero_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/zero-smul--e09dcfd4f16bfe4b2da597ff.md) | 142 | `result-track:e09dcfd4f16bfe4b2da597ff181147757a8c0e99e6be6fa0cfcdc41fdd968077` |
| 18 | `theorem` | [one_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/one-smul--9ab1ae5e11d12f808c480220.md) | 145 | `result-track:9ab1ae5e11d12f808c48022033f131f37b88cdb2cbac8fc799c025028c246ec5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--263b8334dcb9e4a81f7f2a60.md) | 148 | `declaration-track:263b8334dcb9e4a81f7f2a6007ca06f0180f0e26589bc8535bc11ce86e29cfa6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--b4d2b1487163055728202b41.md) | 152 | `declaration-track:b4d2b1487163055728202b41a612beacba20fd1fb1e72caa6fd58435c6be3871` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--486784cd36d86173d694b532.md) | 161 | `declaration-track:486784cd36d86173d694b532bef9a97bc4c0c255ed27ce29d2d2bcbe2999fa98` |
| 22 | `def` | [neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/neg--55e550a7311f3823bf5a7f6e.md) | 176 | `declaration-track:55e550a7311f3823bf5a7f6ed454fc77c8be02b7265f0ff80aeb38e4cb1fd607` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--e19705087231d815d31a0813.md) | 179 | `declaration-track:e19705087231d815d31a081346767b62e4fa0eb9c17814e485cbee28522450e7` |
| 24 | `theorem` | [neg_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/neg-def--d17b22f13225ccdfe7498a65.md) | 182 | `result-track:d17b22f13225ccdfe7498a6522876fe856e469d4ac138aebad987ceb5b3f16ab` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--d220dd6c211213392bbe60f5.md) | 185 | `declaration-track:d220dd6c211213392bbe60f50fa9d5c38833d037a0d02bbd71b015cb301767c0` |
| 26 | `def` | [ground](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/ground--1081260d269c00161e2b6759.md) | 217 | `declaration-track:1081260d269c00161e2b67593dac94515d4d3e20f5002e16fbd7ab24f2c04b72` |
| 27 | `theorem` | [ground_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/ground-apply--aa32442485fbc76a2add623b.md) | 219 | `result-track:aa32442485fbc76a2add623b6161f69fee641756de712b72af6f2ba10d74e1ab` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/instance--5df2839d5073db4c989e2e3c.md) | 221 | `declaration-track:5df2839d5073db4c989e2e3c4bebca67ab24718c6868c526c0840080c1aa306b` |
| 29 | `theorem` | [one_tmul_ground_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/one-tmul-ground-apply--8d0ca81e21ff429c6be61bb7.md) | 224 | `result-track:8d0ca81e21ff429c6be61bb774f05836ef4ecbee491e933a1e047a2921ca4b0c` |
| 30 | `def` | [lground](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/lground--962c032f876f3fa5461be2c4.md) | 233 | `declaration-track:962c032f876f3fa5461be2c41f003828faf52679fd8864d9d71034e4e7e24a86` |
| 31 | `theorem` | [ground_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/ground-id--ae38ceae1c0ccdc164a58d79.md) | 238 | `result-track:ae38ceae1c0ccdc164a58d797ff6642330b597fe3036e66cba501c9162c73d38` |
| 32 | `theorem` | [ground_id_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/ground-id-apply--43016ba9ca96e00d0087c091.md) | 241 | `result-track:43016ba9ca96e00d0087c09116ed6af3b7205917e1c94c74485257e76e46ed25` |
| 33 | `def` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/comp--5ee4b574f5acadadd2e523e1.md) | 256 | `declaration-track:5ee4b574f5acadadd2e523e129f6ea2c19ffe663ba01771db6d8df485dbf9f22` |
| 34 | `theorem` | [comp_toFun'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/comp-tofun--52bd63b70a0d3c72fc5028db.md) | 260 | `result-track:52bd63b70a0d3c72fc5028dbdbf6b75e4def1b4011cd20f8b9e94edec85c0afc` |
| 35 | `theorem` | [comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/comp-assoc--f1523f5268f41251c3531ff8.md) | 263 | `result-track:f1523f5268f41251c3531ff876c62447be9417b067bb928a15599ee6cfab7ddc` |
| 36 | `theorem` | [comp_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/comp-id--9a468cb4b9ffa73b9af507f2.md) | 266 | `result-track:9a468cb4b9ffa73b9af507f2fe7c98693ec422fd7e673d9e4ba6d6601e88648f` |
| 37 | `theorem` | [id_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant4cf515f7e468c8756d61d2012c9ca9b197378fb7b1584240e1b0b3def0827edd.lean/declarations/id-comp--db46098009a96f3ecd445ef1.md) | 268 | `result-track:db46098009a96f3ecd445ef16f011956f362f6a7d6d021baaf6a96addb5e8e69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
