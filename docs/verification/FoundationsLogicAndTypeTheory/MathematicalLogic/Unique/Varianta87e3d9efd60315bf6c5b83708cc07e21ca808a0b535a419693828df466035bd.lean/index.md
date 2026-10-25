# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2b92731ce5a2d37f06bcb1fb8e273a82f875af3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2b92731ce5a2d37f06bcb1fb8e273a82f875af3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.IsEmpty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Inhabit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique--5bcff528b4497a48dbea9e5c.md) | 51 | `declaration-track:5bcff528b4497a48dbea9e5c4e6c5ac6621bbd5117984fb198b3e1ceb5810c9b` |
| 2 | `theorem` | [unique_iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-iff-existsunique--63bfdadd7f03abf8b778ef85.md) | 57 | `result-track:63bfdadd7f03abf8b778ef8504d898d669a4d0d4fb9e87eb6333fae5a7c2af43` |
| 3 | `theorem` | [unique_subtype_iff_existsUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-subtype-iff-existsunique--8c758fcc410163b634f07d2c.md) | 63 | `result-track:8c758fcc410163b634f07d2cf8ced434ec5a022dbafcc0d33ac0f68725a3fa51` |
| 4 | `abbrev` | [uniqueOfSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/uniqueofsubsingleton--19eec23890015c9d63aa2428.md) | 79 | `declaration-track:19eec23890015c9d63aa242802fe6da27263453699e672d07c690d044bb5e5e4` |
| 5 | `instance` | [PUnit.instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/punit-instunique--fd0fe332ee914726e38c28a1.md) | 83 | `declaration-track:fd0fe332ee914726e38c28a1a708d119e0396d5af321bcad2df87562270826b0` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/punit-default-eq-unit--6e92cd8e3f020ec9631b13b5.md) | 88 | `result-track:6e92cd8e3f020ec9631b13b53d3d5efce820dd9e7f86e983c352eabd4f9d18a1` |
| 7 | `def` | [uniqueProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/uniqueprop--ee9d3a0a08286af9f1637ad3.md) | 92 | `declaration-track:ee9d3a0a08286af9f1637ad3c4248d045bc2be48c32c8b5a8d6390ed362f22f6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/instance--1d4da53dfff0d067cf3edcab.md) | 96 | `declaration-track:1d4da53dfff0d067cf3edcabf83572e09640a4fd7e878771946f665cd9a37e0f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/instance--d53c3af19f7f13f6c0930697.md) | 108 | `declaration-track:d53c3af19f7f13f6c0930697bfc583269c55a0c52beb26fbf08d7fc0213bd701` |
| 10 | `theorem` | [eq_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/eq-default--1e475419aa2197968f59554d.md) | 111 | `result-track:1e475419aa2197968f59554d08411b41db3512711d328d0910d7972f19ecb65f` |
| 11 | `theorem` | [default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/default-eq--20c4deb14bacb471839137da.md) | 114 | `result-track:20c4deb14bacb471839137da8283ea6b94949ca29a28876f537e81f5eba2c5df` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/instance--8868e16bae8d1ed223cf4027.md) | 118 | `declaration-track:8868e16bae8d1ed223cf402787ff5fd3217833ac42272037a94ed09824ba6328` |
| 13 | `theorem` | [forall_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/forall-iff--a1208d2d89b10f2369f72e45.md) | 121 | `result-track:a1208d2d89b10f2369f72e45056aeb20141dfd8cb0161074c1a73546c591ed20` |
| 14 | `theorem` | [exists_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/exists-iff--b927413de03b10dcfe38c593.md) | 124 | `result-track:b927413de03b10dcfe38c59326c5b9bc41a3c9e696c4a1436324781dd9228e63` |
| 15 | `theorem` | [subsingleton_unique'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/subsingleton-unique--182437d7e03f8276a60e9469.md) | 132 | `result-track:182437d7e03f8276a60e94698ebc42fd86780bccddc650342a0ad3a2cf737443` |
| 16 | `instance` | [subsingleton_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/subsingleton-unique--84eac9dd1e6c6ff56e2d5392.md) | 135 | `declaration-track:84eac9dd1e6c6ff56e2d53929e9e175064176862ff5389c88a0012447b953501` |
| 17 | `abbrev` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/mk--cf6f675e65490e2c3185c7fe.md) | 140 | `declaration-track:cf6f675e65490e2c3185c7fe6d4f3db70441adaa5defe3fd0004ce47e120a6ba` |
| 18 | `theorem` | [nonempty_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/nonempty-unique--b1e02f3c8d91c5e78c74c1a0.md) | 145 | `result-track:b1e02f3c8d91c5e78c74c1a0c55203e7cc5e0ab915b74044cb9ae8ac574e743d` |
| 19 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-iff-subsingleton-and-nonempty--929f1acaebff6c5cf146d0f2.md) | 149 | `result-track:929f1acaebff6c5cf146d0f274b524b825d9062b33c943f7506ca48e5032f19c` |
| 20 | `theorem` | [Pi.default_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/pi-default-def--c8a601049763714041d82bba.md) | 157 | `result-track:c8a601049763714041d82bba93cab34e64bd63fddee73a54ac5e7356c819696d` |
| 21 | `theorem` | [Pi.default_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/pi-default-apply--f196fcadb2ed81cb95cfb161.md) | 161 | `result-track:f196fcadb2ed81cb95cfb16120bf7267c7f19b71a93646dd3782978df0019e93` |
| 22 | `instance` | [Pi.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/pi-unique--5eac078d03d4f25ac5c16798.md) | 165 | `declaration-track:5eac078d03d4f25ac5c16798e2deaf1f37f54f50ee1c928664bf4226bc67b8fe` |
| 23 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/pi-uniqueofisempty--48ea5a835cc2895e5e281b01.md) | 169 | `declaration-track:48ea5a835cc2895e5e281b01c1104f939c5f30218b0bfc2ad9656cc48f63c25c` |
| 24 | `theorem` | [eq_const_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/eq-const-of-subsingleton--0019588d771719d2ac749137.md) | 173 | `result-track:0019588d771719d2ac749137cc266d557df27f07541f7ea24ec488dcbac13a3c` |
| 25 | `theorem` | [eq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/eq-const-of-unique--7cd42cfc5bd362f4281c1454.md) | 177 | `result-track:7cd42cfc5bd362f4281c1454edb534492177306dbae15860d7a0afba282833ba` |
| 26 | `theorem` | [heq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/heq-const-of-unique--0c30465435f787f9e94f54e7.md) | 180 | `result-track:0c30465435f787f9e94f54e740fc9cbacd46df8c89f1b1b712be6649b34b8a18` |
| 27 | `theorem` | [Injective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/injective-subsingleton--820643c140e0dce4948e9813.md) | 190 | `result-track:820643c140e0dce4948e98139a1e43f506760cae80ed95fcec17b5188797a6d3` |
| 28 | `theorem` | [Surjective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/surjective-subsingleton--aac70857f94f3984c4e4ee6c.md) | 195 | `result-track:aac70857f94f3984c4e4ee6c060d9d8b19488454905db0fcacfca68a98561289` |
| 29 | `def` | [Surjective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/surjective-unique--925007c523b7b4cfb14c4fa6.md) | 200 | `declaration-track:925007c523b7b4cfb14c4fa644a10961c4961ac5398431b2b027b8e11e75467e` |
| 30 | `def` | [Injective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/injective-unique--19982890fc65fd093f39b721.md) | 205 | `declaration-track:19982890fc65fd093f39b72195fa264f51b3f9a8e5b4e9226db351275e1b3b34` |
| 31 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/surjective-uniqueofsurjectiveconst--a72ffd75a04325e64e202751.md) | 209 | `declaration-track:a72ffd75a04325e64e202751af0a8c651e1bac8a245577969f5d0d21be933512` |
| 32 | `def` | [uniqueElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/uniqueelim--f9267fd53444a16d58b40c34.md) | 220 | `declaration-track:f9267fd53444a16d58b40c3463653500231dd778cd7ad77e1eab801939a4b372` |
| 33 | `theorem` | [uniqueElim_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/uniqueelim-default--130c1e03157f1a225e28a6e9.md) | 225 | `result-track:130c1e03157f1a225e28a6e96a94c111182bd51dfb58370237c55c7d84524f60` |
| 34 | `theorem` | [uniqueElim_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/uniqueelim-const--9e0241370386b920d793c7d2.md) | 229 | `result-track:9e0241370386b920d793c7d2e6c9d92c98bb616c023dc0a6fb006893d7c58e90` |
| 35 | `theorem` | [Unique.bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-bijective--0f0cca6686d62c55d710f67d.md) | 237 | `result-track:0f0cca6686d62c55d710f67dc4950f003035094ec96981ba7226f420d0743ee7` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/subsingleton-iff-isempty--e24914d1a74ab327938433f8.md) | 244 | `result-track:e24914d1a74ab327938433f82894b6ba2891d60ce433347fca525c7d8871fde6` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/instance--f67a164c1c1bc84960e54f9b.md) | 249 | `declaration-track:f67a164c1c1bc84960e54f9b486764fe30cf5b24ee56258825f634645edce8fe` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-subtypeeq--1749de191e8530fb68e1d89d.md) | 256 | `declaration-track:1749de191e8530fb68e1d89d42903d4f38a54fe4dd7b481ba495949c405ed657` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/unique-subtypeeq--e2cd8870884807a9004c4552.md) | 260 | `declaration-track:e2cd8870884807a9004c4552110e099928543092756a8318546c041708a546ff` |
| 40 | `instance` | [Fin.instUnique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Varianta87e3d9efd60315bf6c5b83708cc07e21ca808a0b535a419693828df466035bd.lean/declarations/fin-instunique--36de0daed466b1d82b9a7de0.md) | 266 | `declaration-track:36de0daed466b1d82b9a7de00052b196686d4e290b28184e69f9607502c618cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
