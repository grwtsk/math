# Verification target: GRWTSK.Algebra.LinearAlgebra.Ker.Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dd0fc1cb55692db2ec6f5275e9b149be88b5bcc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dd0fc1cb55692db2ec6f5275e9b149be88b5bcc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Map` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker--37a7be7a76c01c9456a7eb21.md) | 57 | `declaration-track:37a7be7a76c01c9456a7eb216289dff83d11a9cbb6bb928ce40bc463dbed6517` |
| 2 | `theorem` | [mem_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/mem-ker--913af4795f79fa66f4b110c8.md) | 61 | `result-track:913af4795f79fa66f4b110c81d2e2e7589acc69fc5ad8e8e1ec1532fe93e8ade` |
| 3 | `theorem` | [ker_id](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-id--085bec500e43e277f1aae22d.md) | 65 | `result-track:085bec500e43e277f1aae22d3129923e024eb053dd8f1f2ae966c98977b1746c` |
| 4 | `theorem` | [map_coe_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/map-coe-ker--caedf013de5e813ea9e59446.md) | 69 | `result-track:caedf013de5e813ea9e59446ea4effa80e291a4e22eabc94dde0be7c8c1e43da` |
| 5 | `theorem` | [ker_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-toaddsubmonoid--4c77e297e4aa40b40b42a6e9.md) | 72 | `result-track:4c77e297e4aa40b40b42a6e9349a41ce554a8e934b77eca5927577e5ceb5ab31` |
| 6 | `theorem` | [le_ker_iff_comp_subtype_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/le-ker-iff-comp-subtype-eq-zero--6b81185e434b7aacc75e77ab.md) | 75 | `result-track:6b81185e434b7aacc75e77ab7cb24d4374e472aeab8922345962916fb833387d` |
| 7 | `theorem` | [comp_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/comp-ker-subtype--45abb00561fa8812ed0833e9.md) | 79 | `result-track:45abb00561fa8812ed0833e9dcd431aee5f2a6ed751a6447fd63979210db233c` |
| 8 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-comp--ee17231b10eca033cc881131.md) | 82 | `result-track:ee17231b10eca033cc881131fd9bf964ccbce5df25cbf8c3e9e40e1987b1df72` |
| 9 | `theorem` | [ker_le_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-le-ker-comp--7001ce6c34f37bbcf0a029ae.md) | 86 | `result-track:7001ce6c34f37bbcf0a029aebaae7d39ed487752cc0fe531052817078057417d` |
| 10 | `theorem` | [ker_sup_ker_le_ker_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-sup-ker-le-ker-comp-of-commute--f513b6b462dcab93fd0b8e2f.md) | 89 | `result-track:f513b6b462dcab93fd0b8e2f102b582953613f58a5fe4edf5b287e83ac7ec180` |
| 11 | `theorem` | [ker_le_comap](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-le-comap--3c4b686aebd9a875b9925462.md) | 96 | `result-track:3c4b686aebd9a875b99254628f3cca1f34e4910d84edb89b2fbed17c9739aa83` |
| 12 | `theorem` | [disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/disjoint-ker--d04a43d94da4e497a2ce2602.md) | 100 | `result-track:d04a43d94da4e497a2ce260275b0c994ddfb24573afd93add4460f8c75c053f5` |
| 13 | `theorem` | [ker_eq_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-eq-bot--e9cf0a02f62db85bdbd2812c.md) | 104 | `result-track:e9cf0a02f62db85bdbd2812caca22b759a22eb2876fc7dbcd35c39fbd2849fa0` |
| 14 | `theorem` | [ker_eq_bot_of_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-eq-bot-of-inverse--defd6ca6c03723f891a91826.md) | 107 | `result-track:defd6ca6c03723f891a91826a2610eb5d63703b7a09175169bd4b7c3b9737a16` |
| 15 | `theorem` | [le_ker_iff_map](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/le-ker-iff-map--8a356ac1af2162b563ccce1a.md) | 111 | `result-track:8a356ac1af2162b563ccce1a81c5943b883e7bd9de8ee46f11c4ae1f9ab3f5d9` |
| 16 | `theorem` | [ker_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-codrestrict--4f13f9374061ab850e9d7037.md) | 114 | `result-track:4f13f9374061ab850e9d703777b7b22cc7d66e65073cc66ca4a33234638b1895` |
| 17 | `lemma` | [ker_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-domrestrict--a99952ed8fdc9107e125bb90.md) | 117 | `result-track:a99952ed8fdc9107e125bb9088577c7c075bebb91f39969ea1e402195f88e28a` |
| 18 | `theorem` | [ker_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-restrict--fb7aa14e935802fd42181473.md) | 120 | `result-track:fb7aa14e935802fd421814739af990ffc28a55d740d27381e2ddad29769ed680` |
| 19 | `theorem` | [ker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-zero--89d9873c77695a1ac78800e0.md) | 126 | `result-track:89d9873c77695a1ac78800e09d2063f00e62c600da4e30f6b8e75f3458509479` |
| 20 | `theorem` | [ker_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-eq-top--3b7e30a0a9bdbcbf40695c95.md) | 130 | `result-track:3b7e30a0a9bdbcbf40695c95c9b052192139790b939b286753f2defeb0db86ee` |
| 21 | `theorem` | [exists_ne_zero_of_sSup_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/exists-ne-zero-of-ssup-eq-top--8ab2e624272499043f79dccf.md) | 133 | `result-track:8ab2e624272499043f79dccf695557cb9199b56cb267f9d17f1fed2d78d0d6cf` |
| 22 | `theorem` | [_root_.AddMonoidHom.coe_toIntLinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/root-addmonoidhom-coe-tointlinearmap-ker--65516f3406a9204b1195a4b7.md) | 140 | `result-track:65516f3406a9204b1195a4b7e5456ad1f548fef18574553125d3109e194dd936` |
| 23 | `theorem` | [ker_eq_bot_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-eq-bot-of-injective--1f9635631ffac9dee15fc776.md) | 143 | `result-track:1f9635631ffac9dee15fc776c126d27127e608344816b3e2b1225289203c215b` |
| 24 | `def` | [iterateKer](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/iterateker--76f30a509ffe8905caf3b800.md) | 151 | `declaration-track:76f30a509ffe8905caf3b800e3c29deb1511990626e45dfa34702e36489fef8e` |
| 25 | `theorem` | [ker_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-toaddsubgroup--2019ffbf52cde36b8777fe58.md) | 171 | `result-track:2019ffbf52cde36b8777fe58ddfa08fcbfedd319552adb3e2877b054a879ffe6` |
| 26 | `theorem` | [sub_mem_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/sub-mem-ker-iff--c3deafb38b27dbe12eeb9a7a.md) | 174 | `result-track:c3deafb38b27dbe12eeb9a7aec2ac28255a1e832b02a9112f6c2c76e8d0d80b7` |
| 27 | `theorem` | [disjoint_ker'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/disjoint-ker--8857dc9dda69c49df4ac1da5.md) | 176 | `result-track:8857dc9dda69c49df4ac1da5fdb92518a16f121d6dfb937a7a59917e78c1386d` |
| 28 | `theorem` | [injOn_of_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/injon-of-disjoint-ker--8893c07badaaf1566d0c00ff.md) | 182 | `result-track:8893c07badaaf1566d0c00ffd981c0580f5b4e5073bf60df915a09f4843d0c9e` |
| 29 | `theorem` | [_root_.LinearMapClass.ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/root-linearmapclass-ker-eq-bot--4c35e2462afd195fc4086437.md) | 187 | `result-track:4c35e2462afd195fc40864379164c98dcb5bb8e546098670fe340da150d28ecf` |
| 30 | `theorem` | [ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-eq-bot--015932dedcfe08b0e5dc05f9.md) | 190 | `result-track:015932dedcfe08b0e5dc05f9fab6417d1ff6a5a67c7f9866aa76f2968c97b0e9` |
| 31 | `lemma` | [injective_domRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/injective-domrestrict-iff--3df8d8b2807ceaa620fabf01.md) | 193 | `result-track:3df8d8b2807ceaa620fabf01db817463f4ca8d83369a30276c936a6c4342e6a3` |
| 32 | `theorem` | [injective_restrict_iff_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/injective-restrict-iff-disjoint--3238b6302a7b1c1933d26b26.md) | 206 | `result-track:3238b6302a7b1c1933d26b268a3797ce59b0a872fe0d29f1368fbce01342d639` |
| 33 | `theorem` | [ker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-smul--656ff12f62abb48a0ca0d140.md) | 220 | `result-track:656ff12f62abb48a0ca0d1403546cdb9abb1731628a896b1cce128176ffaae99` |
| 34 | `theorem` | [ker_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-smul--62d775389c5aecf5f38e9141.md) | 223 | `result-track:62d775389c5aecf5f38e914108c782cf956540148c672ca750bda90764f4cb5f` |
| 35 | `theorem` | [comap_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/comap-bot--7e95c2464daf2cb9147c02f5.md) | 243 | `result-track:7e95c2464daf2cb9147c02f56b5155131c67b67c6993d1f49d17391d3ef39059` |
| 36 | `theorem` | [ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-subtype--01a90e10477b98b6a59709b9.md) | 247 | `result-track:01a90e10477b98b6a59709b9ad30a32f150e74eb0f432d2f145af588edf38edd` |
| 37 | `theorem` | [ker_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-inclusion--ccfe2d20700696935085d50a.md) | 251 | `result-track:ccfe2d20700696935085d50a85b9e00d55823c9f9dd252c34b89dfe793813226` |
| 38 | `theorem` | [ker_comp_of_ker_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-comp-of-ker-eq-bot--cb6d95afaabb4ce9b90c5bdc.md) | 268 | `result-track:cb6d95afaabb4ce9b90c5bdcca702f0b6280ab16a3fa30d1148d46d8b1b2a556` |
| 39 | `theorem` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker--38f9c66add921e5fca18787b.md) | 295 | `result-track:38f9c66add921e5fca18787b0a7d74a011a82bbccee8ee378a33568e6e74464f` |
| 40 | `theorem` | [ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Ker/Variant4164e9080400337c2363013661efc5d513ebfcd1a68ae3dfdb26fbdbdbd3b768.lean/declarations/ker-comp--8a6b60a8e3b19637c6c870cd.md) | 299 | `result-track:8a6b60a8e3b19637c6c870cd1de5c89e2307ea38c7406755f21b3a80848e2980` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
