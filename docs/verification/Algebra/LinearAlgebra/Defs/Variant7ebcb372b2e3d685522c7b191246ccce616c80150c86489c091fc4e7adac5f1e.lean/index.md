# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1509ff29b9c44f9461ce8ffdca475dab6a6897dc",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1509ff29b9c44f9461ce8ffdca475dab6a6897dc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean.json)

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
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/generallineargroup--dc22a015efb9e0f9ee049687.md) | 43 | `declaration-track:dc22a015efb9e0f9ee0496876a2f630f818594bfc320e98c970e444bf01457a1` |
| 2 | `def` | [scalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/scalar--31acd57aebba7986e1957609.md) | 55 | `declaration-track:31acd57aebba7986e1957609c18684174ba207e0e9fab50afd0876ee24deefac` |
| 3 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instcoefun--e86f6ee305e9da37632c70a8.md) | 60 | `declaration-track:e86f6ee305e9da37632c70a8c275f37acff4261b4e77522a663fd22c46b2443f` |
| 4 | `lemma` | [coe_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-scalar--76dbfabc76b6aa4a97435c35.md) | 64 | `result-track:76dbfabc76b6aa4a97435c350afd97010d04bc64d7068e080587553a8983edbc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instance--acb645a71780a699c1f81cdd.md) | 74 | `declaration-track:acb645a71780a699c1f81cdd0030c3e6aa8384bd5ba628a6c3752df9b3950374` |
| 6 | `lemma` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/smul-def--de068ba6763f32798819097d.md) | 77 | `result-track:de068ba6763f32798819097d1e7ef8e90f29806e0c3468b2f5e3fb2c1972a005` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instance--60b0e062bc8a43f7d6dbb60b.md) | 79 | `declaration-track:60b0e062bc8a43f7d6dbb60bba47c204703f9dc484116e0a5a9728280e40aef2` |
| 8 | `lemma` | [scalar_commute](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/scalar-commute--0574dbb697cb52433fd8479a.md) | 88 | `result-track:0574dbb697cb52433fd8479aea2279acf245fdd207e5c3cef29a656c46373594` |
| 9 | `def` | [det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/det--b8b0d6a44da24147d622fd9b.md) | 94 | `declaration-track:b8b0d6a44da24147d622fd9b46ad24e38c54a8e11683d78c239f306daf6d0e3f` |
| 10 | `lemma` | [det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/det-ne-zero--02c095a3c32e48d6da0a5e40.md) | 103 | `result-track:02c095a3c32e48d6da0a5e40b5401836ef1d3eab9f012decb3f37b6fbdca1e6d` |
| 11 | `theorem` | [det_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/det-scalar--68a06e4d95c982c36d3aa9f8.md) | 107 | `result-track:68a06e4d95c982c36d3aa9f88caf825977981463ae624e2547f1f27412b4181d` |
| 12 | `lemma` | [det_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/det-surjective--eac33cb7a094850287e41cf7.md) | 111 | `result-track:eac33cb7a094850287e41cf72c1f26e9f79afccb2fc1111b0db457c40b4c083b` |
| 13 | `def` | [toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/tolin--899037e05dbb3c526c7f3105.md) | 121 | `declaration-track:899037e05dbb3c526c7f310514a8bb1acd37634e13abc927121b0d857e51c18b` |
| 14 | `def` | [toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/tolin--651439735b964f0a8f90ee65.md) | 126 | `declaration-track:651439735b964f0a8f90ee659ae9bb0fd6104e98970d61dccfe69e57a7af3033` |
| 15 | `lemma` | [toLin'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/tolin-apply--67d832852fc258397223a284.md) | 131 | `result-track:67d832852fc258397223a2844787c94e1d70c78a25fca52dd9c9b9df1f687228` |
| 16 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mk--5ce2358c64908372e09064f4.md) | 138 | `declaration-track:5ce2358c64908372e09064f4d2641185dee625d91560390583b5b4531c567ab5` |
| 17 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mk--ee4ae7db25c10beaa4db028c.md) | 143 | `declaration-track:ee4ae7db25c10beaa4db028ca216144e76f30b881f322661f28249043ef7ca3f` |
| 18 | `def` | [mkOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mkofdetnezero--cca9f96da7e1c8ce1dc0fbfd.md) | 148 | `declaration-track:cca9f96da7e1c8ce1dc0fbfd211a988375aa5fc47a494070aedfea01f939f297` |
| 19 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/ext-iff--c33322e83ae365fa2ec50ef7.md) | 151 | `result-track:c33322e83ae365fa2ec50ef7057099b291fec0818b0b7d654c18160d34422727` |
| 20 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/ext--492fceb648c7ffa2c67a7d99.md) | 155 | `result-track:492fceb648c7ffa2c67a7d993a46f7d4cd5318cb6e1b01d3e0eed4e98f477a7c` |
| 21 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-mul--09d6ca87becd1591adbcb6e0.md) | 163 | `result-track:09d6ca87becd1591adbcb6e0ebc9a47f513ccb4a975db82ed6cdfd1faf2a924d` |
| 22 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-one--3b38781e521334318f0b99c2.md) | 167 | `result-track:3b38781e521334318f0b99c23ca5cc0e2e57b5ee887085266f260607f390fdc0` |
| 23 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-inv--1c599b0141395decdc4180f1.md) | 170 | `result-track:1c599b0141395decdc4180f182131765febc154619f747b4b0a0d34e52e64830` |
| 24 | `theorem` | [coe_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-tolin--91ff05cf112af018d2a24bf8.md) | 175 | `result-track:91ff05cf112af018d2a24bf8a69046fc6303f5e142c783e98a31225cd588f79f` |
| 25 | `theorem` | [toLin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/tolin-apply--f65e2a31cb87c59d4335e8b3.md) | 179 | `result-track:f65e2a31cb87c59d4335e8b3c84c49077606c0f0a036f4327eb53997fda75cf5` |
| 26 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map--a53abbaa9f89d976c373f563.md) | 188 | `declaration-track:a53abbaa9f89d976c373f563262d2a5b500aad0c614601993a9236a1d1aa492b` |
| 27 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-id--dd2ec941472d96206708d000.md) | 191 | `result-track:dd2ec941472d96206708d000ed6d19d774b6cb0472938bd7a943b10ac19448f3` |
| 28 | `lemma` | [map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-apply--6f91892557f84be7b89a50b8.md) | 195 | `result-track:6f91892557f84be7b89a50b8366b96e31d39a60a045661f17537b1d5d45c20cb` |
| 29 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-comp--63267ec29899651767c6481b.md) | 199 | `result-track:63267ec29899651767c6481beef13917ecfa2d7fd40149bac09020fe80328031` |
| 30 | `theorem` | [map_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-comp-apply--a85af926c823f0ef4d208488.md) | 204 | `result-track:a85af926c823f0ef4d2084880e102317a95292557dcd4d0919cfde489b0051ef` |
| 31 | `lemma` | [map_one](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-one--c221fe4c7fc93c3df8bfdeff.md) | 211 | `result-track:c221fe4c7fc93c3df8bfdeff39380174e346d774f3fc200bd3e300e6cfe5610f` |
| 32 | `lemma` | [map_mul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-mul--940fa4c1f0dd2594b7267047.md) | 214 | `result-track:940fa4c1f0dd2594b7267047be371bc293b936277a66c7bd4fa05d619274199c` |
| 33 | `lemma` | [map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-inv--542cb0ac85bd7d4328857e53.md) | 217 | `result-track:542cb0ac85bd7d4328857e531563ad7737b1fa90003fafc9eb39e4b0680221ca` |
| 34 | `lemma` | [map_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-det--8f8eb6800059740173563d7a.md) | 220 | `result-track:8f8eb6800059740173563d7a704dafefd9f8a9154f7cc23e07488ea4f4c8c10e` |
| 35 | `lemma` | [map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-mul-map-inv--b2172be3b8d7af8728d10b13.md) | 227 | `result-track:b2172be3b8d7af8728d10b13a72c34b7dea78b556a586180cc227e699207b780` |
| 36 | `lemma` | [map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-inv-mul-map--60c2128b60b386155827d78d.md) | 230 | `result-track:60c2128b60b386155827d78db3b53de55869e832552aa8bbd00ebe111b625dd8` |
| 37 | `lemma` | [coe_map_mul_map_inv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-map-mul-map-inv--dd1ab45537650a67dbd80d7d.md) | 234 | `result-track:dd1ab45537650a67dbd80d7da585d4a7de310d3e52a28eb09c560416c47ffeef` |
| 38 | `lemma` | [coe_map_inv_mul_map](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-map-inv-mul-map--b008be274a2685ba6438b331.md) | 239 | `result-track:b008be274a2685ba6438b331ea1e9eb21e20ea4dc47d64bddf31c8b5d47450c9` |
| 39 | `lemma` | [map_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-scalar--9a6c88592390a29aa84ae244.md) | 243 | `result-track:9a6c88592390a29aa84ae244dd304db3d7ae142f9ffd636cc273bd0634cbf1d6` |
| 40 | `def` | [kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/kronecker--0b9018166fb8527c56dfa611.md) | 254 | `declaration-track:0b9018166fb8527c56dfa6118d7b75215bff5b516058d5b7a92d3d919b613995` |
| 41 | `theorem` | [_root_.Matrix.IsUnit.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/root-matrix-isunit-kronecker--3c8bec96e000b14a48807461.md) | 260 | `result-track:3c8bec96e000b14a488074616964a43877decc63f7da90e19bbcfa26828739cf` |
| 42 | `def` | [toGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/togl--719940dfb54308ce0692c4ab.md) | 274 | `declaration-track:719940dfb54308ce0692c4ab7d7265add8a679a45fb3a64b3dae76aa6c2c4a02` |
| 43 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/hascoetogenerallineargroup--6f695d7c697f830521988f9a.md) | 279 | `declaration-track:6f695d7c697f830521988f9a0b438af8a148a3ef7f28f6e42cc63602d7211938` |
| 44 | `lemma` | [toGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/togl-injective--23eaf91c35ea094ff86901bf.md) | 282 | `result-track:23eaf91c35ea094ff86901bf08cff06f477035aae88bc72940b04dd505fd9ad7` |
| 45 | `lemma` | [toGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/togl-inj--3d76426799d45012843721a9.md) | 287 | `result-track:3d76426799d45012843721a9dd400a654dc115dfb6e85e7ecb6b4453c0044212` |
| 46 | `theorem` | [coeToGL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coetogl-det--6e2898652fea49605f0b4b6b.md) | 292 | `result-track:6e2898652fea49605f0b4b6ba25f115e0c96fd104a788f4e94e616808e1168d4` |
| 47 | `lemma` | [coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-gl-coe-matrix--f397b5356a8ce0c3c92120a4.md) | 297 | `result-track:f397b5356a8ce0c3c92120a4d466a53d9cdfd51da54bc830087e24a6e857228d` |
| 48 | `lemma` | [range_toGL_eq_ker_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/range-togl-eq-ker-det--b2bc9b680c82ae01add19b49.md) | 299 | `result-track:b2bc9b680c82ae01add19b4987576c6e4e699b787d9123377bd54e48ec3c34d7` |
| 49 | `def` | [toGLKerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/toglkerequiv--9407d968bab1987468bae378.md) | 308 | `declaration-track:9407d968bab1987468bae3780700859a4a6a579b3fb4daf3df53b9f8ec4a9e89` |
| 50 | `def` | [mapGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mapgl--cbbe733cf88ec8c80f429d85.md) | 318 | `declaration-track:cbbe733cf88ec8c80f429d85e8e05ec413fa17869cb85479a26b66b1a45cca62` |
| 51 | `lemma` | [mapGL_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mapgl-inj--2e22482991f1c16f458d2ae2.md) | 322 | `result-track:2e22482991f1c16f458d2ae24e942722f8ea278eabd2769af04747850495c29f` |
| 52 | `lemma` | [mapGL_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mapgl-injective--834eaf780e261e18b1aa1983.md) | 326 | `result-track:834eaf780e261e18b1aa1983ced3d3f43adfc4906d9f2760e00cbc0dd84386af` |
| 53 | `lemma` | [mapGL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mapgl-coe-matrix--8d3b9de75e5ff8632e110084.md) | 331 | `result-track:8d3b9de75e5ff8632e110084a8b63a71fc2ed538ade10138e204a73bdb2e4428` |
| 54 | `lemma` | [map_mapGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/map-mapgl--2e0fb2731d6fdf39863152ef.md) | 336 | `result-track:2e0fb2731d6fdf39863152ef9671a50bc707787b5117ae42bfcd563c8b758409` |
| 55 | `lemma` | [det_mapGL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/det-mapgl--d60696aba3a50a6460c9be89.md) | 343 | `result-track:d60696aba3a50a6460c9be89d9fb005840e8bc9670f95cf82852bdb06e780e03` |
| 56 | `def` | [GLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/glpos--ac6d32594645ff26dc7e7b6c.md) | 359 | `declaration-track:ac6d32594645ff26dc7e7b6c02a0616080bddd89a03dcc77e066ea53f059bbce` |
| 57 | `theorem` | [mem_glpos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/mem-glpos--e3b56694c0ca3c059f810760.md) | 367 | `result-track:e3b56694c0ca3c059f8107608b51ca8f89d200704387f288e75024cdb6951a60` |
| 58 | `theorem` | [GLPos.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/glpos-det-ne-zero--3e45a939acfa0d8d1ba75ae1.md) | 370 | `result-track:3e45a939acfa0d8d1ba75ae1ccb03415153fe1f22963173833eca3ebc0b693a0` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instance--2f1acc1e38b9b55d44111653.md) | 383 | `declaration-track:2f1acc1e38b9b55d44111653380784a4770272d289f7aeb0ac6ed0d89b8397c9` |
| 60 | `theorem` | [GLPos.coe_neg_GL](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/glpos-coe-neg-gl--84a204eb3df1d16bf849d843.md) | 391 | `result-track:84a204eb3df1d16bf849d843e6d51cc8d214b9e8454bad348c045c5947c3ab14` |
| 61 | `theorem` | [GLPos.coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/glpos-coe-neg--15a911b7f8c8a3573f841970.md) | 395 | `result-track:15a911b7f8c8a3573f84197022956970c69f1b5c369a0ab733cbe1441c631830` |
| 62 | `theorem` | [GLPos.coe_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/glpos-coe-neg-apply--b2d3bfc3ca3de1a08e36138f.md) | 399 | `result-track:b2d3bfc3ca3de1a08e36138fdbcc35816bf38812b484f3dada493ca338cefd1c` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instance--6ccd054933c42e8213bdefc0.md) | 403 | `declaration-track:6ccd054933c42e8213bdefc0eeb62fd9cbaa9ed3c96e68809099a2dc9d20f13d` |
| 64 | `def` | [toGLPos](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/toglpos--7afe8a949a449b089b65612e.md) | 414 | `declaration-track:7afe8a949a449b089b65612e35e95036763eac16234166eafb2e01ab32f4395a` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/instance--b55f39d796539eb36d6a088d.md) | 419 | `declaration-track:b55f39d796539eb36d6a088d31540ea1f525441d351dcbf45abdac69f30c78fa` |
| 66 | `theorem` | [toGLPos_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/toglpos-injective--eaefbbbfe299c48974905c02.md) | 422 | `result-track:eaefbbbfe299c48974905c022dc2dbc40e9b778d22062164512b20e5c1366397` |
| 67 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-glpos-coe-gl-coe-matrix--21ed4635d4e706f357434c4b.md) | 432 | `result-track:21ed4635d4e706f357434c4bf51afbc4f54d08bb6c19366bd5cbd5e04aa304c1` |
| 68 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-to-glpos-to-gl-det--54d93266213c22008085fd3e.md) | 437 | `result-track:54d93266213c22008085fd3ed5cfe93262a1e8c9f91003e0931e2ba761536019` |
| 69 | `theorem` | [coe_GLPos_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean/declarations/coe-glpos-neg--0b90fbe7dcfa06555a7439f4.md) | 444 | `result-track:0b90fbe7dcfa06555a7439f49588e135b9dd8629e0ff90ecaae2b504623f89ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
