# Verification target: GRWTSK.Algebra.LinearAlgebra.CountablyGenerated.Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ad7a0c8fc21d750070816e32be9ba734f4c1b86",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ad7a0c8fc21d750070816e32be9ba734f4c1b86`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Countable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated--25faa65875378cf0a485f002.md) | 34 | `declaration-track:25faa65875378cf0a485f002a2ad42791d6a9e835c3cfc883115861c2b23c862` |
| 2 | `structure` | [IsCountableBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablebasis--b94bed631714a97e5a8aba55.md) | 39 | `declaration-track:b94bed631714a97e5a8aba55f7149875d75014c99cf2919c02c48ff0be1953bb` |
| 3 | `structure` | [HasCountableBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hascountablebasis--df99d6465e0eda03f773e20a.md) | 46 | `declaration-track:df99d6465e0eda03f773e20a6f3f3a29fd09bd4672c327fbba33bb067bba76c9` |
| 4 | `structure` | [CountableFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/countablefilterbasis--9663ef72aa4cf9aa7ca86b83.md) | 54 | `declaration-track:9663ef72aa4cf9aa7ca86b83561a5473cafa2b26d7427794146341e4347448ab` |
| 5 | `instance` | [Nat.inhabitedCountableFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/nat-inhabitedcountablefilterbasis--dbd7697b9ac13a7a37dbb292.md) | 59 | `declaration-track:dbd7697b9ac13a7a37dbb292e02c8e1e5138aa9d8daa874fce65072c7e662dd6` |
| 6 | `theorem` | [HasCountableBasis.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hascountablebasis-iscountablygenerated--96be9c7980c1757ef2a2e072.md) | 62 | `result-track:96be9c7980c1757ef2a2e072fa1b2f3de05d973ea78623790d7ac63f1fbc54df` |
| 7 | `theorem` | [HasBasis.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hasbasis-iscountablygenerated--51d839fbe8c87dd7caf22e53.md) | 66 | `result-track:51d839fbe8c87dd7caf22e53600fda6b18e8986f7bb1d85f1564012aeaef7286` |
| 8 | `theorem` | [antitone_seq_of_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/antitone-seq-of-seq--ccb45c0b0c5729eaa72cbccb.md) | 70 | `result-track:ccb45c0b0c5729eaa72cbccb4ad6ccd6ed08d69d280a1343e705e1540cbe9b09` |
| 9 | `theorem` | [countable_biInf_eq_iInf_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/countable-biinf-eq-iinf-seq--da2be13073a79fe09d3347fc.md) | 81 | `result-track:da2be13073a79fe09d3347fcbdcdd7736e7a8c7bc1a46ef43ac9cf232310c2fa` |
| 10 | `theorem` | [countable_biInf_eq_iInf_seq'](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/countable-biinf-eq-iinf-seq--1d0de3e9331709c644a22c08.md) | 86 | `result-track:1d0de3e9331709c644a22c086becca829306d66fb42bb7bfb62460daa392b090` |
| 11 | `theorem` | [countable_biInf_principal_eq_seq_iInf](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/countable-biinf-principal-eq-seq-iinf--14a02836efb22faf6e844c5c.md) | 94 | `result-track:14a02836efb22faf6e844c5c7741ba5f85c1a81344b1ed15efb3ed34e2c8d737` |
| 12 | `theorem` | [HasAntitoneBasis.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hasantitonebasis-mem-iff--af08abf7cfa357c4e9f6fc2c.md) | 100 | `result-track:af08abf7cfa357c4e9f6fc2c0fc14a62a0cf2f9e6b2f8d0350a9be9ab6d19df5` |
| 13 | `theorem` | [HasAntitoneBasis.mem](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hasantitonebasis-mem--f34dc41f77d8a6c8cf7f82f8.md) | 104 | `result-track:f34dc41f77d8a6c8cf7f82f85d07a902402e5bca52a15b80b6ada8075061cd52` |
| 14 | `theorem` | [HasAntitoneBasis.hasBasis_ge](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hasantitonebasis-hasbasis-ge--ca9fa8dc59d223499eb57ea1.md) | 108 | `result-track:ca9fa8dc59d223499eb57ea15c25dd9cac3ef19921a609cd8dfc33ac19ce839e` |
| 15 | `theorem` | [HasBasis.exists_antitone_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/hasbasis-exists-antitone-subbasis--b8fd8b515856168203d15a17.md) | 117 | `result-track:b8fd8b515856168203d15a17fc7d6127dc0ba8076c93a954e8ad3c54d9848136` |
| 16 | `theorem` | [exists_antitone_basis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/exists-antitone-basis--7e6174bc33292c91ec41d4bc.md) | 142 | `result-track:7e6174bc33292c91ec41d4bc2c851cc2b1a67fec84646352a380659feb31258b` |
| 17 | `theorem` | [exists_antitone_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/exists-antitone-seq--dc701f78bbe1bc058d974540.md) | 147 | `result-track:dc701f78bbe1bc058d974540d540e6e975c53739edcab6c398179fbcb196f5a3` |
| 18 | `instance` | [Inf.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/inf-iscountablygenerated--b61af9f0db885eba88db882a.md) | 152 | `declaration-track:b61af9f0db885eba88db882a8101f59809fc0663beb940b99c91227294c8cc9d` |
| 19 | `instance` | [map.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/map-iscountablygenerated--a6775c77793859a3882bac36.md) | 158 | `declaration-track:a6775c77793859a3882bac3648a645f5c0e6b3d1ef0d2c128b388c6f558f6e09` |
| 20 | `instance` | [comap.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/comap-iscountablygenerated--5510b0e2a9c1c03a020ab5a8.md) | 163 | `declaration-track:5510b0e2a9c1c03a020ab5a8ad6f3690fdee4e9fdbc2792106bb935fe9dedc4c` |
| 21 | `instance` | [Sup.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/sup-iscountablygenerated--8fdfc969c13f69c2584c21ec.md) | 168 | `declaration-track:8fdfc969c13f69c2584c21ece6c4764d10a4f484b46b9b7c254dc87c35e99888` |
| 22 | `instance` | [prod.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/prod-iscountablygenerated--485e151907d2e05759739900.md) | 174 | `declaration-track:485e151907d2e0575973990082899959b5085edacd87ca6876aca3d8d618da57` |
| 23 | `instance` | [coprod.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/coprod-iscountablygenerated--92f1d38fe0ed454c25f53fc6.md) | 178 | `declaration-track:92f1d38fe0ed454c25f53fc6c521c0fd4ebfacfb7673e42dbaf328a0c0a273bf` |
| 24 | `theorem` | [isCountablyGenerated_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-seq--54b3a7e3b13c46b38f0a6e1e.md) | 184 | `result-track:54b3a7e3b13c46b38f0a6e1e05255478c1d3126d0589246df7fb3af0a08c1adb` |
| 25 | `theorem` | [isCountablyGenerated_of_seq](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-of-seq--e379f1cd298ffbae64fa207c.md) | 189 | `result-track:e379f1cd298ffbae64fa207c30a5ce039c16bcf5ed4eb7799a2fb51781dba043` |
| 26 | `theorem` | [isCountablyGenerated_biInf_principal](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-biinf-principal--fcf57b16ba6b617da5021308.md) | 194 | `result-track:fcf57b16ba6b617da50213089eec3deae2de3d75b30ae770d7d86c32842c0bb0` |
| 27 | `theorem` | [isCountablyGenerated_iff_exists_antitone_basis](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-iff-exists-antitone-basis--0214f0a56d0331f72b44c6d7.md) | 198 | `result-track:0214f0a56d0331f72b44c6d7975f2f268fa85ae2477b9772816ce35dd3423eb8` |
| 28 | `theorem` | [isCountablyGenerated_principal](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-principal--adb42c19e4c5e4235deabd79.md) | 208 | `result-track:adb42c19e4c5e4235deabd79493e7bfaaaf28be2ba3fc624b564c55f753b29ac` |
| 29 | `theorem` | [isCountablyGenerated_pure](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-pure--33eab36d9f6d5e9d39bc6931.md) | 212 | `result-track:33eab36d9f6d5e9d39bc69313895c8188fdf051ffe1ec6cdd23f53e078edd89c` |
| 30 | `theorem` | [isCountablyGenerated_bot](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-bot--63adec87c0b58bacc41be6f8.md) | 217 | `result-track:63adec87c0b58bacc41be6f8facdf322759a5eb85a8df6285b4e998c7dc26191` |
| 31 | `theorem` | [isCountablyGenerated_top](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iscountablygenerated-top--ffcb476b543bb1f42ed6138a.md) | 221 | `result-track:ffcb476b543bb1f42ed6138a4d38f7a9e9d467d6e0b1a883246184d5aa2b7773` |
| 32 | `instance` | [iInf.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/iinf-iscountablygenerated--1b68a8a26ae4575fd8e1f61c.md) | 224 | `declaration-track:1b68a8a26ae4575fd8e1f61c2ca35154e88baa439bed7c50470f0639e7712e9c` |
| 33 | `instance` | [pi.isCountablyGenerated](../../../../../mathematics/Algebra/LinearAlgebra/CountablyGenerated/Varianta30c25be1fb11ad3050a44f58395e9532615cfe6ed3a9eb2540efe9baf17d3e6.lean/declarations/pi-iscountablygenerated--fa4dd04ada273d2e9d3b2226.md) | 234 | `declaration-track:fa4dd04ada273d2e9d3b2226732ad5b0c2b5542f22f7b179f7cf21036eb46e7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
