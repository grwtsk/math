# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearMap.Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc9dac722c29995805887b1f0e2c2f6068bb2eda",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc9dac722c29995805887b1f0e2c2f6068bb2eda`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk₂'ₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk--4fceaae7662788d8a9f25e88.md) | 74 | `declaration-track:4fceaae7662788d8a9f25e88eafd12a7f1fe95fdd33dd8e05bf4d1376995cdf1` |
| 2 | `theorem` | [mk₂'ₛₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk-apply--dfe7d2fa3264f39e118ed705.md) | 88 | `result-track:dfe7d2fa3264f39e118ed7054be596a6f64fb05b208f80a79e1a2c61c42c8c8e` |
| 3 | `def` | [mk₂'](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk--b709165f8dadf91e74da470c.md) | 95 | `declaration-track:b709165f8dadf91e74da470cab411015dbcbd1914811cf063c22cd6e442e35c5` |
| 4 | `theorem` | [mk₂'_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk-apply--a97c75a74ec75bfeeb6d41ca.md) | 104 | `result-track:a97c75a74ec75bfeeb6d41ca0f04de6d11f368072aee886e28e1c2cdca7a231f` |
| 5 | `theorem` | [ext₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/ext--6ed469e384dff202411e7272.md) | 107 | `result-track:6ed469e384dff202411e727228e56a904f65b0c3f2bb48ddadd5077e635adf80` |
| 6 | `theorem` | [congr_fun₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/congr-fun--784d59cf4d382f021a8cc5c1.md) | 110 | `result-track:784d59cf4d382f021a8cc5c16522096f99529ae6e6863c9469d665ed159b0ef5` |
| 7 | `theorem` | [ext_iff₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/ext-iff--520b9f8af9e91ef91165c698.md) | 113 | `result-track:520b9f8af9e91ef91165c6980a91d8f94d95d329e1d5b3856f1d8a3f90730457` |
| 8 | `def` | [flip](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/flip--396b1620822535411de99d3c.md) | 122 | `declaration-track:396b1620822535411de99d3c234b59c11168197227b0507ffb764030f89a28d6` |
| 9 | `theorem` | [flip_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/flip-apply--74b1801ec54982dcffb06697.md) | 133 | `result-track:74b1801ec54982dcffb06697245d5f0005b76a6094722cadbb73e9c1d9e27605` |
| 10 | `theorem` | [flip_flip](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/flip-flip--bfdda67f5ac92e1abdca12e3.md) | 138 | `result-track:bfdda67f5ac92e1abdca12e3a36493889b339f9c4b8d07ccd7268a5bf36f795b` |
| 11 | `theorem` | [flip_inj](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/flip-inj--07b197a4ddc298e3d028303e.md) | 141 | `result-track:07b197a4ddc298e3d028303ead339d799ccc5f6475664990c7a2f75c04482dab` |
| 12 | `theorem` | [map_zero₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-zero--60caf806225c3a7cd526c149.md) | 144 | `result-track:60caf806225c3a7cd526c1494ba77e949d3d042d2fe4c7e2c866929a3e8d4164` |
| 13 | `theorem` | [map_neg₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-neg--c552ededa0c36dacc263be31.md) | 147 | `result-track:c552ededa0c36dacc263be31eef942ab16c33fb3ae2f0182cceac6a9c904308b` |
| 14 | `theorem` | [map_sub₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-sub--e523dfcc98f3f24c50529e93.md) | 150 | `result-track:e523dfcc98f3f24c50529e936f9460090fc8733f06a92d0b10853c3e8974fc40` |
| 15 | `theorem` | [map_add₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-add--b294def7ffdcdb5e4e43d7e2.md) | 153 | `result-track:b294def7ffdcdb5e4e43d7e2e7405a32ebc62fc5caf627c00bafd0aebffd9b3b` |
| 16 | `theorem` | [map_smul₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-smul--91a222ec5e1378a75733c153.md) | 156 | `result-track:91a222ec5e1378a75733c15392563fb6d4e53152e8f287ff16bcd91c8cb402d8` |
| 17 | `theorem` | [map_smulₛₗ₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-smul--c894c8009ca705c49ec05454.md) | 159 | `result-track:c894c8009ca705c49ec054544416758e6a42b127d10ea42c2f097b3e68170b95` |
| 18 | `theorem` | [map_sum₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/map-sum--ec87a654fb80f2f686eb6370.md) | 162 | `result-track:ec87a654fb80f2f686eb63706fd3ea415819dca3b0d3fe5f1e21abb437d40834` |
| 19 | `def` | [domRestrict₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/domrestrict--339119b6c7a22dd6fdd57d60.md) | 167 | `declaration-track:339119b6c7a22dd6fdd57d60db4c848bda98a4ff30b5e11834a8ee891a48b7d7` |
| 20 | `theorem` | [domRestrict₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/domrestrict-apply--0b696e586de49f6e6c3645c4.md) | 173 | `result-track:0b696e586de49f6e6c3645c4fbdaaeb600dcc7f614dbce46312da6a48a1f2c93` |
| 21 | `def` | [domRestrict₁₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/domrestrict--cd375f7f8ae590b9dd1e2b32.md) | 177 | `declaration-track:cd375f7f8ae590b9dd1e2b320c2e4f3ca2d9da09e3c6e7c014b4f950351c0e93` |
| 22 | `theorem` | [domRestrict₁₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/domrestrict-apply--1c6407bf0d7cb91e02e779e1.md) | 181 | `result-track:1c6407bf0d7cb91e02e779e146e9c946314d4cbe2e2cea7f9299ebd14ee8899c` |
| 23 | `def` | [restrictScalars₁₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalars--25572ddd449c8674d5acdab6.md) | 195 | `declaration-track:25572ddd449c8674d5acdab65a6abb09dd320b6a4c0fbb1f34df9dea7a1268c9` |
| 24 | `theorem` | [restrictScalars₁₂_injective](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalars-injective--a55547527a52d6dab799fdca.md) | 205 | `result-track:a55547527a52d6dab799fdca5df6d12b65a3d8cab69fa9b0e0db578e917f523b` |
| 25 | `theorem` | [restrictScalars₁₂_inj](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalars-inj--357f610996b025d6eb3d3c6b.md) | 210 | `result-track:357f610996b025d6eb3d3c6b7763c6069934fe308587e41c3d33e208beb29eb7` |
| 26 | `def` | [mk₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk--34aa2f371866e478678097c4.md) | 237 | `declaration-track:34aa2f371866e478678097c4f3c89172a300025b1ec964eaffa5b53ab628f674` |
| 27 | `theorem` | [mk₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/mk-apply--a44bad2910c9f6816329e29a.md) | 244 | `result-track:a44bad2910c9f6816329e29a5eb579f17190a5b357c5019e5deb9d26648a0482` |
| 28 | `def` | [lflip](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lflip--33f4a48cf7ebae9be0c21651.md) | 251 | `declaration-track:33f4a48cf7ebae9be0c216514ff6311f0f640198d7b24ac98ad1af348afaadc9` |
| 29 | `theorem` | [lflip_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lflip-apply--389fa9f14c4eeff4b68a1ca1.md) | 259 | `result-track:389fa9f14c4eeff4b68a1ca168e3a3e306d779dad32b0a4f224aee01cfb5db93` |
| 30 | `def` | [lcomp](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lcomp--2e96c109bf0459785a2f99f1.md) | 265 | `declaration-track:2e96c109bf0459785a2f99f1c0a5b094603cbf3b270aa59755dd269eb57a650d` |
| 31 | `theorem` | [lcomp_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lcomp-apply--8b5c4778deff0c8d528dac68.md) | 271 | `result-track:8b5c4778deff0c8d528dac684354711517656905ef2eb4588efd62c898b0702b` |
| 32 | `theorem` | [lcomp_apply'](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lcomp-apply--54f2756cab4f0d4a54a95f1b.md) | 273 | `result-track:54f2756cab4f0d4a54a95f1b177b22fb5167fbf7193d58c8bfd62488c9b814bc` |
| 33 | `def` | [lcompₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lcomp--8b485ee7c3d731f0a8e9943f.md) | 279 | `declaration-track:8b485ee7c3d731f0a8e9943f9f064c98a61eee212321bb9899d9a90d7315ecb2` |
| 34 | `theorem` | [lcompₛₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lcomp-apply--18cfbf9f334c5c70beab5c56.md) | 285 | `result-track:18cfbf9f334c5c70beab5c563e34f7e0135570357e0300f59656e0b6c0140f91` |
| 35 | `def` | [llcomp](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/llcomp--9cda5d450f8edd8924c90743.md) | 291 | `declaration-track:9cda5d450f8edd8924c90743dc5bba7ca132fb09ac90bbc104c06352f1eb7874` |
| 36 | `theorem` | [llcomp_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/llcomp-apply--d5a89bba5d4b3806f54ee1da.md) | 302 | `result-track:d5a89bba5d4b3806f54ee1da93913dbcb135450fb55d2bba9078acd8089a3085` |
| 37 | `theorem` | [llcomp_apply'](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/llcomp-apply--2cf95051af07ee621a846a80.md) | 305 | `result-track:2cf95051af07ee621a846a80e6f48f113d0e1536b097d84be9938dc13fa3b743` |
| 38 | `def` | [compl₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl--35da163c4e6b4e1eafa353e2.md) | 311 | `declaration-track:35da163c4e6b4e1eafa353e2ab2db76a8d2c0ce7c41fba5a14a75635e2f2820e` |
| 39 | `theorem` | [compl₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl-apply--d30ab34973517d25c27f012d.md) | 321 | `result-track:d30ab34973517d25c27f012d48854c12d12a91de799eb6d75c9ac32ff75bbdd2` |
| 40 | `theorem` | [compl₂_id](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl-id--d5e652c6cf9695faeef49e7a.md) | 324 | `result-track:d5e652c6cf9695faeef49e7a8e905578709201db773ec7cc8e5cc38771a1f5c0` |
| 41 | `def` | [compl₁₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl--9ed55a5031833dc6276abd85.md) | 330 | `declaration-track:9ed55a5031833dc6276abd852a7b42d6ae28020f9386446ac36e090b8978e32b` |
| 42 | `theorem` | [compl₁₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl-apply--f46955986839fe269f5e06be.md) | 337 | `result-track:f46955986839fe269f5e06be6a18c888ea453d1ebc764a44d3c47a7109e86bfd` |
| 43 | `theorem` | [compl₁₂_id_id](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl-id-id--51f1e007944ecaa3bc974f76.md) | 341 | `result-track:51f1e007944ecaa3bc974f766dd94ef20e24954d078a2f7f8325b23585a4064c` |
| 44 | `theorem` | [compl₁₂_inj](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compl-inj--98d7f2ebea0c2f528e0f363c.md) | 345 | `result-track:98d7f2ebea0c2f528e0f363c833b1c3513f35ac83dcc2988777eae2923357bfc` |
| 45 | `def` | [compr₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compr--519aa274fad5b9bcd3cdff53.md) | 361 | `declaration-track:519aa274fad5b9bcd3cdff53123f5880d3cfcf42a5567779e6f791c9be16167c` |
| 46 | `theorem` | [compr₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/compr-apply--9b4311090747a1b7a4d54cdb.md) | 365 | `result-track:9b4311090747a1b7a4d54cdbd6aac483fcabb3be033519bb5b5957d53da10283` |
| 47 | `theorem` | [injective_compr₂_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/injective-compr-of-injective--6ab0f44d518fbaf919f2607e.md) | 369 | `result-track:6ab0f44d518fbaf919f2607e2b86ffbb890dbc3c0ad402acc7dd92c311f274a4` |
| 48 | `theorem` | [surjective_compr₂_of_exists_rightInverse](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/surjective-compr-of-exists-rightinverse--b3058409f757743b01610785.md) | 374 | `result-track:b3058409f757743b01610785e520dd8ef40db27856521ac68a43d5de6cee7309` |
| 49 | `theorem` | [surjective_compr₂_of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/surjective-compr-of-equiv--bb062d659e740acb1a351227.md) | 379 | `result-track:bb062d659e740acb1a351227a0cf3cbe42ecf2925f9655c7ce3ca39894119aec` |
| 50 | `theorem` | [bijective_compr₂_of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/bijective-compr-of-equiv--ed62be3f2d42ac05136554a7.md) | 384 | `result-track:ed62be3f2d42ac05136554a7cdc10bdbc962b9b636e7ff530333a5e19ecb0bda` |
| 51 | `def` | [lsmul](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lsmul--799bb0fbd0220f45648e1bb8.md) | 392 | `declaration-track:799bb0fbd0220f45648e1bb8e4842598614cbc8fa3a41d6538a10d1632d97342` |
| 52 | `lemma` | [lsmul_eq_DistribMulAction_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lsmul-eq-distribmulaction-tolinearmap--03ddea6b829ed245990fd010.md) | 398 | `result-track:03ddea6b829ed245990fd0100c08ec5da780fa5e7d61cbd51d829a1e5abc6bba` |
| 53 | `theorem` | [lsmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lsmul-apply--cc5d33af0995403fcc18eb0c.md) | 404 | `result-track:cc5d33af0995403fcc18eb0c2e3db68f74ee9865e5ed7b79a990cbe076ad3bde` |
| 54 | `abbrev` | [BilinMap](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/bilinmap--e394a872e5a4befd69ed8aeb.md) | 408 | `declaration-track:e394a872e5a4befd69ed8aebcbcff0bbca3a3ae15ebaa711d2b384c53e2117c9` |
| 55 | `abbrev` | [BilinForm](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/bilinform--e1e0e117c8527d9c4032a316.md) | 412 | `declaration-track:e1e0e117c8527d9c4032a316536084a12dbbdcc9ca1bfa780b004c5fffdde9f6` |
| 56 | `theorem` | [lsmul_injective](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/lsmul-injective--7ff0c2a5fd67fc3ac268c544.md) | 424 | `result-track:7ff0c2a5fd67fc3ac268c5442fc48a844310ee12d03b9ecdd1db92b8ce7b64cc` |
| 57 | `theorem` | [ker_lsmul](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/ker-lsmul--bdb81f10c35962d7460030d0.md) | 428 | `result-track:bdb81f10c35962d7460030d02ad403b3d2d57c0be98613383f00de5dd586c95d` |
| 58 | `def` | [restrictScalarsRange](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange--b1f43f547163761f2aed7357.md) | 451 | `declaration-track:b1f43f547163761f2aed7357e798bf35acb368165c794dc844a6a5d0ba5b88e0` |
| 59 | `lemma` | [restrictScalarsRange_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange-apply--d19dc80919407c238ceaa017.md) | 456 | `result-track:d19dc80919407c238ceaa017fa2cd757b120ce57f109e303a7d7d6d0d2f6ed74` |
| 60 | `lemma` | [eq_restrictScalarsRange_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/eq-restrictscalarsrange-iff--a79f8a3dfdac51c3aa50d465.md) | 464 | `result-track:a79f8a3dfdac51c3aa50d465a601ec31a08a5a5419f3ebd192739de831159274` |
| 61 | `lemma` | [restrictScalarsRange_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange-apply-eq-zero-iff--c493e764ba45cb3afa9cd850.md) | 469 | `result-track:c493e764ba45cb3afa9cd85091688ac51dbaeb0217c49a9fa78d3c8400b504f4` |
| 62 | `def` | [restrictScalarsRange₂](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange--9fe2136cad929bcd69eb7941.md) | 489 | `declaration-track:9fe2136cad929bcd69eb79410c594c28106943728dc03a798e0119102abe2367` |
| 63 | `lemma` | [restrictScalarsRange₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange-apply--f12f1daa7a8be7a16da3acbc.md) | 494 | `result-track:f12f1daa7a8be7a16da3acbcf0cfdf9d31f6f03dd8deb2b1f421a19ffd3f9a67` |
| 64 | `lemma` | [eq_restrictScalarsRange₂_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/eq-restrictscalarsrange-iff--ad4e61127c2888bc64caf354.md) | 499 | `result-track:ad4e61127c2888bc64caf3545be535f333b778eb0c70372991a7fc0066fd652e` |
| 65 | `lemma` | [restrictScalarsRange₂_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/BilinearMap/Variant2ef3c059d71878fd65a28badf479063525eb6159c443c8bc0a2cafed848d2bbd.lean/declarations/restrictscalarsrange-apply-eq-zero-iff--b54e1d358e635b743efaae78.md) | 504 | `result-track:b54e1d358e635b743efaae783a68f97894abb947409aac560188d0bcdd28fc98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
