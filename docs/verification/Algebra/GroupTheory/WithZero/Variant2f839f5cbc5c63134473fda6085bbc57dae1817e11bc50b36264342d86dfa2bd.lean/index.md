# Verification target: GRWTSK.Algebra.GroupTheory.WithZero.Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "130000b4407d8cd26b842d58d4c4c76ae3814f3a",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `130000b4407d8cd26b842d58d4c4c76ae3814f3a`.

Source path: `GRWTSK/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.NAry` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/one--9f047be404dd2e27559c9150.md) | 41 | `declaration-track:9f047be404dd2e27559c9150d1415ee4fd41bfa8c60c6dd3d9211a298fa9c031` |
| 2 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-one--9033a13bd5fda4ef5a5e0e58.md) | 44 | `result-track:9033a13bd5fda4ef5a5e0e588cd71715aec895b554ae137d85f4437830065ae3` |
| 3 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instmulzeroclass--16ceac79bf8b0838876e4ed7.md) | 51 | `declaration-track:16ceac79bf8b0838876e4ed72c995ddb9d627101cb24737e120103bfabf93384` |
| 4 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-mul--0f4c5b6a3ddd18bad33a3e4b.md) | 56 | `result-track:0f4c5b6a3ddd18bad33a3e4b2cc307a44709a538d5da1b141f4e888f67dfe2de` |
| 5 | `lemma` | [unzero_mul](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/unzero-mul--6d5dcb3f7a102f3749a781e5.md) | 58 | `result-track:6d5dcb3f7a102f3749a781e58d8b9b5659b566202f579576eee9f93a96215814` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instnozerodivisors--d084238589bd6d0c73eb8ca8.md) | 62 | `declaration-track:d084238589bd6d0c73eb8ca8bbb4e17b2db9bf569808f7fa361f749d7d869f9a` |
| 7 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instsemigroupwithzero--e332830382ba4be112e1903c.md) | 66 | `declaration-track:e332830382ba4be112e1903c6728086db9b61f0a6af357b2ff57cc1058633939` |
| 8 | `instance` | [instCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instcommsemigroup--70413d792ca015f70201cacb.md) | 69 | `declaration-track:70413d792ca015f70201cacb97689ee41fc48581fd85cb3a07209853ac164620` |
| 9 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instmulzerooneclass--458ba6bb4df86d0367bed926.md) | 75 | `declaration-track:458ba6bb4df86d0367bed9263cac7f90c79fdac3d73fdcc36dc4a5a64c36d7bb` |
| 10 | `def` | [coeMonoidHom](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coemonoidhom--27e0d79d1649b01ae3db8c81.md) | 81 | `declaration-track:27e0d79d1649b01ae3db8c817bf51b5051803ed38b4349dd69bfd7893fa46826` |
| 11 | `theorem` | [monoidWithZeroHom_ext](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/monoidwithzerohom-ext--0b7b4898e7b888afc6f0aa56.md) | 91 | `result-track:0b7b4898e7b888afc6f0aa563a789950dcbeeb1f4ca2c0e7171af27dd5edf1ab` |
| 12 | `def` | [lift'](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/lift--2671ca84fc4c1d2129e6985d.md) | 100 | `declaration-track:2671ca84fc4c1d2129e6985d847a7afa8f81211a21e2cf74a544037780094a7a` |
| 13 | `lemma` | [lift'_zero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/lift-zero--4a6c3802c0141c00ea37f6cc.md) | 115 | `result-track:4a6c3802c0141c00ea37f6cc52a5bb06f4de4a5315bc12a87bd25697253ed002` |
| 14 | `lemma` | [lift'_coe](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/lift-coe--1b858fa631e8f81ab7519f25.md) | 117 | `result-track:1b858fa631e8f81ab7519f25770946197dffc4ec1d4630ed0eb9b5069ebfcf21` |
| 15 | `lemma` | [lift'_unique](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/lift-unique--cb569289e9653163d742dbd2.md) | 119 | `result-track:cb569289e9653163d742dbd22f94d2843e8798ea79858edb0a4fc69bd304933e` |
| 16 | `def` | [map'](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map--b664002b40a03dbb6ede02f7.md) | 128 | `declaration-track:b664002b40a03dbb6ede02f732ec8a5e78a8a9dde726d6f78f0315316b684dbb` |
| 17 | `lemma` | [map'_zero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map-zero--90b1e0acaa4562838f2afd58.md) | 130 | `result-track:90b1e0acaa4562838f2afd586f369abd133ecbb291ce4460b2399f7bc606dac2` |
| 18 | `lemma` | [map'_coe](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map-coe--e47f8fa0fcf96fc767f47ce3.md) | 132 | `result-track:e47f8fa0fcf96fc767f47ce38c6e348794421b5c5a1bb488f694555f7401065d` |
| 19 | `lemma` | [map'_id](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map-id--36f77a5b51cdf36220b7d1ca.md) | 135 | `result-track:36f77a5b51cdf36220b7d1ca47ab76b74c1c015ec64b72fbbeee1e26c5e6bca9` |
| 20 | `lemma` | [map'_map'](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map-map--cd8cb6a6ff1244801948aecd.md) | 138 | `result-track:cd8cb6a6ff1244801948aecd0f50dd956fc9aba217639d408d16ccd2c9debe9a` |
| 21 | `lemma` | [map'_comp](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/map-comp--ebb5f70ea8b31d7f4a279bd7.md) | 142 | `result-track:ebb5f70ea8b31d7f4a279bd7c1b87083f83ed8304e175fe3e468407adfdf1d34` |
| 22 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/pow--d67eb595ec84505fe2857f0e.md) | 150 | `declaration-track:d67eb595ec84505fe2857f0ec25eb75e81bfcba123788276c2f1ab9ab9dd86d4` |
| 23 | `lemma` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-pow--20360ba16b45001c54e8654f.md) | 156 | `result-track:20360ba16b45001c54e8654f7ece1d917df6a6b992e251c616b4b12fb590c1ae` |
| 24 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instmonoidwithzero--9864574afd6d98b2355c2dc7.md) | 160 | `declaration-track:9864574afd6d98b2355c2dc7c7a823385e48a3ffc673a4d050b7afa2b23661dd` |
| 25 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instcommmonoidwithzero--497c95d6e788f605b6925c9b.md) | 169 | `declaration-track:497c95d6e788f605b6925c9b56a68d3af7be1832ff0fc9bc0adb36de099bbc5e` |
| 26 | `instance` | [inv](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/inv--41a6a497245a7c73ed047971.md) | 176 | `declaration-track:41a6a497245a7c73ed047971ee7e9ece727ba8035daf8132d574837d24482c62` |
| 27 | `lemma` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-inv--fb740da21d120068adb1a61c.md) | 178 | `result-track:fb740da21d120068adb1a61c6ccc6d2ce220e15314f2058f97f2b11f3222ca22` |
| 28 | `lemma` | [inv_zero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/inv-zero--7bf6c159a35db835157ab2da.md) | 180 | `result-track:7bf6c159a35db835157ab2dae9af2293d35af517403c8e3a52d30751c1552520` |
| 29 | `instance` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/invoneclass--0834f5ba8537aba356840753.md) | 184 | `declaration-track:0834f5ba8537aba356840753e2ece17f8068c7bc8670ab9acb133072b1ee233a` |
| 30 | `instance` | [div](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/div--b76e5037fd4ce560d2919c5e.md) | 190 | `declaration-track:b76e5037fd4ce560d2919c5eaacbc1c16a171a934910cf39ebfd9384b72a31b4` |
| 31 | `lemma` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-div--252dbc6e743e52f4ec8b30ef.md) | 192 | `result-track:252dbc6e743e52f4ec8b30ef57a45fee6024d2ba9ddb8f5b2a1c5acf54633768` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instance--f2dfe629c40f7ada8d87062e.md) | 199 | `declaration-track:f2dfe629c40f7ada8d87062e1b1f18133a98651af22763e0377da2efa058dab0` |
| 33 | `lemma` | [coe_zpow](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-zpow--fc6134a9f6d4ce79a870a32b.md) | 206 | `result-track:fc6134a9f6d4ce79a870a32b1fec3357bbafb3551db2b74f21246402bed0302d` |
| 34 | `instance` | [instDivInvMonoid](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instdivinvmonoid--15376c2dd22bc55fc2a997a8.md) | 210 | `declaration-track:15376c2dd22bc55fc2a997a8ed7ab5b5d07a9bf6ebda2857a5347a1355ef6f61` |
| 35 | `instance` | [instDivInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instdivinvonemonoid--29f6863c84d8608195ce9c0e.md) | 226 | `declaration-track:29f6863c84d8608195ce9c0e5f10df11daed0f4d60206d7458ad10bff8bbcd6e` |
| 36 | `instance` | [instInvolutiveInv](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instinvolutiveinv--320e5c0d5789b261df959ef3.md) | 228 | `declaration-track:320e5c0d5789b261df959ef36ef37f5fd4a131845d8f358d5c9f02a78bbf17b0` |
| 37 | `instance` | [instDivisionMonoid](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instdivisionmonoid--726f086ea0bfc71ab3769734.md) | 231 | `declaration-track:726f086ea0bfc71ab37697342695ef893ce7503bfe51ee814fa1b3954675ad52` |
| 38 | `instance` | [instDivisionCommMonoid](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instdivisioncommmonoid--51c03bdcfc654307bcb42120.md) | 242 | `declaration-track:51c03bdcfc654307bcb42120c60c66a3e3da11d9a11d3385458b83f6e3f43043` |
| 39 | `instance` | [instGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instgroupwithzero--c615dfd6f68be74fcc0b63a3.md) | 248 | `declaration-track:c615dfd6f68be74fcc0b63a3d104b764ccc3bf424861be63979e3f9c760b46ad` |
| 40 | `def` | [unitsWithZeroEquiv](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/unitswithzeroequiv--e88ae5ede4ecfe7053409392.md) | 256 | `declaration-track:e88ae5ede4ecfe7053409392f652d33b8715b299b96180bab4b55a03366f57c8` |
| 41 | `theorem` | [coe_unitsWithZeroEquiv_eq_units_val](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/coe-unitswithzeroequiv-eq-units-val--0418dfc1a0b45ee4ed0d17dd.md) | 263 | `result-track:0418dfc1a0b45ee4ed0d17dd61882659e3d53297543943f2f7911a1cba7e7e30` |
| 42 | `def` | [withZeroUnitsEquiv](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/withzerounitsequiv--f5762a276c55608334976831.md) | 268 | `declaration-track:f5762a276c55608334976831ff546ec17ea2a6f6a8ea1de9f30fde170e368924` |
| 43 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.UnzeroMul.Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.MulEquiv.withZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/root-grwtsk-algebra-grouptheory-unzeromul-variantba4d4e992ac3cf1e1812b94--547495d223c8ad7bba0e562d.md) | 278 | `declaration-track:547495d223c8ad7bba0e562dcd7344bce2476eab2b644abbee16befaf80e7ebe` |
| 44 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.UnzeroMul.Variantba4d4e992ac3cf1e1812b94c83df1ba3856a3ecf3bf921fb4bd80dd9c39c1f20.MulEquiv.unzero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/root-grwtsk-algebra-grouptheory-unzeromul-variantba4d4e992ac3cf1e1812b94--8d05d2d0358107eca5ff2c7c.md) | 287 | `declaration-track:8d05d2d0358107eca5ff2c7c70a3eec8497b02d8dd756e856691b7968eb46f78` |
| 45 | `instance` | [instCommGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instcommgroupwithzero--304b239d89536ba9e1718d6b.md) | 302 | `declaration-track:304b239d89536ba9e1718d6b876dc2287806fdcac6c4a1ed65afef4f56a2ff5e` |
| 46 | `instance` | [instAddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/WithZero/Variant2f839f5cbc5c63134473fda6085bbc57dae1817e11bc50b36264342d86dfa2bd.lean/declarations/instaddmonoidwithone--c8b26241a6352a786acb9744.md) | 304 | `declaration-track:c8b26241a6352a786acb9744d44a9b4a3a45e9706198c580d4a85c002d4e9419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
