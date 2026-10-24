# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f250cef75700a85540d60fa10fc48e189b6eda22",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f250cef75700a85540d60fa10fc48e189b6eda22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/generallineargroup--e53b22339c85e27f4a7a8bd6.md) | 50 | `declaration-track:e53b22339c85e27f4a7a8bd6b4b80a98026070ec4ab8e2e0e39148b9ff27f7d2` |
| 2 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/instcoefun--3b7966c4e70f61ccf630b0fa.md) | 62 | `declaration-track:3b7966c4e70f61ccf630b0fa90f5061f3af15d61b1b4f668e31d770b6b1cd779` |
| 3 | `def` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/det--1fec87e44d660842cb40e86f.md) | 69 | `declaration-track:1fec87e44d660842cb40e86fec18ea3891394b4b21aa8db6dd3613ed6f42a3c3` |
| 4 | `lemma` | [det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/det-ne-zero--1b44ec6e6d4b8423dda8b480.md) | 78 | `result-track:1b44ec6e6d4b8423dda8b480499b864d830ec108ab376fd00b197655d82d5dfa` |
| 5 | `def` | [toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/tolin--07d3c54917e6ba44c9c6639f.md) | 83 | `declaration-track:07d3c54917e6ba44c9c6639fb6b1d3ab4228bc2e974a6534d4bb89efb26c36e8` |
| 6 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mk--537eb16bdc44c529defcb099.md) | 87 | `declaration-track:537eb16bdc44c529defcb09984e6420fca750744b2c525d43ab2aeaf1eda6b58` |
| 7 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mk--ebea9f4603fc27b43c78706b.md) | 91 | `declaration-track:ebea9f4603fc27b43c78706bbf97c8578dc9d06bdce9faee9a0da4822c4d754f` |
| 8 | `def` | [mkOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mkofdetnezero--cca60e7e1aa8e2ab5f331693.md) | 95 | `declaration-track:cca60e7e1aa8e2ab5f331693d0804f7640684b6aabb6985619d38902fc102339` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/ext-iff--dd76649616b6e329dc4eca7c.md) | 98 | `result-track:dd76649616b6e329dc4eca7ccaf731a80879d25e668c0c13acaa0668649584fc` |
| 10 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/ext--d0f10b88eb4ee118b296bef4.md) | 102 | `result-track:d0f10b88eb4ee118b296bef40af6a8315dda7dd8a236f722dacbcc8b1107088b` |
| 11 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-mul--c58093977f776f85f3ed0b5b.md) | 110 | `result-track:c58093977f776f85f3ed0b5bb85fc7dc690ec89599ed794d8151233af1ca6b34` |
| 12 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-one--3b3d6c4d330cc0a8b3ea8e41.md) | 114 | `result-track:3b3d6c4d330cc0a8b3ea8e41c3834c9fed22a295371caae3c465e59d5379ec06` |
| 13 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-inv--cb9f576169d99530ec627237.md) | 117 | `result-track:cb9f576169d99530ec62723716d4a74f01d351168b35997665bdc0ec967a57e3` |
| 14 | `theorem` | [coe_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-tolin--68c46a43b11363f22e614107.md) | 124 | `result-track:68c46a43b11363f22e61410724ec2862fba9d90e46bfd032d0e3fcf612ddae41` |
| 15 | `theorem` | [toLin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/tolin-apply--46b23da0770d52c28936380d.md) | 128 | `result-track:46b23da0770d52c28936380d80e4e5b28319866954cf546ed835783b9e8035aa` |
| 16 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map--69d905cafdbec8e4bcc1d2c8.md) | 137 | `declaration-track:69d905cafdbec8e4bcc1d2c8e889af6d8815711e7c8077d3f366538eb0558b92` |
| 17 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-id--e53c32f8483a6c738521e189.md) | 140 | `result-track:e53c32f8483a6c738521e1893a492e6f67439a0c021bd0f7322d634c2a65bc78` |
| 18 | `lemma` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-apply--ef19e2cb690188a9c1c12582.md) | 144 | `result-track:ef19e2cb690188a9c1c1258266df513ef970a170af38d08f3656e8fb038a132d` |
| 19 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-comp--45edfd909cb2a0c552d96dd2.md) | 148 | `result-track:45edfd909cb2a0c552d96dd2a52cb5073cc361638a7ae12847eda380235599ff` |
| 20 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-comp-apply--a9b17d1823d5b45539578da3.md) | 153 | `result-track:a9b17d1823d5b45539578da336c5b5b0a709d8a8a63e0f6ecddd450f992dcb48` |
| 21 | `lemma` | [map_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-one--c9ff106263e74dd4b1ad4d74.md) | 160 | `result-track:c9ff106263e74dd4b1ad4d747d2cfcf2b37b87b2127651ed6d163e94aac7ef44` |
| 22 | `lemma` | [map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-mul--8143b68f0163616c67df3d57.md) | 164 | `result-track:8143b68f0163616c67df3d57cc151fc522ea6b48f98852b8c7240e0c35a87d63` |
| 23 | `lemma` | [map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-inv--f737e1b47ec5bcd7b8d3b233.md) | 168 | `result-track:f737e1b47ec5bcd7b8d3b23300feb4ed84c064121c034bfee84ad38689159592` |
| 24 | `lemma` | [map_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-det--d14936c649b68b2cd37e98dd.md) | 172 | `result-track:d14936c649b68b2cd37e98ddacece5f905d056774a311da31c4187a0cc7d9c63` |
| 25 | `lemma` | [map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-mul-map-inv--266ff87b2e1daeaed1cc05de.md) | 179 | `result-track:266ff87b2e1daeaed1cc05de413e437bf7cd257633a871e2330c51b343675456` |
| 26 | `lemma` | [map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/map-inv-mul-map--45ee9607a89897724487d546.md) | 182 | `result-track:45ee9607a89897724487d546850abb0d2d811db007223a1f96d4955884c2ff4c` |
| 27 | `lemma` | [coe_map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-map-mul-map-inv--edeaa4f33e8ec7ea56b8c65a.md) | 186 | `result-track:edeaa4f33e8ec7ea56b8c65a9193d392f22db770390180913ac441a0bde5fcb3` |
| 28 | `lemma` | [coe_map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-map-inv-mul-map--8e129032af17c05001fc8b27.md) | 191 | `result-track:8e129032af17c05001fc8b27c33a943d782a4c0385d499e77621730b65fe925c` |
| 29 | `def` | [toGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/togl--7961c57fd37f5b8744c586b7.md) | 203 | `declaration-track:7961c57fd37f5b8744c586b7802eebe31c2bfc0d0fac96263d2c54fb794fe1d1` |
| 30 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/hascoetogenerallineargroup--cbbdac91abef36961a45ed00.md) | 210 | `declaration-track:cbbdac91abef36961a45ed00fe41009bfeb75d042164896811a132343ff5fe11` |
| 31 | `lemma` | [toGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/togl-injective--42442621fa25b99d00262ebd.md) | 213 | `result-track:42442621fa25b99d00262ebda80e0c449152c0bbe59571652f091c5db798be22` |
| 32 | `lemma` | [toGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/togl-inj--a5c0be1fff542e2727bed1f8.md) | 218 | `result-track:a5c0be1fff542e2727bed1f8cc236e45fa485e7e6bc8ff87619a818367a25930` |
| 33 | `theorem` | [coeToGL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coetogl-det--6387160ae03c3553141a89ff.md) | 223 | `result-track:6387160ae03c3553141a89ffb0f645231b39d47111122915d4cdd21f8b2f1492` |
| 34 | `lemma` | [coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-gl-coe-matrix--4f9ee2614bd156e9746e06ac.md) | 228 | `result-track:4f9ee2614bd156e9746e06ac43d52352efe7dfdb70df44c9ccc5ba7c6c7e59a7` |
| 35 | `def` | [mapGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mapgl--5d315184e25bccea6739b3ba.md) | 233 | `declaration-track:5d315184e25bccea6739b3ba7ed8b78b674026cb0405921df343335a540f8ee1` |
| 36 | `lemma` | [mapGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mapgl-inj--6ea05a7663b9565c1c3fd791.md) | 237 | `result-track:6ea05a7663b9565c1c3fd791dd3ec322895028179ba08926d92be3c16564aebb` |
| 37 | `lemma` | [mapGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mapgl-injective--ccb2879a55cb3d5f874fb68f.md) | 243 | `result-track:ccb2879a55cb3d5f874fb68fc4790e238d735c3fe1e8369eab14f2382ece0fa7` |
| 38 | `lemma` | [mapGL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mapgl-coe-matrix--09d695a358dd0adc1fe68280.md) | 248 | `result-track:09d695a358dd0adc1fe68280b50a1f995ef264d1080c242463b1f2865ca06d0e` |
| 39 | `def` | [GLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/glpos--24463fe1b7787287cd3af4e1.md) | 265 | `declaration-track:24463fe1b7787287cd3af4e13df6ced13913654051165203b25b9d95fb05b300` |
| 40 | `theorem` | [mem_glpos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/mem-glpos--3e62a4ee98c579d63d2aa8b6.md) | 273 | `result-track:3e62a4ee98c579d63d2aa8b636688570d1d55dc8d9d198500311bc35a981d6cf` |
| 41 | `theorem` | [GLPos.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/glpos-det-ne-zero--f8bbc264d5da77671ff5edc4.md) | 276 | `result-track:f8bbc264d5da77671ff5edc4d11fb4daaae40d93d60803a03047e9d312e735ce` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/instance--409af978f38729d8a3d70340.md) | 289 | `declaration-track:409af978f38729d8a3d70340b58a6221532a5455185ccbc749eb6d08010079fd` |
| 43 | `theorem` | [GLPos.coe_neg_GL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/glpos-coe-neg-gl--cf3d0d8f8a96b94fb40024f3.md) | 297 | `result-track:cf3d0d8f8a96b94fb40024f3fbaf1a8e1a384aa78dc039821644ff4e54a1d813` |
| 44 | `theorem` | [GLPos.coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/glpos-coe-neg--25373a61f3168dd66bd08eb1.md) | 301 | `result-track:25373a61f3168dd66bd08eb150cf6c780ea4aaf07d09959773f365cc521ec51f` |
| 45 | `theorem` | [GLPos.coe_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/glpos-coe-neg-apply--81b74a878ce95988868751ea.md) | 305 | `result-track:81b74a878ce95988868751eaf7128109c1e91ae71f70fd473715abbe0f815286` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/instance--e9e0195602a62e66676a344e.md) | 309 | `declaration-track:e9e0195602a62e66676a344e627e44a6660761a5cfe72496c84b19a519198205` |
| 47 | `def` | [toGLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/toglpos--c2eceb6dc524e950d0d61488.md) | 320 | `declaration-track:c2eceb6dc524e950d0d61488b1b723beeb8f48ab254a8080cf10eee2c06b7f5f` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/instance--0733db67332deba8e4597e21.md) | 325 | `declaration-track:0733db67332deba8e4597e21be3309d32d318b7e78223d344c821aff60fe402f` |
| 49 | `theorem` | [toGLPos_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/toglpos-injective--ff04e5a98c4a8f928228674c.md) | 328 | `result-track:ff04e5a98c4a8f928228674c593d109fb79cf913323588924642f8b2df36356a` |
| 50 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-glpos-coe-gl-coe-matrix--4ba6111ebb92d67706347a87.md) | 338 | `result-track:4ba6111ebb92d67706347a87ea455e5041c6e07fc0a463bd421ac6f8e344f0d8` |
| 51 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-to-glpos-to-gl-det--ff04acc5c747c678b2d3bb4a.md) | 343 | `result-track:ff04acc5c747c678b2d3bb4a3a5d90200de823cf2c96f72caa76eefe9196a291` |
| 52 | `theorem` | [coe_GLPos_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/declarations/coe-glpos-neg--0a6c8f76cfd093afc0540fb2.md) | 350 | `result-track:0a6c8f76cfd093afc0540fb231870ae3cf5bc5b7363aff16cef957a6d9d6a6c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
