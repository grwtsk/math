# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b7ab074e2b19f533cffc3fd3114d406f38a32f6",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b7ab074e2b19f533cffc3fd3114d406f38a32f6`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/submonoid-units--1a75cb2e43dc3cf1773b8368.md) | 49 | `declaration-track:1a75cb2e43dc3cf1773b836839ce08825d81655702abdded446caf9c9a6ebbb3` |
| 2 | `def` | [Subgroup.ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/subgroup-ofunits--3a525f8d76c02be84a1ff714.md) | 56 | `declaration-track:3a525f8d76c02be84a1ff7143917837f5dc274205a23101ab021d8a3b267004b` |
| 3 | `lemma` | [Submonoid.units_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/submonoid-units-mono--897e0f120a1aea2656164cb8.md) | 59 | `result-track:897e0f120a1aea2656164cb8e824c38aa993a19b7585195d876ca26495492a0c` |
| 4 | `lemma` | [Submonoid.ofUnits_units_le](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/submonoid-ofunits-units-le--c1db64a8dee4ee04b91acb15.md) | 63 | `result-track:c1db64a8dee4ee04b91acb1592d079057a531921087f1292609e9e466a653250` |
| 5 | `lemma` | [Subgroup.ofUnits_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/subgroup-ofunits-mono--eb3e50f13a0b04119f38b20d.md) | 67 | `result-track:eb3e50f13a0b04119f38b20d8f719cc48c104749445ddf4b52202e174cbe684f` |
| 6 | `lemma` | [Subgroup.units_ofUnits_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/subgroup-units-ofunits-eq--15f904d14d3d8c28f0d789d2.md) | 71 | `result-track:15f904d14d3d8c28f0d789d26924f34774ef59666cb34a40bad9d29cc1e73ba3` |
| 7 | `def` | [ofUnits_units_gci](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-units-gci--dab3c73851baeac4d54e7dee.md) | 80 | `declaration-track:dab3c73851baeac4d54e7deeb4e8538aaba756042c69ebd2b4fa187069ac85ca` |
| 8 | `lemma` | [ofUnits_units_gc](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-units-gc--6b5dc6bd64b9a096634dc3e9.md) | 85 | `result-track:6b5dc6bd64b9a096634dc3e9f5a120194aa7f14fca38272efe4cd1f83f69dbca` |
| 9 | `lemma` | [ofUnits_le_iff_le_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-le-iff-le-units--a47c9c239d7032bc85784a04.md) | 89 | `result-track:a47c9c239d7032bc85784a041b250862c6f854680d7dcb98d1deae03e7dde96b` |
| 10 | `theorem` | [IsUnit.coe](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/isunit-coe--fddd23153796a7b19b590694.md) | 93 | `result-track:fddd23153796a7b19b590694dea2e6a34973393476205deb84f01f9d89952f32` |
| 11 | `lemma` | [mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-units-iff--69f85551b83eb124088b57f3.md) | 101 | `result-track:69f85551b83eb124088b57f3d4f2cd500a54aa5725ed96da09027527e97dbb9c` |
| 12 | `lemma` | [mem_units_of_val_mem_inv_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-units-of-val-mem-inv-val-mem--0130418e727ddc683b0a2d81.md) | 105 | `result-track:0130418e727ddc683b0a2d8128005734049ee29552c3201e2350f770a4a384b6` |
| 13 | `lemma` | [val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/val-mem-of-mem-units--849184a60a34c760d528af56.md) | 109 | `result-track:849184a60a34c760d528af566baa6fdd9aa2c925bf497dcd30f2ff891c026e1a` |
| 14 | `lemma` | [inv_val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/inv-val-mem-of-mem-units--e0cfea4aeba59decb05e243f.md) | 112 | `result-track:e0cfea4aeba59decb05e243f1080919f794c56b3111e370e0b1d97ddd94b4eba` |
| 15 | `lemma` | [coe_inv_val_mul_coe_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/coe-inv-val-mul-coe-val--65052afa7e3e340a1544f9eb.md) | 116 | `result-track:65052afa7e3e340a1544f9eb039ef85dbe21d8cd8498c3a161575484e56fb380` |
| 16 | `lemma` | [coe_val_mul_coe_inv_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/coe-val-mul-coe-inv-val--f8be867817a935f2cd1e5774.md) | 120 | `result-track:f8be867817a935f2cd1e5774ae3d1505fbedf0ebf88e66a12e19a2990b449efa` |
| 17 | `lemma` | [mk_inv_mul_mk_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mk-inv-mul-mk-eq-one--e5b7659595d5863b82a4362b.md) | 124 | `result-track:e5b7659595d5863b82a4362b028aaa7ded3e59525e8a4f702b32d957651fffff` |
| 18 | `lemma` | [mk_mul_mk_inv_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mk-mul-mk-inv-eq-one--7dc92af6637ab738ed644c2a.md) | 128 | `result-track:7dc92af6637ab738ed644c2a5d99304799a1524c14b7210162633601f5fa3f7b` |
| 19 | `lemma` | [mul_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mul-mem-units--73e3b771def776e74714aa4c.md) | 132 | `result-track:73e3b771def776e74714aa4cc705a62e87d0e7617d0a3e01efd52ff58eef8fa3` |
| 20 | `lemma` | [inv_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/inv-mem-units--d6b71ddadf2f528865585ba6.md) | 136 | `result-track:d6b71ddadf2f528865585ba66d69d1485d3aac0f00336b1fac4f80fc94243717` |
| 21 | `lemma` | [inv_mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/inv-mem-units-iff--6354b63eefff16a3fb89b016.md) | 139 | `result-track:6354b63eefff16a3fb89b01675162f09875605cf975a4739f9f95a3c1c293e3e` |
| 22 | `def` | [unitsEquivUnitsType](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unitsequivunitstype--47c4a87644be4646f7275d47.md) | 145 | `declaration-track:47c4a87644be4646f7275d47e32e1066a771c70721e6e2448394505ca75ada8a` |
| 23 | `lemma` | [units_top](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-top--d937784c7b679c0abf05b75b.md) | 151 | `result-track:d937784c7b679c0abf05b75b491b5e9a5e6d4cd756299684fd28112d2f63781d` |
| 24 | `lemma` | [units_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-inf--7f1e501d678f596dbabecc23.md) | 154 | `result-track:7f1e501d678f596dbabecc23891098dff050c13246e63634d6843e7727174ab1` |
| 25 | `lemma` | [units_sInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-sinf--d3e2e0b7e40e17bc8cf0a131.md) | 158 | `result-track:d3e2e0b7e40e17bc8cf0a131ca88c5f44f58de337a7028277ce027fcf4dd89e9` |
| 26 | `lemma` | [units_iInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-iinf--7f337f8b7b31c76005c27bde.md) | 162 | `result-track:7f337f8b7b31c76005c27bdefbfa8208647af0b33fc2d50b223d387108633cdc` |
| 27 | `lemma` | [units_iInf₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-iinf--47e63a99b42ff3373af7170b.md) | 166 | `result-track:47e63a99b42ff3373af7170bd25db00e937ddafe29ff4ff08c833ba01e5f5455` |
| 28 | `lemma` | [units_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-bot--c9b0bea8dd4b854c92eefe24.md) | 171 | `result-track:c9b0bea8dd4b854c92eefe241184eec0caedfe3a5bad3b748494d31c1d604ecf` |
| 29 | `lemma` | [units_surjective](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-surjective--03c4381a4c81c0b7aafd9bfa.md) | 174 | `result-track:03c4381a4c81c0b7aafd9bfa2a34f257f77fc53b639f08fd169e0da632e2f9b9` |
| 30 | `lemma` | [units_left_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/units-left-inverse--b9075f1b47e135b0ba5bdadd.md) | 178 | `result-track:b9075f1b47e135b0ba5bdaddb54b9a368588ec0739689458ecd59f611b5f7562` |
| 31 | `def` | [unitsEquivIsUnitSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unitsequivisunitsubmonoid--bc926421e69abb0f66eafe9d.md) | 186 | `declaration-track:bc926421e69abb0f66eafe9d1baf27e8712a4561d9f37d76bdf5c2e13a45ca6a` |
| 32 | `instance` | [instSubsingletonUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/instsubsingletonunits--57c120dbb8282dd41b35a147.md) | 191 | `declaration-track:57c120dbb8282dd41b35a147b68b1d7c97ed605f39533114276db6633a03b0be` |
| 33 | `lemma` | [mem_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-ofunits-iff--587eaa0a80504418b42b3b5b.md) | 199 | `result-track:587eaa0a80504418b42b3b5b53a75aaade5ab382abeb07b4dfed40bbbbdfb9a2` |
| 34 | `lemma` | [mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-ofunits--c3c6f4196ef85e5dc77df9e7.md) | 202 | `result-track:c3c6f4196ef85e5dc77df9e7044c59a806066922fa6fd24fdda7950e2d6bff23` |
| 35 | `lemma` | [exists_mem_ofUnits_val_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/exists-mem-ofunits-val-eq--2393db72d2c3347519fad5a8.md) | 206 | `result-track:2393db72d2c3347519fad5a85ecbcb5cf4dc25c12a7e94dbb6ef6db6120d516a` |
| 36 | `lemma` | [mem_of_mem_val_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-of-mem-val-ofunits--8e44f98e451c72d7c4462527.md) | 210 | `result-track:8e44f98e451c72d7c446252741fffecaae0a1b41dba5ceae253ed9dfaa51f447` |
| 37 | `lemma` | [isUnit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/isunit-of-mem-ofunits--9aab19fbb60d160673a161a4.md) | 215 | `result-track:9aab19fbb60d160673a161a486942e42c7589fed5ab3862491f8d0c8eacd478e` |
| 38 | `def` | [unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-of-mem-ofunits--d9e194ac33ef9d15b50a4bf2.md) | 224 | `declaration-track:d9e194ac33ef9d15b50a4bf2db6d2c76ebf8a3fbea4765236184e59b52190df5` |
| 39 | `lemma` | [unit_of_mem_ofUnits_spec_eq_of_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-of-mem-ofunits-spec-eq-of-val-mem--ca3fba4cccf846f973e41e8e.md) | 228 | `result-track:ca3fba4cccf846f973e41e8e0234ea59e668793d1a260d88e2de0d9e083796e6` |
| 40 | `lemma` | [unit_of_mem_ofUnits_spec_val_eq_of_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-of-mem-ofunits-spec-val-eq-of-mem--9221367a245ad4f0182f7d3d.md) | 232 | `result-track:9221367a245ad4f0182f7d3d876fe1e5a3eed5198cba652c4bbaca31a4b84c93` |
| 41 | `lemma` | [unit_of_mem_ofUnits_spec_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-of-mem-ofunits-spec-mem--9def02e90533fbf48d8a8e02.md) | 236 | `result-track:9def02e90533fbf48d8a8e0229b0921028466f288d498b0c7b22397b25ffc10f` |
| 42 | `lemma` | [unit_eq_unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-eq-unit-of-mem-ofunits--b4998ed3d7db35d2044d1678.md) | 240 | `result-track:b4998ed3d7db35d2044d1678a3573d21a9d6c0a42bde5b25e880878a872b3f40` |
| 43 | `lemma` | [unit_mem_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unit-mem-of-mem-ofunits--c40b8305d9e30baee43194d9.md) | 244 | `result-track:c40b8305d9e30baee43194d93769aa7f6ffbd712184fd0c62e7c92a2e881ebbc` |
| 44 | `lemma` | [mem_ofUnits_of_isUnit_of_unit_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-ofunits-of-isunit-of-unit-mem--6eea4dba93f60148b63cf407.md) | 249 | `result-track:6eea4dba93f60148b63cf40704a894d337b86a6479e05699c052473f2e5aab65` |
| 45 | `lemma` | [mem_ofUnits_iff_exists_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-ofunits-iff-exists-isunit--de57e852454bc06c8269fdc5.md) | 253 | `result-track:de57e852454bc06c8269fdc5868c044c835bcde9c873d7e9fbabcd4e6c2d6373` |
| 46 | `def` | [ofUnitsEquivType](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunitsequivtype--37e6354d29730c6148b96a05.md) | 262 | `declaration-track:37e6354d29730c6148b96a05951544e41212c456403b4c533f280e842fa0a854` |
| 47 | `lemma` | [ofUnits_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-bot--660557496d983eef9cca68e6.md) | 268 | `result-track:660557496d983eef9cca68e644a10c90cbed4698eedfef322c4eaa67afbb20f8` |
| 48 | `lemma` | [ofUnits_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-inf--4e86a4af4460a5d47e18f189.md) | 271 | `result-track:4e86a4af4460a5d47e18f189f809a8d609ee42a9f99b607dc524c07adc8df1b7` |
| 49 | `lemma` | [ofUnits_sSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-ssup--1bb3402157ec6b8458babda2.md) | 275 | `result-track:1bb3402157ec6b8458babda294de0298d50fefb2cb2caa93915294c497bcb5c0` |
| 50 | `lemma` | [ofUnits_iSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-isup--6727ff63e8331a5a44635894.md) | 279 | `result-track:6727ff63e8331a5a44635894ac47d818974fe55b7452bcb01b8f0e28e1e106c6` |
| 51 | `lemma` | [ofUnits_iSup₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-isup--1329c6f35c074e9894d0b8fa.md) | 283 | `result-track:1329c6f35c074e9894d0b8faa4de053c7be1057833595763bc9398fc108829b2` |
| 52 | `lemma` | [ofUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-injective--1dc18a7e07dc12ca3d0a959b.md) | 288 | `result-track:1dc18a7e07dc12ca3d0a959b7071bf84c99dc742bf79663cb533428380cb9ad2` |
| 53 | `lemma` | [ofUnits_sup_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-sup-units--9ec416f2656c4d159076c82a.md) | 292 | `result-track:9ec416f2656c4d159076c82a06ca3a9788e93d56c685583d6c23bcbb5195d01f` |
| 54 | `lemma` | [ofUnits_inf_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-inf-units--2d210ec06996df496b32c8c6.md) | 296 | `result-track:2d210ec06996df496b32c8c6f95129891c3fce4460188a05902cc22713c61702` |
| 55 | `lemma` | [ofUnits_right_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-right-inverse--98efaea2abce86d9d0c163f2.md) | 300 | `result-track:98efaea2abce86d9d0c163f27b308a0fa44417068f15c5ed26a97d02137d3101` |
| 56 | `lemma` | [ofUnits_strictMono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-strictmono--e6837b0e829affda9f77e3c0.md) | 305 | `result-track:e6837b0e829affda9f77e3c047bac34e271c6a3727af5de372d97fe8bcba9be8` |
| 57 | `lemma` | [ofUnits_le_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunits-le-ofunits-iff--46adbe1bb89de09c94cd335a.md) | 307 | `result-track:46adbe1bb89de09c94cd335a39b440db3ced56c7353fa8906471b7da6ef9948f` |
| 58 | `def` | [ofUnitsTopEquiv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/ofunitstopequiv--37cd7ed9865d7b946f2df009.md) | 314 | `declaration-track:37cd7ed9865d7b946f2df0092c560b107a7c634653252df6dca76a0816086101` |
| 59 | `lemma` | [mem_units_iff_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-units-iff-val-mem--c74c81fee00d7f01c9b2879f.md) | 320 | `result-track:c74c81fee00d7f01c9b2879f8ab7509e92087b3bdb4ccb27d3a696b122b00cc9` |
| 60 | `lemma` | [mem_ofUnits_iff_toUnits_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-ofunits-iff-tounits-mem--403bfefe876a95c2695162b2.md) | 324 | `result-track:403bfefe876a95c2695162b27a1778fbb0f5d40d4133040831f80aa160c44803` |
| 61 | `lemma` | [mem_iff_toUnits_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/mem-iff-tounits-mem-units--4a73262c9007404570af06b1.md) | 328 | `result-track:4a73262c9007404570af06b1a0579485b53c73b5e9269efe4bb5542dabb324e9` |
| 62 | `lemma` | [val_mem_ofUnits_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/val-mem-ofunits-iff-mem--f09feacc95d63b934a42f637.md) | 332 | `result-track:f09feacc95d63b934a42f6377810e040f036e0fee29ef0f0efda01ef7b0cf034` |
| 63 | `def` | [unitsEquivSelf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/unitsequivself--b9d6297b692df3cd8938bc5c.md) | 338 | `declaration-track:b9d6297b692df3cd8938bc5c96057f661d81c23bb76af1d1789e760503c23eae` |
| 64 | `theorem` | [MonoidHom.isUnit_eqLocusM_mk_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/monoidhom-isunit-eqlocusm-mk-iff--1ecb862158c425f014fb2e06.md) | 344 | `result-track:1ecb862158c425f014fb2e06adf30e24f336fb707289e68d3798d6a90602d501` |
| 65 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Units/Variantbe381dcf0230e115634800238c7d6f5ecb71b33dc7f105f9b821a7070c4c0197.lean/declarations/instance--dd8ffe07143fb7470b8099fe.md) | 354 | `declaration-track:dd8ffe07143fb7470b8099fe318b05401bbf99e1135600a3584c59fb7be8b073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
