# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78d7b5cad8cce0afeb5d97280876d9afc6bda29f",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78d7b5cad8cce0afeb5d97280876d9afc6bda29f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/submodule--1b675cbed3848be1d61c12ed.md) | 45 | `declaration-track:1b675cbed3848be1d61c12ede1945759026d1bf1177976a034dd3b6d910d90a4` |
| 2 | `instance` | [setLike](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/setlike--bbe9503a537ec9c65505bf5c.md) | 58 | `declaration-track:bbe9503a537ec9c65505bf5c035cd60b61d73436a98bc3f993f2778675329850` |
| 3 | `lemma` | [carrier_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/carrier-eq-coe--2385501f6717f79d739a35dc.md) | 64 | `result-track:2385501f6717f79d739a35dc1bbc29a3a8d72654ecb6cd02ac7319d1f58acc29` |
| 4 | `def` | [ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/ofclass--1cf169838530c1868deb0303.md) | 68 | `declaration-track:1cf169838530c1868deb030328a258238b7ac81920209cc55ed4c44440fd09aa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/instance--5965e0c42a93c49b20552622.md) | 75 | `declaration-track:5965e0c42a93c49b2055262225cb99c18a36a8c9f0a3e524b22f5b50a01ad43e` |
| 6 | `instance` | [addSubmonoidClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/addsubmonoidclass--eea7ddd3c84e8377f62b5e2a.md) | 84 | `declaration-track:eea7ddd3c84e8377f62b5e2a0ce9eaeb9ee57d1f19f84953b311bd385e4a54e9` |
| 7 | `instance` | [smulMemClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smulmemclass--ca10dbf1d02273c80610dcef.md) | 88 | `declaration-track:ca10dbf1d02273c80610dcefccdc6f1c92683946aba6e9807b8a9b36a824ceb2` |
| 8 | `theorem` | [mem_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mem-toaddsubmonoid--78a158e7f948f72059edc8ee.md) | 92 | `result-track:78a158e7f948f72059edc8ee2f9162c817dc91f3c38fa7808144d18c114216a2` |
| 9 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mem-mk--d96eac63ff05ec7d70ea11d1.md) | 98 | `result-track:d96eac63ff05ec7d70ea11d1b9dc6ca40444d3cdc6bab3612849db5266513a0e` |
| 10 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-set-mk--1c6505a09c1518d53e8a64e3.md) | 102 | `result-track:1c6505a09c1518d53e8a64e3e8514812c4710f438b45aef363cb385015e39169` |
| 11 | `theorem` | [eta](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/eta--485ce82f786fee2ef2a36494.md) | 105 | `result-track:485ce82f786fee2ef2a364949c4ffd017d4ffe6994f358b14af2fdb75ae82ed6` |
| 12 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mk-le-mk--6dbf15a9986029ad8a350689.md) | 109 | `result-track:6dbf15a9986029ad8a350689ebdf1e43fc9856974bed9de2443feb21acf44fda` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/ext--d7d8b8fdcbef7f7467488758.md) | 114 | `result-track:d7d8b8fdcbef7f7467488758d611fb63618b3e120e8312098f889f06e214cc5c` |
| 14 | `theorem` | [carrier_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/carrier-inj--f420fc62c3d20f7657b17d90.md) | 118 | `result-track:f420fc62c3d20f7657b17d90d39e9185d0d50a99e766cb50954a9258229270ac` |
| 15 | `def` | [copy](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/copy--2d93c0d999d5a7b13d4feab3.md) | 124 | `declaration-track:2d93c0d999d5a7b13d4feab3f132f1c6b67402c18579a92dc0cf7287fa756c16` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/copy-eq--6dab0a7300c9c357d53306e1.md) | 130 | `result-track:6dab0a7300c9c357d53306e15f9aef40aee7c9708d7889f31fd7f8dbcb73455d` |
| 17 | `theorem` | [toAddSubmonoid_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/toaddsubmonoid-injective--5377d8a7cf27a904cf3b7926.md) | 133 | `result-track:5377d8a7cf27a904cf3b79268dbe1da849f12a61615c0175be525c48f0a48f7c` |
| 18 | `theorem` | [toAddSubmonoid_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/toaddsubmonoid-inj--a98d04890cbe283f96f75faf.md) | 137 | `result-track:a98d04890cbe283f96f75faffeb8f3e2cb1d6792a6d6c012f3cadfe1509f5478` |
| 19 | `theorem` | [coe_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-toaddsubmonoid--04557eaf3de9ed084c6e7488.md) | 143 | `result-track:04557eaf3de9ed084c6e7488e2ada7b7824151303d22c336720dfd7c74638198` |
| 20 | `theorem` | [toSubMulAction_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/tosubmulaction-injective--a9558a224c4ce70c0b5dea57.md) | 146 | `result-track:a9558a224c4ce70c0b5dea575eabd21d8f6f6d46721be4925d9a92add9704e4a` |
| 21 | `theorem` | [toSubMulAction_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/tosubmulaction-inj--28eff49a06f3f26515dca9a8.md) | 149 | `result-track:28eff49a06f3f26515dca9a8bf2e9b0267c10439739d1d3db467e8495de2e87a` |
| 22 | `theorem` | [coe_toSubMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-tosubmulaction--53b2706074d416df17ff1ce8.md) | 155 | `result-track:53b2706074d416df17ff1ce842b8b53558497218a3333aca873579bb9855130b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/instance--5f2ee493764f38e2258adb46.md) | 167 | `declaration-track:5f2ee493764f38e2258adb46db25564b2df8c71ff3d44a72fd894cbb3a7fe17f` |
| 24 | `def` | [toModule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/tomodule--f74748f6a6085ff4d852d27c.md) | 172 | `declaration-track:f74748f6a6085ff4d852d27cfc375fe0c16c58be60bbde2b963fa2c35c92c51c` |
| 25 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mem-carrier--cb6539197b601dd5c4293a8a.md) | 194 | `result-track:cb6539197b601dd5c4293a8a5ef740e9d3fc0ea6e4e81600d9aa74622c291968` |
| 26 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/zero-mem--83555720d72b72e131daf795.md) | 198 | `result-track:83555720d72b72e131daf79566fc0b9a30afebee121210fdf131fb4f5535ea85` |
| 27 | `theorem` | [add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/add-mem--6ba61b571322477fe2aefa29.md) | 201 | `result-track:6ba61b571322477fe2aefa296a526613eeb6c2870df8693f5df64646be223c2e` |
| 28 | `theorem` | [smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul-mem--0b9be021ecf2fcdee5479363.md) | 204 | `result-track:0b9be021ecf2fcdee54793635fd9ba27905cef184e65aefae7634c4674e6dfb7` |
| 29 | `theorem` | [smul_of_tower_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul-of-tower-mem--0de01f211a06c6d6589d8043.md) | 207 | `result-track:0de01f211a06c6d6589d80438a1444e646a881baddd21fa600ad160fb1b5a929` |
| 30 | `theorem` | [smul_mem_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul-mem-iff--8d5836f5bb5fa76d7eb4c9f9.md) | 212 | `result-track:8d5836f5bb5fa76d7eb4c9f9a7909ba68b637d25961274bda0ccc7f3a094e201` |
| 31 | `lemma` | [smul_mem_iff''](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul-mem-iff--5442a8f89a212c0ae3fb1033.md) | 217 | `result-track:5442a8f89a212c0ae3fb10333e9a494c14ecf38791201773d1ba307fd702018a` |
| 32 | `lemma` | [smul_mem_iff_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul-mem-iff-of-isunit--9698ea9f352ba488dfbc19ae.md) | 223 | `result-track:9698ea9f352ba488dfbc19aeb5dd301167ac5fef472328801af2914815d60339` |
| 33 | `instance` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/add--ff886baad8bf97900cd33376.md) | 228 | `declaration-track:ff886baad8bf97900cd333761b2cd8affb8a7eabb9594513edf29d4f7ab8f778` |
| 34 | `instance` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/zero--d56a653802aed276738c3c1c.md) | 231 | `declaration-track:d56a653802aed276738c3c1c28de8727abd13ec1e77c927515ab95af5c66a15a` |
| 35 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/inhabited--632805b29af9b5029e81a56c.md) | 234 | `declaration-track:632805b29af9b5029e81a56c753b1fc5234e8fd1effc4bd900328a5adf75ce70` |
| 36 | `instance` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/smul--cf7c4389062403cfd65d30d4.md) | 237 | `declaration-track:cf7c4389062403cfd65d30d4f1d781d2acdb8e9f16637f0b2fdbec8bc24e5c1c` |
| 37 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/isscalartower--ce1dab7ffc618146f9c20ff7.md) | 240 | `declaration-track:ce1dab7ffc618146f9c20ff7d07bba5ff7da9124d0aa80f4732838bfe4498f79` |
| 38 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/isscalartower--09a5512d4e1f52dac296c228.md) | 243 | `declaration-track:09a5512d4e1f52dac296c228fdf22fdc5c3960c983b9d912d560bf1b7360befa` |
| 39 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/nonempty--e81e01d7b5ebd2d640ec0338.md) | 247 | `result-track:e81e01d7b5ebd2d640ec03381bd570690115fe2e057192172fb345832f3c280e` |
| 40 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mk-eq-zero--7380ba756f895fce842fdb2f.md) | 251 | `result-track:7380ba756f895fce842fdb2fb0ee0daffbeb320446fb70c47d4af8797d551de9` |
| 41 | `theorem` | [coe_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-eq-zero--13e78ff97b973544a6b5bd62.md) | 257 | `result-track:13e78ff97b973544a6b5bd620c2d63ff1581380e0465911c647fea51ac7651f5` |
| 42 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-add--315906e6dcf2c0152238b70a.md) | 261 | `result-track:315906e6dcf2c0152238b70a4e39ec220aa55cc1d5ce3c3a24b548e5cf08e878` |
| 43 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-zero--fa94e9279cb8fd550d5e0f49.md) | 265 | `result-track:fa94e9279cb8fd550d5e0f4922bff05bedca695d7765fd4f37dbc38914cf84dc` |
| 44 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-smul--100a2059a49198683ed14a0c.md) | 269 | `result-track:100a2059a49198683ed14a0c907b36b81d9b977d47ca113bf9f387b4b417bb31` |
| 45 | `theorem` | [coe_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-smul-of-tower--7ceb3372d9e00b87647d28b6.md) | 273 | `result-track:7ceb3372d9e00b87647d28b6c9aacd9a5c1ae6fccabf88ed54d2446237c87c59` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-mk--181251cc65cbb4963d0732f8.md) | 278 | `result-track:181251cc65cbb4963d0732f8265f3feff0801402cc899cbcfc8f8c3ea34ee273` |
| 47 | `theorem` | [coe_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-mem--67fa0735c53ce0216741c62a.md) | 281 | `result-track:67fa0735c53ce0216741c62a2b19b375ce333ca2c4b987888ad7026aa1b9724c` |
| 48 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/addcommmonoid--06f6469460fb85152277ab82.md) | 286 | `declaration-track:06f6469460fb85152277ab82030c43df0a7d63f0f1f62a725ddd460fffdb545c` |
| 49 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/module--3811b5ed62bec0de1e47af7e.md) | 289 | `declaration-track:3811b5ed62bec0de1e47af7eaea2918647b52a49f13653574f4fb37845e918bd` |
| 50 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/module--c50e0bddf489e17210fcbcdf.md) | 297 | `declaration-track:c50e0bddf489e17210fcbcdf054742eee9ccdcb06578e145be3da92a4df50c80` |
| 51 | `instance` | [addSubgroupClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/addsubgroupclass--9b73c4b9dd77131b8c5f17b7.md) | 309 | `declaration-track:9b73c4b9dd77131b8c5f17b7b98eb0b6750eceb5aef6cfe1b2c51a6be46e499f` |
| 52 | `theorem` | [neg_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/neg-mem--bad5bf85f900f6fcdc71ee9c.md) | 312 | `result-track:bad5bf85f900f6fcdc71ee9ca1483823b103e27ea21d9224d0868bbffec35a26` |
| 53 | `def` | [toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/toaddsubgroup--bd0968db1c3b5a2dae2701b5.md) | 316 | `declaration-track:bd0968db1c3b5a2dae2701b579621849553fbeb3d6e4f5499b2706925df3d877` |
| 54 | `theorem` | [coe_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-toaddsubgroup--827ce213803a6a6db2002926.md) | 320 | `result-track:827ce213803a6a6db2002926b0ac7280d4b78f0edee4727cf62bd620323b41aa` |
| 55 | `theorem` | [mem_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/mem-toaddsubgroup--9b88123274caac15f730dd5a.md) | 324 | `result-track:9b88123274caac15f730dd5af6f151ed93f4ec7eb081d0901bb573953b8a24e2` |
| 56 | `theorem` | [toAddSubgroup_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/toaddsubgroup-injective--6b96b80adafe255da2d715fe.md) | 327 | `result-track:6b96b80adafe255da2d715fe72dbc422911331d78e77e762962ffe5847b60ba7` |
| 57 | `theorem` | [toAddSubgroup_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/toaddsubgroup-inj--1fffc41664bc808b43d23275.md) | 331 | `result-track:1fffc41664bc808b43d232758d617f7005fc6aff424766f61da0cbb3347b65d3` |
| 58 | `theorem` | [sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/sub-mem--e3bad0a3ef2245a89eae5573.md) | 336 | `result-track:e3bad0a3ef2245a89eae557356bd670940461df4f47f1fcb0d34876b9a243fcd` |
| 59 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/neg-mem-iff--9ddb7e7165e247af657d73d4.md) | 339 | `result-track:9ddb7e7165e247af657d73d4c11dcb61e50b67e165b5d8572fdb43e60961fce3` |
| 60 | `theorem` | [add_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/add-mem-iff-left--06fb882b77ecd8e07054cb89.md) | 342 | `result-track:06fb882b77ecd8e07054cb890f98d4b1bab151e42df3a298ef3d4613f99449f3` |
| 61 | `theorem` | [add_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/add-mem-iff-right--59527e5421f83c6774ff2678.md) | 345 | `result-track:59527e5421f83c6774ff267889e86e2665edcbd7279e77359f97944d152b38de` |
| 62 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-neg--d8d6c6cd4718c065a35fb9bb.md) | 348 | `result-track:d8d6c6cd4718c065a35fb9bbaa0ca4a883ae200f8e43ebc7d5e5ae1cc5f5b591` |
| 63 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/coe-sub--166713d2cc619d46341043cd.md) | 351 | `result-track:166713d2cc619d46341043cdde90a43cf0050dec77863b35209c083aca1a79f5` |
| 64 | `theorem` | [sub_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/sub-mem-iff-left--38e77e6c7b76b50b078d20ac.md) | 354 | `result-track:38e77e6c7b76b50b078d20ac3b0a5edb63feb211df6b7bf856c5818015643fff` |
| 65 | `theorem` | [sub_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/sub-mem-iff-right--a554ac636934c110c8953dc9.md) | 357 | `result-track:a554ac636934c110c8953dc9993cc9017ba724a9e7b595f32d8f6723e2931841` |
| 66 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/addcommgroup--41a4c68112fa9d7154a14325.md) | 360 | `declaration-track:41a4c68112fa9d7154a14325640f3a0b685a8e2d8b3d1a6fffcea3ca38f0f998` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/instance--4986502efa961e14ebdce154.md) | 369 | `declaration-track:4986502efa961e14ebdce154eb1b0321b92af8bb91fe599988c8fb9cd93a0bc6` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant7416e323e197eb456090e785f108c02c6c8d429a16182170d02f6d3dbc22f284.lean/declarations/instance--489e21fd354efc4447702222.md) | 379 | `declaration-track:489e21fd354efc44477022224fb9c05a5c4c1e760d1413db1fb63dd474f20df4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
