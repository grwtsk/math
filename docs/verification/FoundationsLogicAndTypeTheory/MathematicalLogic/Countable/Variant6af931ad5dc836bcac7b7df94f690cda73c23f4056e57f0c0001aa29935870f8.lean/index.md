# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Countable.Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable--470e86b668a732b46e988bb0.md) | 31 | `declaration-track:470e86b668a732b46e988bb0b29b63f9df60e424287fa454c0c7dc9f840ac0e4` |
| 2 | `theorem` | [countable_coe_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-coe-iff--93767e47e5d7d7d1b024e50d.md) | 36 | `result-track:93767e47e5d7d7d1b024e50debac622cafa81cb8cd943a4e21df55b91a48f389` |
| 3 | `theorem` | [to_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/to-countable--0675669307c72f9dde82f79e.md) | 41 | `result-track:0675669307c72f9dde82f79e2a6d05c14faa5e91ab6f3ccb80589b84c2f5475a` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iff-exists-injective--174adeaac2aac1acf5b028ed.md) | 50 | `result-track:174adeaac2aac1acf5b028ed0b9a4095e2320e88aff4b595a1e3914854f7c394` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iff-exists-injon--fe5a13d22e166f90420b6868.md) | 57 | `result-track:fe5a13d22e166f90420b68689baffaf947181795a715ef32780a8fe945e9852d` |
| 6 | `def` | [Countable.toEncodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-toencodable--f80d9356489a4a04568d9d36.md) | 62 | `declaration-track:f80d9356489a4a04568d9d36d4135347777182e03f13140561e95a7f4bc74ea8` |
| 7 | `def` | [enumerateCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/enumeratecountable--8e20c494c986dfcb4c23b0f3.md) | 70 | `declaration-track:8e20c494c986dfcb4c23b0f3bcb86e375118fd7302b3c3d2ad12f82aadc8c0ab` |
| 8 | `theorem` | [subset_range_enumerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/subset-range-enumerate--d18e10afb2815290d6f6b45d.md) | 76 | `result-track:d18e10afb2815290d6f6b45d02c836f11fba6fc33753cf8eface8b98bd6303aa` |
| 9 | `theorem` | [Countable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-mono--28e6d3b2803fab7079e0c6cc.md) | 85 | `result-track:28e6d3b2803fab7079e0c6cc40b4d371a9ce19e39e187f8036207826b61842cf` |
| 10 | `theorem` | [countable_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-range--47362c47b5c87fc5db064a3a.md) | 89 | `result-track:47362c47b5c87fc5db064a3ac0be62b7ddbadeebf5ff109d5b71b56709843d84` |
| 11 | `theorem` | [countable_iff_exists_subset_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iff-exists-subset-range--238ae87fd4af2d299df80fd0.md) | 93 | `result-track:238ae87fd4af2d299df80fd0292125408353508c82823505eee90584ea49927f` |
| 12 | `theorem` | [countable_iff_exists_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iff-exists-surjective--598e14d9439f149d044dfdb6.md) | 104 | `result-track:598e14d9439f149d044dfdb689429f085a307bf0eb5d68d531bf2ed635bde9a6` |
| 13 | `theorem` | [countable_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-univ--34fe46e75e5ac7f7dd8b2c3a.md) | 112 | `result-track:34fe46e75e5ac7f7dd8b2c3aa2625847bcc074620a78d18687467128d3b8a101` |
| 14 | `theorem` | [countable_univ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-univ-iff--8b329d607b710633e83a4017.md) | 116 | `result-track:8b329d607b710633e83a401793d11d5ba1e50eae80a0a827567201048d669c36` |
| 15 | `theorem` | [Countable.exists_eq_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-exists-eq-range--02083486507e2debdc4b920d.md) | 121 | `result-track:02083486507e2debdc4b920d9bdbd463ae19baadbd5822dde25019f2f065f913` |
| 16 | `theorem` | [countable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-empty--09b39184fe2c1486765e74ad.md) | 128 | `result-track:09b39184fe2c1486765e74ad696b0a567fe917e0eb8d3288cb39b8c8442bbd48` |
| 17 | `theorem` | [countable_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-singleton--ccc76af8f0727792182bb8ca.md) | 131 | `result-track:ccc76af8f0727792182bb8cad8530851659c5f8070689c4138131d119fe9c8e5` |
| 18 | `theorem` | [Countable.image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-image--f391b399d29177a9f2e08241.md) | 134 | `result-track:f391b399d29177a9f2e08241e8779bb35ae49df5bc0a844931890da69a79ae4c` |
| 19 | `theorem` | [MapsTo.countable_of_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/mapsto-countable-of-injon--ab92ef36bd974ed71f4f022e.md) | 140 | `result-track:ab92ef36bd974ed71f4f022e4aeac06deb303b98a37ad4dbaffcde594cbd61ff` |
| 20 | `theorem` | [Countable.preimage_of_injOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-preimage-of-injon--60cda05cfb9e942ca3c5fc7a.md) | 146 | `result-track:60cda05cfb9e942ca3c5fc7a776140186ec1095b15586cd8aa30d62686596569` |
| 21 | `theorem` | [Countable.preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-preimage--ca42838003b7dcbc01a5cdb3.md) | 151 | `result-track:ca42838003b7dcbc01a5cdb331defc1988a6b027b63bfc735ec5e296c79b6094` |
| 22 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/exists-seq-isup-eq-top-iff-countable--d1537d88c4376e99021a65ec.md) | 156 | `result-track:d1537d88c4376e99021a65ec72d90a4aead661fdc1702a9c31c0a6d716be4dba` |
| 23 | `theorem` | [exists_seq_cover_iff_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/exists-seq-cover-iff-countable--449455e38da27e616d8a1c0c.md) | 174 | `result-track:449455e38da27e616d8a1c0c6bab793550c41945ab0243d7dba986e96b600823` |
| 24 | `theorem` | [countable_of_injective_of_countable_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-of-injective-of-countable-image--dde926855dadb826bd7d8b24.md) | 180 | `result-track:dde926855dadb826bd7d8b249526dc900deaaa546bcdfea0f847feb0e1d9c83a` |
| 25 | `theorem` | [countable_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iunion--6a6994f06d61dd9abbae260f.md) | 185 | `result-track:6a6994f06d61dd9abbae260f9f74a70703df2d47a4bf719b9a57e88c4ff711b5` |
| 26 | `theorem` | [countable_iUnion_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-iunion-iff--95517627f2c67718c85975e5.md) | 193 | `result-track:95517627f2c67718c85975e5ca91d01c61c7fded9e1cdcc40e819be0c2b4a728` |
| 27 | `theorem` | [Countable.biUnion_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-biunion-iff--94a9a441f46f9fba3d7a8504.md) | 198 | `result-track:94a9a441f46f9fba3d7a850448062fdb1427787dc2b3dd0575b856f090dc64a5` |
| 28 | `theorem` | [Countable.sUnion_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-sunion-iff--d518cd2381479d6e9869afd9.md) | 204 | `result-track:d518cd2381479d6e9869afd9444de31fc021e62266aa06b159d194bbab8ff1fe` |
| 29 | `theorem` | [countable_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-union--0f25ad045f217a96e00175c0.md) | 215 | `result-track:0f25ad045f217a96e00175c0b1a5309ecd885c1dfeec41f4d2bce465581b7ea0` |
| 30 | `theorem` | [Countable.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-union--466645ec38621ebcecf5bf26.md) | 219 | `result-track:466645ec38621ebcecf5bf2632b3cacee3c6e65d224272af1c0f90222c904218` |
| 31 | `theorem` | [Countable.of_diff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-of-diff--ef1ce02d34b7047684da56e8.md) | 223 | `result-track:ef1ce02d34b7047684da56e8d15d0323ad40e9c61a9795506b7ebe15f904eb97` |
| 32 | `theorem` | [countable_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-insert--369bbe2179127800730e3ce6.md) | 227 | `result-track:369bbe2179127800730e3ce61e2e52ff8dbb44c531caf8c67d805189ec0c9c56` |
| 33 | `theorem` | [Countable.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-insert--c3ea1f588995da2923614738.md) | 231 | `result-track:c3ea1f588995da2923614738ac66018fa9f451decf273050317354b623f8d2bc` |
| 34 | `theorem` | [Finite.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/finite-countable--145acae26f69e52dfbfd4d3d.md) | 235 | `result-track:145acae26f69e52dfbfd4d3d9f8b5a85ece794683537b4e2334e94ef9f314919` |
| 35 | `theorem` | [Countable.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-of-subsingleton--db13da93b52a8751cd56ca3b.md) | 240 | `result-track:db13da93b52a8751cd56ca3bd59d16cfc8f3d47c5ff9e2b20393f2604bf3c8cc` |
| 36 | `theorem` | [Subsingleton.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/subsingleton-countable--c2df5a4eb520ef72cb0c4da0.md) | 244 | `result-track:c2df5a4eb520ef72cb0c4da0b9ea33aa2550f18cfa5a13f09ebb218dd55c0bf2` |
| 37 | `theorem` | [countable_isTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-istop--22a76c2d8f39a29544d94d06.md) | 248 | `result-track:22a76c2d8f39a29544d94d067c9eae923d61718f64dc8ee0d0ad697d7965e12a` |
| 38 | `theorem` | [countable_isBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-isbot--e06018c65aba65da82397493.md) | 252 | `result-track:e06018c65aba65da823974933c84ccbcccf22780f279cf4bd9e6503d3e910648` |
| 39 | `theorem` | [countable_setOf_finite_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-setof-finite-subset--ce7e18c0ed988fdeb81dc177.md) | 257 | `result-track:ce7e18c0ed988fdeb81dc17787c72f0cd519023a56816456c99b8ef955b5a9df` |
| 40 | `theorem` | [countable_univ_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-univ-pi--2a2c4ad9824b9b722382d1de.md) | 267 | `result-track:2a2c4ad9824b9b722382d1de92c61514c230e3c22cb92729af0906c87851601c` |
| 41 | `theorem` | [countable_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-pi--06fd85166b63caaa04d4fb8c.md) | 273 | `result-track:06fd85166b63caaa04d4fb8c038a31b076d24304fed7185aa8b953bc2fe48410` |
| 42 | `theorem` | [Countable.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-prod--ffa2c4e9340dc73510671a0f.md) | 278 | `result-track:ffa2c4e9340dc73510671a0f9e1cc97c8b33e85749066801ef0083e3d56b84b3` |
| 43 | `theorem` | [Countable.image2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-image2--622bf3e2115c96101eae57d4.md) | 285 | `result-track:622bf3e2115c96101eae57d4f4e331a4b1d13b01763270322fd1f1c1659de044` |
| 44 | `theorem` | [countable_setOf_nonempty_of_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/countable-setof-nonempty-of-disjoint--62917576da5f63efa1fcb8b4.md) | 293 | `result-track:62917576da5f63efa1fcb8b46ef365da325f1acfc18ff093bcb924ef50241af3` |
| 45 | `theorem` | [Finset.countable_toSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/declarations/finset-countable-toset--6cfd934d53d5515dd6843baa.md) | 314 | `result-track:6cfd934d53d5515dd6843baa3fc200be9e4a14618efdc23a395815c05d687f53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
