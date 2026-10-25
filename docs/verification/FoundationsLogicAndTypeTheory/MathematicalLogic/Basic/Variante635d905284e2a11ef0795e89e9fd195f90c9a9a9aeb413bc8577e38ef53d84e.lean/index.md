# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5d711be272b276e9a655c6e185302eb0beb1ded",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5d711be272b276e9a655c6e185302eb0beb1ded`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Combinators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relator` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 10; external provider; requires a separately pinned dependency.
- `Aesop` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/coe-def--981345bf03047112016d5b78.md) | 40 | `result-track:981345bf03047112016d5b78aef4192c74d5a457f0372cbcee7abbbb5586ccaa` |
| 2 | `theorem` | [mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/mem-map--7db8be827213e6b796104f86.md) | 43 | `result-track:7db8be827213e6b796104f862ca3e5dd94debda3db6e9fa28570e2ea64f0c570` |
| 3 | `theorem` | [mem_map_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/mem-map-of-injective--8a6ad824bda7ce6f3bed0703.md) | 50 | `result-track:8a6ad824bda7ce6f3bed0703faea58b4e3735672728674dd9985975bab7bf504` |
| 4 | `theorem` | [forall_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/forall-mem-map--612e6e76b6e1911d41137f94.md) | 54 | `result-track:612e6e76b6e1911d41137f94ac59ad3ed411f32ba1f1d2a7638623b8319020a2` |
| 5 | `theorem` | [exists_mem_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/exists-mem-map--7efaf68329f5505d28931b11.md) | 57 | `result-track:7efaf68329f5505d28931b11d77f4c0c59ed618fd6059118baa8c6b721e61dc5` |
| 6 | `theorem` | [coe_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/coe-get--09f6359a70864398e73c255c.md) | 60 | `result-track:09f6359a70864398e73c255cd76495c7fc9087372ff62b2cb4c6dedb51b7f87d` |
| 7 | `theorem` | [eq_of_mem_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/eq-of-mem-of-mem--2a6c8b005f7ddcf185cf9c6e.md) | 63 | `result-track:2a6c8b005f7ddcf185cf9c6e685ba6eb26225f3af8a4e09fae7d5192fc9393b5` |
| 8 | `theorem` | [Mem.leftUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/mem-leftunique--1dad6aa3bb512d4461209f58.md) | 66 | `result-track:1dad6aa3bb512d4461209f585acaac79d99b95f0832b63f776406255af912b6d` |
| 9 | `theorem` | [some_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/some-injective--01dc0939be41729e222c26be.md) | 69 | `result-track:01dc0939be41729e222c26be1a1cedd21d0fd4e992586fd36cc7f94893ace80f` |
| 10 | `theorem` | [map_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-injective--aa910bff5da71fabc3eb0d2f.md) | 72 | `result-track:aa910bff5da71fabc3eb0d2f51154b6b2616c1a3b165ac5367aaec3c62f5039a` |
| 11 | `theorem` | [map_comp_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-comp-some--955d258ade43c6190899b323.md) | 77 | `result-track:955d258ade43c6190899b323afece99eb68e60ea2b7a53019b6eb2dcd698abe4` |
| 12 | `theorem` | [none_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/none-bind--54fc18df2f7c7f07509039cd.md) | 81 | `result-track:54fc18df2f7c7f07509039cdfbc0879c7f46cd60157e1d55b390f70e918f5d68` |
| 13 | `theorem` | [some_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/some-bind--2147178cd05646a245f934ab.md) | 84 | `result-track:2147178cd05646a245f934abc8b54722b968f0b491bd01031e41af09bbcc85dd` |
| 14 | `theorem` | [bind_eq_some'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/bind-eq-some--5f41816fea2e1f2da2237368.md) | 87 | `result-track:5f41816fea2e1f2da2237368a2490297ff1b48a6c4567e7478a1e9b3d7b56f14` |
| 15 | `theorem` | [bind_congr'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/bind-congr--19e0c0594dddf753f16ad1c0.md) | 91 | `result-track:19e0c0594dddf753f16ad1c075f9b65241b3e66a309bc9ae58c21c1fdc4da480` |
| 16 | `theorem` | [bind_congr''](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/bind-congr--223ba4087b7715b8f64d960e.md) | 98 | `result-track:223ba4087b7715b8f64d960ebf7772ea524580f91b4b16d0fcb34f5bc651b5b4` |
| 17 | `theorem` | [joinM_eq_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/joinm-eq-join--177f4be89537faf591745919.md) | 102 | `result-track:177f4be89537faf5917459190fc8f1eaae02f3c04b6d7f0e5fcc77d1dba8457b` |
| 18 | `theorem` | [bind_eq_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/bind-eq-bind--0be2a1bddd6fdae04de1a2a8.md) | 105 | `result-track:0be2a1bddd6fdae04de1a2a8b9769e426e012eecd866bcb41d8adc2800cf5dea` |
| 19 | `theorem` | [map_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-coe--24b09ec4bd75228f17e0ecd2.md) | 108 | `result-track:24b09ec4bd75228f17e0ecd20d0b0e1031b6cd61cb12222b89787af521cb53fc` |
| 20 | `theorem` | [map_coe'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-coe--59051cb0b01b9fa710ca8c9b.md) | 112 | `result-track:59051cb0b01b9fa710ca8c9b5c44a27739abb1cc1bc40662b92b1da643cf2972` |
| 21 | `theorem` | [map_injective'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-injective--e8a965d96c3106dc39e32a07.md) | 116 | `result-track:e8a965d96c3106dc39e32a076dc8206ccf456da14614e60df326d1ad41d3454a` |
| 22 | `theorem` | [map_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-inj--3eb3a811b24e6d1aa2e6745e.md) | 120 | `result-track:3eb3a811b24e6d1aa2e6745e3ee883d921051f06da007a0e9a9d73b6196afb04` |
| 23 | `theorem` | [map_eq_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-eq-id--fe3bf7c33177af7635455603.md) | 126 | `result-track:fe3bf7c33177af7635455603c3b6bbfc200d6febbd6762557de1d7c6985cd87b` |
| 24 | `theorem` | [map_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-comm--d37436eeace0fda97a529671.md) | 129 | `result-track:d37436eeace0fda97a529671e6cdbf5a49d0e2c2a657032f2d2f755f5edec84b` |
| 25 | `theorem` | [map_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/map-bind--d0063d6f74dc7fa8094dece1.md) | 138 | `result-track:d0063d6f74dc7fa8094dece11479df7f4d8d8b086b095b1a6e43227bbd7d146e` |
| 26 | `theorem` | [mem_pmem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/mem-pmem--fde9e40e4a2d43bce68ccc77.md) | 141 | `result-track:fde9e40e4a2d43bce68ccc77cb6726565f041a2303d50ef75d6035726c089cde` |
| 27 | `theorem` | [pmap_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/pmap-bind--7fb9f40d10bdaeebe0a533aa.md) | 146 | `result-track:7fb9f40d10bdaeebe0a533aaead42063bb03d3aeaa8380e5f05780cb453b1c1e` |
| 28 | `theorem` | [bind_pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/bind-pmap--2c63aa5bca147c2543af8f66.md) | 151 | `result-track:2c63aa5bca147c2543af8f66dbfed59d1cc5e3f17987b07044b3e90211ec275f` |
| 29 | `theorem` | [pbind_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/pbind-eq-none--963550938c24b9cb0fe34d58.md) | 157 | `result-track:963550938c24b9cb0fe34d58cb4a0e9903201d073940c2b08a3aa08e64b2d5b5` |
| 30 | `theorem` | [join_pmap_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/join-pmap-eq-pmap-join--2c40740713e1d4b6a284f3d7.md) | 165 | `result-track:2c40740713e1d4b6a284f3d70ca5209d33a40e4716163ca7ec74a55025ee978b` |
| 31 | `theorem` | [pmap_bind_id_eq_pmap_join](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/pmap-bind-id-eq-pmap-join--cb9db84954908912abad2ab3.md) | 169 | `result-track:cb9db84954908912abad2ab3f42ccb437ead353fbf1bbb98cb617c8a10966198` |
| 32 | `theorem` | [seq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/seq-some--7e77eac528996ddef43f40d8.md) | 177 | `result-track:7e77eac528996ddef43f40d815da5ea5639fac127976bcd1a8f27dd6fb2ad5f6` |
| 33 | `theorem` | [iget_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/iget-mem--07343e22c1ce3ef7d9d874cd.md) | 184 | `result-track:07343e22c1ce3ef7d9d874cd716ea9f19fa4e6eca84ba25616a62b1327b4c434` |
| 34 | `theorem` | [iget_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/iget-of-mem--fcc6bf4e6d65a86f15a0d3e5.md) | 187 | `result-track:fcc6bf4e6d65a86f15a0d3e52224d8313c8527f96ffddb5003af21108ed606ec` |
| 35 | `theorem` | [getD_default_eq_iget](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/getd-default-eq-iget--181391af7eff340e1f84c233.md) | 190 | `result-track:181391af7eff340e1f84c2335331c17e10cf3395e8240979b041b4c68350126b` |
| 36 | `theorem` | [guard_eq_some'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/guard-eq-some--63272548da82c06486d307c2.md) | 194 | `result-track:63272548da82c06486d307c204b691ffcb414f6dbe9f6c24b34d0b146181168e` |
| 37 | `def` | [casesOn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson--44d1acaab38ae8f4adaa6326.md) | 202 | `declaration-track:44d1acaab38ae8f4adaa632610dd021d41830450b3c3c902f2b45fc62abfb698` |
| 38 | `theorem` | [casesOn'_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson-none--910dc007f807b56a849d5707.md) | 207 | `result-track:910dc007f807b56a849d5707fe1d3d0b2d458db59848f75d367759d00d328950` |
| 39 | `theorem` | [casesOn'_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson-some--f3b583f803955f140f0fd22f.md) | 211 | `result-track:f3b583f803955f140f0fd22f3d8f310e8313c4e66cc4e2c5551078bb283b87d3` |
| 40 | `theorem` | [casesOn'_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson-coe--57e63e6527595dbbcc194a44.md) | 215 | `result-track:57e63e6527595dbbcc194a44ff5058945d7211daad5138e5ab77d8a7953cd7c9` |
| 41 | `theorem` | [casesOn'_none_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson-none-coe--28a6530e2977eb838ae0c367.md) | 219 | `result-track:28a6530e2977eb838ae0c367803b6e931b7a13105832b8ca397a47e28ea5b88e` |
| 42 | `lemma` | [casesOn'_eq_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/caseson-eq-elim--2267fd00b106a756f089862a.md) | 222 | `result-track:2267fd00b106a756f089862a1f689c08c66861a848e041fce4657919e2c086be` |
| 43 | `theorem` | [orElse_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/orelse-eq-some--9774eec814ed94ee17e7bfcf.md) | 225 | `result-track:9774eec814ed94ee17e7bfcf9d710aeea179c8746b2ad7d342ba824cf42996fa` |
| 44 | `theorem` | [orElse_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/orelse-eq-none--71a57669e0cbebde781cd0b9.md) | 231 | `result-track:71a57669e0cbebde781cd0b9233bde9ce960bd2390b23313957f4b807fbe9345` |
| 45 | `theorem` | [choice_eq_none](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/choice-eq-none--01a3fa4d2c5e2e5e332bd3d5.md) | 238 | `result-track:01a3fa4d2c5e2e5e332bd3d5fd752a93474cc2e99fddc8b9d3b2061725a63d57` |
| 46 | `theorem` | [elim_none_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/elim-none-some--90d04a33df6b00b5c71c6748.md) | 244 | `result-track:90d04a33df6b00b5c71c67480766b28933011c0c3fc8f14ac55c34c8d26bcb57` |
| 47 | `theorem` | [elim_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/elim-comp--811451a554b3e41e355dfe74.md) | 247 | `result-track:811451a554b3e41e355dfe74bab3272e8f139919115e76f5433ab897a96da751` |
| 48 | `theorem` | [elim_comp₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/elim-comp--39eb084bae1b2c15561bdfe5.md) | 250 | `result-track:39eb084bae1b2c15561bdfe566fab9b76d0c2100aa52a3e337d68342b48cf767` |
| 49 | `theorem` | [elim_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/elim-apply--92769b1a9eb5e660652aa0ef.md) | 254 | `result-track:92769b1a9eb5e660652aa0efb16eac397eba3625d6015bf3a8b8593f9fca58f3` |
| 50 | `lemma` | [elim'_update](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante635d905284e2a11ef0795e89e9fd195f90c9a9a9aeb413bc8577e38ef53d84e.lean/declarations/elim-update--c2720499c00b41aae0d4a378.md) | 265 | `result-track:c2720499c00b41aae0d4a3782f713aaf33491271c3f9f07077ecb43aa09788af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
