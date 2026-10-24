# Verification target: GRWTSK.Algebra.UniversalAlgebra.Div.Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6791c525896d2e933233fc0a0c59342323f54143",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6791c525896d2e933233fc0a0c59342323f54143`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv--a59270da4a47bd8db9216c50.md) | 66 | `declaration-track:a59270da4a47bd8db9216c507b6e08280c70ec2d2f7adc801beb48169bb52a8c` |
| 2 | `class` | [CeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv--3bbe447657ca43893d5d49d9.md) | 78 | `declaration-track:3bbe447657ca43893d5d49d909101a1881dc68e14f7599b60161937ed82e5e0c` |
| 3 | `lemma` | [gc_floorDiv_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/gc-floordiv-smul--b7bc5ccd0806a3d0913d8c6d.md) | 96 | `result-track:b7bc5ccd0806a3d0913d8c6de8b09ab461d95dcc4459a92d298017f56e3a3db9` |
| 4 | `lemma` | [le_floorDiv_iff_smul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/le-floordiv-iff-smul-le--ef4e0a302f025c035626f920.md) | 99 | `result-track:ef4e0a302f025c035626f920ac45ad5403e9f638f1488d62ce501dc7c75f3a99` |
| 5 | `lemma` | [floorDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-of-nonpos--8b08aa07501a879df9a6bdc7.md) | 102 | `result-track:8b08aa07501a879df9a6bdc7cdd01ae8af2a536cde32fdf24ee6d3719ac09bfd` |
| 6 | `lemma` | [floorDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-zero--f03a9ed471bcd521b29a0d79.md) | 103 | `result-track:f03a9ed471bcd521b29a0d79163c929817bfcf7e6d240fee0d9a7c085953779b` |
| 7 | `lemma` | [zero_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/zero-floordiv--5c2760f17139a334535ce55d.md) | 104 | `result-track:5c2760f17139a334535ce55d8b12f2dbfda841a46b019e9e7bbff3d51ac052cb` |
| 8 | `lemma` | [smul_floorDiv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/smul-floordiv-le--4e0ad37e4ddfe8525bbb4496.md) | 106 | `result-track:4e0ad37e4ddfe8525bbb4496b55d334a5eb1734e6afb974bd73639610e7bab32` |
| 9 | `lemma` | [gc_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/gc-smul-ceildiv--10ea1bd7dcf27e667a7423e7.md) | 113 | `result-track:10ea1bd7dcf27e667a7423e7c9ad947941614094f6ca703834fa0cd0d28c2f5f` |
| 10 | `lemma` | [ceilDiv_le_iff_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-le-iff-le-smul--e1505046313178a0001e9fb4.md) | 117 | `result-track:e1505046313178a0001e9fb48f2b396188d0947bd48bae0a48df07eaa0c2eef3` |
| 11 | `lemma` | [ceilDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-of-nonpos--5e7bddc364be5f416fd047da.md) | 119 | `result-track:5e7bddc364be5f416fd047da76ef072bfef0e6afd8c5bcac2e3f1550c8295bdb` |
| 12 | `lemma` | [ceilDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-zero--47c3407f6d6ccf496bae1aef.md) | 120 | `result-track:47c3407f6d6ccf496bae1aef3cdb204dff0189183dc040132a19258e596e467d` |
| 13 | `lemma` | [zero_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/zero-ceildiv--3e92dbd749e78ff6ea488fff.md) | 121 | `result-track:3e92dbd749e78ff6ea488fff66f708a23c9de1a534c47b733d3beaab3d645176` |
| 14 | `lemma` | [le_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/le-smul-ceildiv--46f2b25a6ef99783281bcc26.md) | 123 | `result-track:46f2b25a6ef99783281bcc26de70a0c2d3af230816dfc4a2b253d5b5f2101bb6` |
| 15 | `lemma` | [floorDiv_le_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-le-ceildiv--e8211039c193c39f8e2db238.md) | 132 | `result-track:e8211039c193c39f8e2db2388316e4a3e047b0feed99b851d62d89870ce96339` |
| 16 | `lemma` | [floorDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-one--205368e52cc8439500e65927.md) | 145 | `result-track:205368e52cc8439500e65927b31165b68476f1674214f3c242d50c051c5464f6` |
| 17 | `lemma` | [smul_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/smul-floordiv--7843904ac4c0eebf613e7c81.md) | 148 | `result-track:7843904ac4c0eebf613e7c81bde41260236a9c40880a932e3afa31904e9934c8` |
| 18 | `lemma` | [ceilDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-one--76d0487af6d137f799a77631.md) | 157 | `result-track:76d0487af6d137f799a776316e67e8334352b1a08fae8104d910e7919e0a676b` |
| 19 | `lemma` | [smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/smul-ceildiv--c28010d8f2f0464332e986c7.md) | 160 | `result-track:c28010d8f2f0464332e986c742affc2564d2f00c20ded0d6351277e6a2b925b0` |
| 20 | `lemma` | [gc_floorDiv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/gc-floordiv-mul--bf79563337055df361ef4887.md) | 169 | `result-track:bf79563337055df361ef4887b1ba8dbaee2ec2db091476a11460d034bdfef84e` |
| 21 | `lemma` | [le_floorDiv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/le-floordiv-iff-mul-le--b2a584019d98eebc029d062f.md) | 170 | `result-track:b2a584019d98eebc029d062ff1857704a697d75f5e58cd01bf0c3f842734f7b4` |
| 22 | `lemma` | [gc_mul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/gc-mul-ceildiv--a038b46a6b3db22fa1fa4c28.md) | 177 | `result-track:a038b46a6b3db22fa1fa4c288fd344cc5753b1ac920e711be6d30cc2f69a2f2b` |
| 23 | `lemma` | [ceilDiv_le_iff_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-le-iff-le-mul--5b1dcbb979a6d5d6bec48e63.md) | 178 | `result-track:5b1dcbb979a6d5d6bec48e63de30ec37bac8bd215ac2105c54b255be0f22fa58` |
| 24 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instfloordiv--f7209c59448a9ec617cd2f75.md) | 185 | `declaration-track:f7209c59448a9ec617cd2f7507acd95ed5c706f4b65b907df3b103287e97d378` |
| 25 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instceildiv--f6757d8035efbc8d406a173a.md) | 191 | `declaration-track:f6757d8035efbc8d406a173a625097460d00557debd448027128b8e14ec01127` |
| 26 | `lemma` | [floorDiv_eq_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-eq-div--27558cb6a12e484b28a995da.md) | 198 | `result-track:27558cb6a12e484b28a995dab45c71b29a4e5f97bf5aaa7c7b9b366f8f05a367` |
| 27 | `lemma` | [ceilDiv_eq_add_pred_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-eq-add-pred-div--9c961a4d64cc3b57474ba528.md) | 199 | `result-track:9c961a4d64cc3b57474ba528ba620d414801dfca4d1ed14aeb20ccc43f9db476` |
| 28 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instfloordiv--9bcabcfb92750ae3f9b642b8.md) | 211 | `declaration-track:9bcabcfb92750ae3f9b642b8fa79ba258bfc9c42233732a2c0c623d345dea5dd` |
| 29 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-def--fe38d09753500373e9525bb8.md) | 217 | `result-track:fe38d09753500373e9525bb8e52b24fc95464709bd9d0109f08813be82991e9f` |
| 30 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-apply--8b56e1378ccb479ebe9284ce.md) | 218 | `result-track:8b56e1378ccb479ebe9284cec1e38be1e19fa4c64229c52ab11740a70779078c` |
| 31 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instceildiv--ebad134f017e0995b997ba5f.md) | 225 | `declaration-track:ebad134f017e0995b997ba5f4f2cf93c15a60040c828d484e882b5c543ab6cbd` |
| 32 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-def--7524d93ec097e31f63f640ce.md) | 231 | `result-track:7524d93ec097e31f63f640ce127d26979246cb7fe402698e642c4a12210a4d7e` |
| 33 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-apply--05ff5013d002162ead41a546.md) | 232 | `result-track:05ff5013d002162ead41a5460abdab0bb61b47b022535641295a40e733b1bb1b` |
| 34 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instfloordiv--0a35023375c62cba9649b025.md) | 244 | `declaration-track:0a35023375c62cba9649b0258f03295d4306f7d388e42067b9e496d199447d9f` |
| 35 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-def--2b8083d90df29f4748676842.md) | 251 | `result-track:2b8083d90df29f47486768429e0b7e9cdf5f4bd80faa74e568ef8378f52b7863` |
| 36 | `lemma` | [coe_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/coe-floordiv--840f299175ab6ce8e9c02bc4.md) | 252 | `result-track:840f299175ab6ce8e9c02bc40d42b0daa98e967bf0617eb2b5f4c81e8c9ef783` |
| 37 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/floordiv-apply--9153545863298fbc9ca0fcc5.md) | 253 | `result-track:9153545863298fbc9ca0fcc59e1f3f0bfc11b4b2f591503caaa066c7ee29018f` |
| 38 | `lemma` | [support_floorDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/support-floordiv-subset--eb994b9bf76cb2109e1b3e61.md) | 255 | `result-track:eb994b9bf76cb2109e1b3e6175030277e7cd73db9f46326dc1912eee25dd1602` |
| 39 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/instceildiv--f7f234dea30e886224da7eb7.md) | 263 | `declaration-track:f7f234dea30e886224da7eb7c11f0888c8368e3180233ad20b3258bd4d78b521` |
| 40 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-def--3a769d39d9140246da6fc462.md) | 270 | `result-track:3a769d39d9140246da6fc462e8179ad9cf910ded9aa4b23a7a7245d9a973ea53` |
| 41 | `lemma` | [coe_ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/coe-ceildiv-def--632b7b1bb39408f916287649.md) | 271 | `result-track:632b7b1bb39408f916287649903344e158695ee17062f01901a48306ee83610b` |
| 42 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/ceildiv-apply--134eab5e96edebf8aee1b653.md) | 272 | `result-track:134eab5e96edebf8aee1b6532d9b8cb57fd1a4f09297d2029af833771fea5646` |
| 43 | `lemma` | [support_ceilDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/support-ceildiv-subset--f2895cabeae52552a5f40bf2.md) | 274 | `result-track:f2895cabeae52552a5f40bf2116bcc8c0321e172c58cb66d82a3795daa3517c0` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/declarations/example--4f43d95dcaa3954317530e3b.md) | 281 | `declaration-track:4f43d95dcaa3954317530e3b0efcbdf8a184e42944c9338327eae97e1c85c482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
