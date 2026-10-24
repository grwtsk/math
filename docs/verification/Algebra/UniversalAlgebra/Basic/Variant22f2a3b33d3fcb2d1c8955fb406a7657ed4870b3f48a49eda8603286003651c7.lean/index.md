# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135d0d84862edcaa2cec92727631ffd6062db41a",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135d0d84862edcaa2cec92727631ffd6062db41a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/castaddmonoidhom--3bab03f4baf99a35afe54b59.md) | 45 | `declaration-track:3bab03f4baf99a35afe54b59940b6919b4da49e08ffa116671c42d74e45bae29` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/coe-castaddmonoidhom--bf79e4edb6f531774a6cc115.md) | 53 | `result-track:bf79e4edb6f531774a6cc115d7f00d665ee72ec75155db6eb9135caf48a8a583` |
| 3 | `theorem` | [cast_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-mul--013253df6b64e30e40441a06.md) | 58 | `result-track:013253df6b64e30e40441a06bc01b0e9fcbe826fda0d982920a67450be2465d7` |
| 4 | `def` | [castRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/castringhom--b8b2e2b91f27c74b6d276363.md) | 63 | `declaration-track:b8b2e2b91f27c74b6d276363c51dc020170f11e8d836a66941a43a3886c20b2d` |
| 5 | `theorem` | [coe_castRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/coe-castringhom--877512532c737c5bd5497f0e.md) | 68 | `result-track:877512532c737c5bd5497f0eb5bb37bc882169bf45c7e972e4a3918a097a0c19` |
| 6 | `theorem` | [cast_commute](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-commute--dbebcd45ea36275dba40e235.md) | 72 | `result-track:dbebcd45ea36275dba40e235983b1a3553d5df184bbd2a67ce1d71ea9c89250b` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.UniversalAlgebra.CastAddMonoidHom.Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.Commute.ofNat_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/root-grwtsk-algebra-universalalgebra-castaddmonoidhom-variant5196ffa1c69--7cdd2c86944f8f53ae543b1d.md) | 78 | `result-track:7cdd2c86944f8f53ae543b1da61ed9b7bbf33f99df833c819afa9ce6f31f975b` |
| 8 | `theorem` | [cast_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-comm--9aaf8538284cdf5985e6ac8b.md) | 82 | `result-track:9aaf8538284cdf5985e6ac8baaa01c81761d1ce7449b11aa7bfbc8170fceb43b` |
| 9 | `theorem` | [commute_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/commute-cast--947a46721821c691cd9c64c1.md) | 86 | `result-track:947a46721821c691cd9c64c194c6d51fa4b9eb3efa3f5f5d85199a104490dd99` |
| 10 | `theorem` | [_root_.GRWTSK.Algebra.UniversalAlgebra.CastAddMonoidHom.Variant5196ffa1c694e25d922b29159d639cfe02cd3ee5e197d8421d294097f2a7128b.Commute.ofNat_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/root-grwtsk-algebra-universalalgebra-castaddmonoidhom-variant5196ffa1c69--60145d53394f6159a98c3257.md) | 90 | `result-track:60145d53394f6159a98c325729397700205056a3fe71f4b21c27f1c514d7ac26` |
| 11 | `theorem` | [mono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/mono-cast--59dbd87634b4afc9d5859cb5.md) | 103 | `result-track:59dbd87634b4afc9d5859cb51279f5f2ee5c93b6111dbb9933162aa258bef358` |
| 12 | `theorem` | [cast_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-nonneg--caa467617d08164f323faa6a.md) | 109 | `result-track:caa467617d08164f323faa6afba748fe2f15b2c036e2cd29712c6db445d88461` |
| 13 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-nonneg--5c1a126b303b45768902abae.md) | 114 | `result-track:5c1a126b303b45768902abae9b17afc74ae49b31b2704df7226bfb36835b522b` |
| 14 | `theorem` | [cast_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-add-one-pos--cb480d385c938a724fc9dade.md) | 122 | `result-track:cb480d385c938a724fc9dadeadabffa17ac38ae76045bcfdc6fa1cfd40fe5d6f` |
| 15 | `theorem` | [cast_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-pos--178c21374bd7f3df7419652d.md) | 127 | `result-track:178c21374bd7f3df7419652d4bbb3bdb9ca7e0d615fe510bcb7ef41432d417ca` |
| 16 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-pos--6a27e4253c3766e26824b61e.md) | 131 | `result-track:6a27e4253c3766e26824b61e17c9e9a783f1de002c95dbace100972f861bd02f` |
| 17 | `theorem` | [strictMono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/strictmono-cast--a56d831593c4c2009db0640c.md) | 138 | `result-track:a56d831593c4c2009db0640ca62110d8394f0c69255a1f2164307cf43a1fe5d6` |
| 18 | `def` | [castOrderEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/castorderembedding--649ed7877d6191479b97b457.md) | 144 | `declaration-track:649ed7877d6191479b97b45717e9a1329210265381226745b548935768e00bc0` |
| 19 | `theorem` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-le--890e6499c0c2f70abc3f576f.md) | 150 | `result-track:890e6499c0c2f70abc3f576f00873e3d548489e4f45e8752daede7490e6cd6fe` |
| 20 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-lt--ffe3f8a11338bfcee84d9720.md) | 155 | `result-track:ffe3f8a11338bfcee84d9720aa01085443029ab9eeae40b7987a535954511ede` |
| 21 | `theorem` | [one_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/one-lt-cast--692d6019c7529f7d52aa7fe2.md) | 160 | `result-track:692d6019c7529f7d52aa7fe22cab5adb99382f576c883352e54e04a8d56302f7` |
| 22 | `theorem` | [one_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/one-le-cast--32119caee0de357653f3dd4a.md) | 164 | `result-track:32119caee0de357653f3dd4ad6e75a63518b74b27b2ad1e436143b0ef489a64f` |
| 23 | `theorem` | [cast_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-lt-one--e81d34acfd1d37ee4adf7cd1.md) | 168 | `result-track:e81d34acfd1d37ee4adf7cd1c8d702ccf17b3956b17294ebee7644ff1d4fa882` |
| 24 | `theorem` | [cast_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-le-one--4ee1b19271c166a805f86753.md) | 173 | `result-track:4ee1b19271c166a805f86753a5d7f144555d67c25b3eec454e18d2fdb7cdfd8d` |
| 25 | `theorem` | [cast_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-tsub--1f59e9e5cbeedd229f222164.md) | 181 | `result-track:1f59e9e5cbeedd229f2221649821b56c8662010203bb29cb0ef6fea38f069fa7` |
| 26 | `theorem` | [cast_min](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-min--14d507850fd04f92b355047f.md) | 191 | `result-track:14d507850fd04f92b355047f27e8bedded776323ac1ecfbbd642ee0a34f06bd5` |
| 27 | `theorem` | [cast_max](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/cast-max--780b90a12b7016a750ff4b37.md) | 196 | `result-track:780b90a12b7016a750ff4b3715165b4d402a006c4b76dbce842b93d66ae19a7a` |
| 28 | `theorem` | [abs_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/abs-cast--0c21ccd470df2198df677842.md) | 201 | `result-track:0c21ccd470df2198df6778422c552a3d4d0f9cb605315063e5e5ea62923611f9` |
| 29 | `theorem` | [coe_nat_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/coe-nat-dvd--3a45272ccedc048c1aeba4b0.md) | 205 | `result-track:3a45272ccedc048c1aeba4b05408c0fdfe43160a7619cd203b8b0d087b8e0127` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--4d2dc6c251cee15113d04bd2.md) | 213 | `declaration-track:4d2dc6c251cee15113d04bd231de8298b53e66a812221e5ab95725e339659a53` |
| 31 | `theorem` | [ext_nat'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/ext-nat--40499ef87ea951e7bacc761e.md) | 220 | `result-track:40499ef87ea951e7bacc761ec43eb7f2d88f168d677c23b07f887efa258e9fed` |
| 32 | `theorem` | [AddMonoidHom.ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/addmonoidhom-ext-nat--a6b1875d0616277019ceba90.md) | 230 | `result-track:a6b1875d0616277019ceba900f9c90b0d0a25e85bcf0d0522de451cebc932869` |
| 33 | `theorem` | [eq_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/eq-natcast--1b700a01702ceff04847ab64.md) | 237 | `result-track:1b700a01702ceff04847ab647e6b51673330dc5c5ffbf05ac5656a7f7a58cea9` |
| 34 | `theorem` | [map_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/map-natcast--48ec4105edbceeb34569deee.md) | 242 | `result-track:48ec4105edbceeb34569deee284584ef6bcde9ee34b07aaee635df70bade2e14` |
| 35 | `theorem` | [ext_nat''](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/ext-nat--74d01e2db2eb94a03f998e40.md) | 256 | `result-track:74d01e2db2eb94a03f998e406a2e04bf4072c558d53259ff437db6d2d341421a` |
| 36 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/monoidwithzerohom-ext-nat--bad471366501f83a2d60e978.md) | 265 | `result-track:bad471366501f83a2d60e97831314b9fd6a2c93c209af55decf7f7a34e8c923e` |
| 37 | `theorem` | [eq_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/eq-natcast--bd9cf9e8d435b12f889e72a5.md) | 276 | `result-track:bd9cf9e8d435b12f889e72a5143375bfa6fb5645261ec1fcc51b1d4675db2b35` |
| 38 | `theorem` | [map_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/map-natcast--a5cf3ae59793cd6ce6ad3782.md) | 281 | `result-track:a5cf3ae59793cd6ce6ad3782a98f5b6181294c51d751352c384e1fe3776f5fd7` |
| 39 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/map-ofnat--e9b84d98e9d17e3055d0a060.md) | 287 | `result-track:e9b84d98e9d17e3055d0a0604dd5d391a5b6c6c9a7757af7eff8efca2a6a3536` |
| 40 | `theorem` | [ext_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/ext-nat--3ad0ab3b4a490959db605fb5.md) | 291 | `result-track:3ad0ab3b4a490959db605fb5e0d12b10a787c3f38a7990d55b555a9650db4d09` |
| 41 | `theorem` | [NeZero.nat_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nezero-nat-of-injective--6bf2d7883dac76bec2bd7b1d.md) | 295 | `result-track:6bf2d7883dac76bec2bd7b1d0d81d37b8104c463f1ab8d27160ffccea856ed2d` |
| 42 | `theorem` | [NeZero.nat_of_neZero](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nezero-nat-of-nezero--4f3b8e8b9fc69d2edf9f1470.md) | 300 | `result-track:4f3b8e8b9fc69d2edf9f14705b7ed06c3b910172afb645b4bb1f373aafa6574d` |
| 43 | `theorem` | [eq_natCast'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/eq-natcast--57f7b29b1292e40c361443cf.md) | 310 | `result-track:57f7b29b1292e40c361443cf51614bab2b0b0687630187bdf0326b68742b7804` |
| 44 | `theorem` | [Nat.cast_id](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nat-cast-id--d868e4e922a47dbfe1c4ca7b.md) | 317 | `result-track:d868e4e922a47dbfe1c4ca7b74e10820440b43d49eccd8b8a849f7ec2ae169d8` |
| 45 | `theorem` | [Nat.castRingHom_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nat-castringhom-nat--433f5494690ad4ee2ecb1390.md) | 322 | `result-track:433f5494690ad4ee2ecb1390722cc4cdcac1737e64a7e89748862fa5d5c331cb` |
| 46 | `instance` | [Nat.uniqueRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nat-uniqueringhom--3e23a5aa5621ab9e6058063b.md) | 328 | `declaration-track:3e23a5aa5621ab9e6058063b6877f9a6496e074c0422b415cb2a7b853c3225fb` |
| 47 | `instance` | [natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/natcast--5612406fb361614a03948f23.md) | 338 | `declaration-track:5612406fb361614a03948f23e6aa4904fbca7e4482a7f9871e32c4ccdb9551c9` |
| 48 | `theorem` | [nat_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/nat-apply--88bb1df9ae82eea4a1ef9544.md) | 340 | `result-track:88bb1df9ae82eea4a1ef9544af76862e16df786c132df6c53dca7d8faff2370b` |
| 49 | `theorem` | [coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/coe-nat--634de079466f92caa890ffd4.md) | 345 | `result-track:634de079466f92caa890ffd4c9fb7478ae94f26a783a7ad24d74b76f6f0f9c28` |
| 50 | `theorem` | [ofNat_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/ofnat-apply--c41a23ffb386515a1ef32252.md) | 350 | `result-track:c41a23ffb386515a1ef32252f01087926d0b394f567c464283bd815a463a8831` |
| 51 | `theorem` | [Sum.elim_natCast_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/sum-elim-natcast-natcast--4878d7856b435e717ecb6ca2.md) | 354 | `result-track:4878d7856b435e717ecb6ca2dfa94451e1398d156d881d1d3c065bcd7bbbf3f3` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--65c05c11572f44bb2e823f98.md) | 364 | `declaration-track:65c05c11572f44bb2e823f98febf61477673e09923ca04b01d5fbaf8450cc550` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--2214d7bd523b0a65371d8f38.md) | 367 | `declaration-track:2214d7bd523b0a65371d8f38a490d2a69d59380e3073d6093a4619ebb7657513` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--91b1a0d96685a37cf89c58e3.md) | 370 | `declaration-track:91b1a0d96685a37cf89c58e3c5a51959cda027030922c39167ca50f3a3a7c45b` |
| 55 | `theorem` | [toDual_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/todual-natcast--a8145ad405b8daea79fec3e7.md) | 374 | `result-track:a8145ad405b8daea79fec3e751507491f1bc8558b6234265e69138a0fd430ae8` |
| 56 | `theorem` | [ofDual_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/ofdual-natcast--c6887bf3c4f98f956b274e22.md) | 379 | `result-track:c6887bf3c4f98f956b274e22092b3c32b0ba2d8fda518879b7f42c020e25f179` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--87237ed96b0daaab899cf390.md) | 386 | `declaration-track:87237ed96b0daaab899cf390ea9bf78193628adda4baf909564e7326da850d90` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--086c02585048e2c33fc9eac4.md) | 389 | `declaration-track:086c02585048e2c33fc9eac4ae65f3a6e3bc66e13f563a37a7ede053cb3961ee` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/instance--ed9d4dab8610af9985d2e3ad.md) | 392 | `declaration-track:ed9d4dab8610af9985d2e3ad3a10512c76ac4eb483c959a424029ed50dd7316d` |
| 60 | `theorem` | [toLex_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/tolex-natcast--6fb195422f91d76b7e267342.md) | 396 | `result-track:6fb195422f91d76b7e267342f4e82eb2f356c95b3e8a2911c1a717f063637fa3` |
| 61 | `theorem` | [ofLex_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/declarations/oflex-natcast--34d34d5ad88781ca16d39c7d.md) | 401 | `result-track:34d34d5ad88781ca16d39c7d0c66dbaebc32b7592bb0dcd0df58f1cab9f1cec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
