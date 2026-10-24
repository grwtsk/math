# Verification target: GRWTSK.Algebra.LinearAlgebra.Classical.Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e9dc6a31a1b12b717877a8ceb5fe0136b2beb65",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e9dc6a31a1b12b717877a8ceb5fe0136b2beb65`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Abelian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.SkewAdjoint` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SymplecticGroup` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matrix_trace_commutator_zero](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/matrix-trace-commutator-zero--dff6c3f50148db236dfae73e.md) | 94 | `result-track:dff6c3f50148db236dfae73e97f439f04052ed966198c47d7a5974c7b9743504` |
| 2 | `def` | [sl](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/sl--4cdc8a7f3e3c473490b2adc4.md) | 105 | `declaration-track:4cdc8a7f3e3c473490b2adc4c4d8ed4bf650465348b1f7b66fca2af5f5f13507` |
| 3 | `theorem` | [sl_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/sl-bracket--68c68c6f41fa32266e63d1cb.md) | 110 | `result-track:68c68c6f41fa32266e63d1cbcab6fd74ea723d39f26a06a015399cf15275a8f2` |
| 4 | `def` | [Eb](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/eb--5bed38f31cfae99543d4e03f.md) | 120 | `declaration-track:5bed38f31cfae99543d4e03f6bd83f59ad7707470a5e553746d8b0032fed6595` |
| 5 | `theorem` | [eb_val](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/eb-val--8f2118f583e1014a8c6a5d00.md) | 127 | `result-track:8f2118f583e1014a8c6a5d00c4107d4cbbbf40d36982e0b454223f7a69f9a2e5` |
| 6 | `theorem` | [sl_non_abelian](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/sl-non-abelian--ab0887963abd709ccaa1df2e.md) | 133 | `result-track:ab0887963abd709ccaa1df2ec5115fbac85b9280b688d08b85217523ef29d780` |
| 7 | `def` | [sp](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/sp--8a358c843b6d29fa963c1804.md) | 150 | `declaration-track:8a358c843b6d29fa963c18044e9f310b4140b8099ecf9d59ad2ce56ade0aaed1` |
| 8 | `def` | [so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/so--67aeefc2b5674fc6f222395c.md) | 160 | `declaration-track:67aeefc2b5674fc6f222395c6c3a2a891001795b01d00798d7b9fff646662a7c` |
| 9 | `theorem` | [mem_so](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/mem-so--f3ad4ba0832503ef43eaa93f.md) | 165 | `result-track:f3ad4ba0832503ef43eaa93f272bebebe8a644c08d6a0901b0423adec0fb9a52` |
| 10 | `def` | [indefiniteDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/indefinitediagonal--871b9e5e14a8ba3cae160ca6.md) | 171 | `declaration-track:871b9e5e14a8ba3cae160ca65bbeb0758b269ab0b19d40ecc5e8e134b3e71288` |
| 11 | `def` | [so'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/so--db1423505862ea38c2b5fc97.md) | 177 | `declaration-track:db1423505862ea38c2b5fc97d6ac941c15b997b98fe9b28166267a2884058e32` |
| 12 | `def` | [Pso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pso--de35083f771f1c685c1fb544.md) | 183 | `declaration-track:de35083f771f1c685c1fb54478fd4d3f9c22fc34ed84b429fa4b5cc2d0361a71` |
| 13 | `theorem` | [pso_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pso-inv--a0afcf39e050bd5a2a110ab1.md) | 189 | `result-track:a0afcf39e050bd5a2a110ab1c43e9afec8071be129636735e9d80ccc4c2f223e` |
| 14 | `def` | [invertiblePso](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/invertiblepso--2b585dd8ad7bc09bf21927bb.md) | 204 | `declaration-track:2b585dd8ad7bc09bf21927bba6fac4a96adf07b4fe684eabba345f752a25b270` |
| 15 | `theorem` | [indefiniteDiagonal_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/indefinitediagonal-transform--ad33289083948951b3d6c527.md) | 208 | `result-track:ad33289083948951b3d6c527519f32ada638d9341453b952ce9d766eb040c9d6` |
| 16 | `def` | [soIndefiniteEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/soindefiniteequiv--d0d186455f08781cbc25cae6.md) | 225 | `declaration-track:d0d186455f08781cbc25cae672013e44f6efe6f5b4b47605d57273edd2ee254e` |
| 17 | `theorem` | [soIndefiniteEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/soindefiniteequiv-apply--7d83595095367c44431c95fc.md) | 233 | `result-track:7d83595095367c44431c95fc30a74f8a6c06bd913353a30d95c10bb084d34704` |
| 18 | `def` | [JD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/jd--ebdabdca36772414107d849b.md) | 247 | `declaration-track:ebdabdca36772414107d849b5c5140974426dbac212a77e60fd7fd5d490c0c41` |
| 19 | `def` | [typeD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/typed--31deef98e0f22b91194f8dbe.md) | 253 | `declaration-track:31deef98e0f22b91194f8dbedbd3b6c18d78587e0a5f25ffdc2cace7cb1ce01c` |
| 20 | `def` | [PD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pd--ea6a3c6577709b5fccf1b3c7.md) | 265 | `declaration-track:ea6a3c6577709b5fccf1b3c7439d88350f88f17d06fa81ff5c311bfbc2744f6b` |
| 21 | `def` | [S](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/s--4eaee6f7597fd3817e78d002.md) | 270 | `declaration-track:4eaee6f7597fd3817e78d00211cc16e4e0bf43c010c797976eddff43221c5164` |
| 22 | `theorem` | [s_as_blocks](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/s-as-blocks--6fccd6a8c51f9f06bcc6b035.md) | 274 | `result-track:6fccd6a8c51f9f06bcc6b035a109cd821aace552cadae015cad8a4afada81085` |
| 23 | `theorem` | [jd_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/jd-transform--2d3af87a38b419c2df7a2859.md) | 279 | `result-track:2d3af87a38b419c2df7a28598dd5120bf342e0721df895a962ec3d8d827fd00a` |
| 24 | `theorem` | [pd_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pd-inv--61fa0f09448923eed6fc9b0a.md) | 287 | `result-track:61fa0f09448923eed6fc9b0ae0563f6e5d43fe26edfa162978a3c87644152428` |
| 25 | `instance` | [invertiblePD](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/invertiblepd--5ea29ccdaf402d6b59af1941.md) | 293 | `declaration-track:5ea29ccdaf402d6b59af1941dde8357aaf5509a050bded9ffda9a96a462c403c` |
| 26 | `def` | [typeDEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/typedequivso--fff0ed03df70d8462027223e.md) | 298 | `declaration-track:fff0ed03df70d8462027223e12eea9c70e6a945a017fa47f058a2c1ba70332c5` |
| 27 | `def` | [JB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/jb--0c34a81e59cbfe5cd21f8c6c.md) | 321 | `declaration-track:0c34a81e59cbfe5cd21f8c6c20a12ce7e1d5c32f473a2c273ce4b564b9380546` |
| 28 | `def` | [typeB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/typeb--7debc6daf54dde6528f739db.md) | 327 | `declaration-track:7debc6daf54dde6528f739db8201e9e81d6ce71aecbb1bf305759418a645ca4e` |
| 29 | `def` | [PB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pb--d3c87e6262f0f0b504f217b7.md) | 346 | `declaration-track:d3c87e6262f0f0b504f217b7f6cfa0cfd44442cec01b4dc5aadebe5ba0b1f322` |
| 30 | `theorem` | [pb_inv](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/pb-inv--67271694a25b8224c974ebeb.md) | 352 | `result-track:67271694a25b8224c974ebebae463f443472c6b029a00f5d3d108da566e0681b` |
| 31 | `instance` | [invertiblePB](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/invertiblepb--9e2663578d35550beff4c2aa.md) | 358 | `declaration-track:9e2663578d35550beff4c2aa5bd68b935442075aa02bf6530bf0541cbcc9815b` |
| 32 | `theorem` | [jb_transform](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/jb-transform--b3cce6abcbc5902f9d6d3f64.md) | 362 | `result-track:b3cce6abcbc5902f9d6d3f64211da14967a7c3e680308d9bfb3b8b3dd76a12a1` |
| 33 | `theorem` | [indefiniteDiagonal_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/indefinitediagonal-assoc--00178d915f2222df86fb5ade.md) | 367 | `result-track:00178d915f2222df86fb5ade619c6df685869eb168fa6031ff47f3577001a410` |
| 34 | `def` | [typeBEquivSo'](../../../../../mathematics/Algebra/LinearAlgebra/Classical/Variant044bbffa35a8e034615441dddf3aceba90115b33bc50c55689ef73da177e4ba4.lean/declarations/typebequivso--fb846b2b9dcb3af8865c5bac.md) | 383 | `declaration-track:fb846b2b9dcb3af8865c5bace61d2f951f82fba7331e39cbbe807dc6ad050069` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
