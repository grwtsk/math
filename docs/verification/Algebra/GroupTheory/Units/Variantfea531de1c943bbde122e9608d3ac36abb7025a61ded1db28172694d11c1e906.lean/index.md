# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38ff4ff41d5845b867d42c3efaa78f19f8f11bb",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38ff4ff41d5845b867d42c3efaa78f19f8f11bb`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/submonoid-units--79a622c85737bc026092ccc7.md) | 45 | `declaration-track:79a622c85737bc026092ccc7b5e23fc0118dbe30134d9c94d93f7c4998b45c8d` |
| 2 | `def` | [Subgroup.ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/subgroup-ofunits--845c12cd6d3848c2646aaa4a.md) | 51 | `declaration-track:845c12cd6d3848c2646aaa4a10a4347e785d96b0bb36462d78f023cf6d6c929f` |
| 3 | `lemma` | [Submonoid.units_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/submonoid-units-mono--bf33252af5dbedbfe6915346.md) | 54 | `result-track:bf33252af5dbedbfe691534674bd8ab277f2ce28c6c25c02b12b08cb970cd8db` |
| 4 | `lemma` | [Submonoid.ofUnits_units_le](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/submonoid-ofunits-units-le--9ccb219c74d3330840f871c5.md) | 58 | `result-track:9ccb219c74d3330840f871c50dee265cf829c2d68bf4fc00c390882e238430dc` |
| 5 | `lemma` | [Subgroup.ofUnits_mono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/subgroup-ofunits-mono--30202ffbe737c5b5b7718873.md) | 62 | `result-track:30202ffbe737c5b5b7718873a18abdd1302b394eae3510ab01a201fcd2067c0e` |
| 6 | `lemma` | [Subgroup.units_ofUnits_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/subgroup-units-ofunits-eq--8daadf0a49a7501e79dee276.md) | 66 | `result-track:8daadf0a49a7501e79dee2769b5c0db506d30bf6d5f46408287b7bd62eea68ce` |
| 7 | `def` | [ofUnits_units_gci](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-units-gci--8137722813bbd12f7aed31f4.md) | 75 | `declaration-track:8137722813bbd12f7aed31f49f0c40d7d110765dc67b09653e6c060bd462ba35` |
| 8 | `lemma` | [ofUnits_units_gc](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-units-gc--12ea7cc686b4401c62b5531a.md) | 80 | `result-track:12ea7cc686b4401c62b5531a688db2d421623ced250942b659dbd5e1823149fb` |
| 9 | `lemma` | [ofUnits_le_iff_le_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-le-iff-le-units--c6068e722d0ca807eb725ee6.md) | 84 | `result-track:c6068e722d0ca807eb725ee6433030372200c451ef27ea593859e3a706f7d8d5` |
| 10 | `lemma` | [mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-units-iff--037ed753c357556ebea1a5ba.md) | 92 | `result-track:037ed753c357556ebea1a5ba60db90ce0c001005004625f3c7a96ad57686c598` |
| 11 | `lemma` | [mem_units_of_val_mem_inv_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-units-of-val-mem-inv-val-mem--080e6f9938514c5b5eef8e5f.md) | 96 | `result-track:080e6f9938514c5b5eef8e5f5bad684038d832fe0262e937845f88ed99eb477c` |
| 12 | `lemma` | [val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/val-mem-of-mem-units--e6712b38f11446e02d6ca674.md) | 100 | `result-track:e6712b38f11446e02d6ca674af1fbe8df8634eb739680082c6bf65d0e9aa4ac0` |
| 13 | `lemma` | [inv_val_mem_of_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/inv-val-mem-of-mem-units--0a58883e4a8e5b21382f486e.md) | 103 | `result-track:0a58883e4a8e5b21382f486eb3de3106aa9cb1c3239c383ad80777700188110c` |
| 14 | `lemma` | [coe_inv_val_mul_coe_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/coe-inv-val-mul-coe-val--5777fc5e15e2532030a81ce2.md) | 107 | `result-track:5777fc5e15e2532030a81ce2d903da952dd0c5f0c7f776ab56b9471cf2dfbaad` |
| 15 | `lemma` | [coe_val_mul_coe_inv_val](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/coe-val-mul-coe-inv-val--60b5bf765755ec81a9cca056.md) | 111 | `result-track:60b5bf765755ec81a9cca056352aae8fa4734bf2a4d48d1d9b9872c88f3f9545` |
| 16 | `lemma` | [mk_inv_mul_mk_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mk-inv-mul-mk-eq-one--4ca5239f7d6ff60fa1479329.md) | 115 | `result-track:4ca5239f7d6ff60fa1479329c45a8c3ff78ec9654a4931c153c816317eb556b8` |
| 17 | `lemma` | [mk_mul_mk_inv_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mk-mul-mk-inv-eq-one--409fd33e51c0f6b5619ffd23.md) | 119 | `result-track:409fd33e51c0f6b5619ffd23b509cedfae95ac1534771e6db154fcdcd87187a8` |
| 18 | `lemma` | [mul_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mul-mem-units--8612163b940138c850ccbc52.md) | 123 | `result-track:8612163b940138c850ccbc52b7edff109217b0831358c664459c7a70d8170054` |
| 19 | `lemma` | [inv_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/inv-mem-units--3700f74901eb56d79d292801.md) | 127 | `result-track:3700f74901eb56d79d292801bb074ecc48421ae41e12abe93837fbc573d0cbb2` |
| 20 | `lemma` | [inv_mem_units_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/inv-mem-units-iff--6a08a5b6aefd570f0aa6dd3d.md) | 130 | `result-track:6a08a5b6aefd570f0aa6dd3d0ff441588c2edb2a1f04f176d54657e7a7d809e2` |
| 21 | `def` | [unitsEquivUnitsType](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unitsequivunitstype--f226fcce0d3d1f7d2a2e9c56.md) | 135 | `declaration-track:f226fcce0d3d1f7d2a2e9c567bc572faee6abb45be95d62f3db0bc2450f48a64` |
| 22 | `lemma` | [units_top](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-top--4d958deaf75fe43f4360f261.md) | 143 | `result-track:4d958deaf75fe43f4360f261feb6cb89ff6dca5eab18cb906d5c6f386bada3ea` |
| 23 | `lemma` | [units_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-inf--fae09677cdf9b34fb8946ee1.md) | 146 | `result-track:fae09677cdf9b34fb8946ee12d5a769493c1eea6027a0ebf9aeb45400849915c` |
| 24 | `lemma` | [units_sInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-sinf--d189518cbe29c4e570d79b3d.md) | 150 | `result-track:d189518cbe29c4e570d79b3dd56179c17dab2e0fcbac0413499da50b667250c5` |
| 25 | `lemma` | [units_iInf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-iinf--066db2cebc9113951b89a16f.md) | 154 | `result-track:066db2cebc9113951b89a16f2e7f6a46ef28102fb358ba63af8ce90a3f8dc2a0` |
| 26 | `lemma` | [units_iInf₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-iinf--8719a3cba4cf419be272ed0a.md) | 158 | `result-track:8719a3cba4cf419be272ed0a4757c934d11c6ce684a294d65a515860f9e487d3` |
| 27 | `lemma` | [units_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-bot--11d27ff428df42202c4a7a45.md) | 163 | `result-track:11d27ff428df42202c4a7a4582a3d3f3114465d5f7b01e92ea3b4d643074fc4f` |
| 28 | `lemma` | [units_surjective](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-surjective--1a2f3eac1472d25a1d749b13.md) | 166 | `result-track:1a2f3eac1472d25a1d749b13775787274b049089e9986ff2cfc6e5daab600213` |
| 29 | `lemma` | [units_left_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/units-left-inverse--516c0b783f07e20ee9619855.md) | 170 | `result-track:516c0b783f07e20ee9619855b7ac037c6c476f477e4dbbe4373516f56312ab13` |
| 30 | `def` | [unitsEquivIsUnitSubmonoid](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unitsequivisunitsubmonoid--ae1c183486da0d4a9490e2ba.md) | 178 | `declaration-track:ae1c183486da0d4a9490e2bacf0fb1a5ca59c9bf1155e8459a1d6a7819a0f877` |
| 31 | `lemma` | [mem_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-ofunits-iff--b1b82e540816cc82e590dab8.md) | 188 | `result-track:b1b82e540816cc82e590dab8782e24915abd856d5deca33b37740977ef5116e6` |
| 32 | `lemma` | [mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-ofunits--d2e68bc5ae25f13f0acc511a.md) | 191 | `result-track:d2e68bc5ae25f13f0acc511a25e1df5123465345ca5be9bde5b5734381d42085` |
| 33 | `lemma` | [exists_mem_ofUnits_val_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/exists-mem-ofunits-val-eq--c8b3dfc7724c0afb0aedb9ee.md) | 195 | `result-track:c8b3dfc7724c0afb0aedb9eea7dd23976f2d53d862e514d684063b291b234781` |
| 34 | `lemma` | [mem_of_mem_val_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-of-mem-val-ofunits--1a9739fbd3dd55e8168924ae.md) | 199 | `result-track:1a9739fbd3dd55e8168924ae28544b4f6716d57ce6a7047d66737f7dcb78f771` |
| 35 | `lemma` | [isUnit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/isunit-of-mem-ofunits--25f2797544234ac31cd60f25.md) | 204 | `result-track:25f2797544234ac31cd60f2573dca29d423d55b89d85378414c90538fc91a288` |
| 36 | `def` | [unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-of-mem-ofunits--c08c707eea679e37536c4e03.md) | 213 | `declaration-track:c08c707eea679e37536c4e03af9f04436023c68c5d82aa589fafcfa8360dff35` |
| 37 | `lemma` | [unit_of_mem_ofUnits_spec_eq_of_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-of-mem-ofunits-spec-eq-of-val-mem--1d9bcf6e14bbae76445c5d0e.md) | 217 | `result-track:1d9bcf6e14bbae76445c5d0e5a01a02bd1b7ed62d667fa154c93e0775c223f3d` |
| 38 | `lemma` | [unit_of_mem_ofUnits_spec_val_eq_of_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-of-mem-ofunits-spec-val-eq-of-mem--a4bda8b53ee1459973eac647.md) | 221 | `result-track:a4bda8b53ee1459973eac64712c1d5bb35058a98386a015ec184ab3cfac584ee` |
| 39 | `lemma` | [unit_of_mem_ofUnits_spec_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-of-mem-ofunits-spec-mem--aca60c8f1cecc4e6e0d419f0.md) | 225 | `result-track:aca60c8f1cecc4e6e0d419f073fe750a7be6c9edc5e3373ea2292f42eacb72fb` |
| 40 | `lemma` | [unit_eq_unit_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-eq-unit-of-mem-ofunits--6633271f4b3eb5510fd817ee.md) | 229 | `result-track:6633271f4b3eb5510fd817ee28ccf37157348eba791d87392dc72db5d6164b2a` |
| 41 | `lemma` | [unit_mem_of_mem_ofUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unit-mem-of-mem-ofunits--ab437cc475617464888b9370.md) | 233 | `result-track:ab437cc475617464888b93707e9ecb15a6aabefa72e8f8c4b2f5c5f4f3c3e57d` |
| 42 | `lemma` | [mem_ofUnits_of_isUnit_of_unit_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-ofunits-of-isunit-of-unit-mem--7e8bfe91fe28dc8b098289dd.md) | 238 | `result-track:7e8bfe91fe28dc8b098289dd80e4d2618aa2d0a3a2706006d9bb71e997c3e70e` |
| 43 | `lemma` | [mem_ofUnits_iff_exists_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-ofunits-iff-exists-isunit--5b643250898ed72648e766b2.md) | 242 | `result-track:5b643250898ed72648e766b263a53bbcc39865ebb9271b12cdf7d4785661bda8` |
| 44 | `def` | [ofUnitsEquivType](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunitsequivtype--a8bd64a69286602f18c7c83b.md) | 251 | `declaration-track:a8bd64a69286602f18c7c83b4a745f0f9d46b2b053fa217c20200cc66df0122b` |
| 45 | `lemma` | [ofUnits_bot](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-bot--50f73e5cf300ee2baf125131.md) | 259 | `result-track:50f73e5cf300ee2baf125131190266631b552732f2547d93ae6ec95aefefa8b6` |
| 46 | `lemma` | [ofUnits_inf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-inf--4e54eee20039977965ec171b.md) | 262 | `result-track:4e54eee20039977965ec171b2ff7ec5aeb72dc1713b5e9fd2e3369dcef4388d7` |
| 47 | `lemma` | [ofUnits_sSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-ssup--76e634543a7d86d8faca4e47.md) | 266 | `result-track:76e634543a7d86d8faca4e47bdd20feb2e5526299b722cec5ddc4ca8c60328bf` |
| 48 | `lemma` | [ofUnits_iSup](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-isup--ce4995b5677bde7cbea06827.md) | 270 | `result-track:ce4995b5677bde7cbea06827564d6db3dbee01c062a081ac3eaa6c3587bd62bb` |
| 49 | `lemma` | [ofUnits_iSup₂](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-isup--74124b02caf3ff075be71f18.md) | 274 | `result-track:74124b02caf3ff075be71f18b305274413c30a3113ac859cb332ad706ad9c7f9` |
| 50 | `lemma` | [ofUnits_injective](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-injective--7f8a3e72bd32da465a687ac9.md) | 279 | `result-track:7f8a3e72bd32da465a687ac9d16c0fefd8933b324a50ee2cd4db28ab5b2b45a6` |
| 51 | `lemma` | [ofUnits_sup_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-sup-units--54e28e39a44fcb2a63a2142a.md) | 283 | `result-track:54e28e39a44fcb2a63a2142abb1e36213952f9b388b44d11f460788ce58e5b0e` |
| 52 | `lemma` | [ofUnits_inf_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-inf-units--791ca63b81da0e6e403180e5.md) | 287 | `result-track:791ca63b81da0e6e403180e56c784de816f3b248736c6df3a0a164d9bce4ec2d` |
| 53 | `lemma` | [ofUnits_right_inverse](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-right-inverse--bb4b0f981d96bbc9facfe445.md) | 291 | `result-track:bb4b0f981d96bbc9facfe445d6ae9f8b6e0ab383d17e0db0ed610c0ee01e7995` |
| 54 | `lemma` | [ofUnits_strictMono](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-strictmono--98bb7f8eefcb7cf201284811.md) | 296 | `result-track:98bb7f8eefcb7cf2012848115d989d280c25dcadf2f3d890d6141a37b52e56a0` |
| 55 | `lemma` | [ofUnits_le_ofUnits_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunits-le-ofunits-iff--205748255a67eeb94c77ab91.md) | 298 | `result-track:205748255a67eeb94c77ab91a4d9aa4cc31338da5caedc2575d1de054fafcdb5` |
| 56 | `def` | [ofUnitsTopEquiv](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/ofunitstopequiv--bb6d2f5707eb8ef33f49ea08.md) | 305 | `declaration-track:bb6d2f5707eb8ef33f49ea0819b07adeba847ad9ad85b19e3b0d5801df011d86` |
| 57 | `lemma` | [mem_units_iff_val_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-units-iff-val-mem--0967d18a44ec053771696b1c.md) | 311 | `result-track:0967d18a44ec053771696b1c65a2a0213ebf707730882799ff5ebaaa7800bd8e` |
| 58 | `lemma` | [mem_ofUnits_iff_toUnits_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-ofunits-iff-tounits-mem--33f46be10c610c3f967e0fbf.md) | 315 | `result-track:33f46be10c610c3f967e0fbf33b793377782fa3c3170c0663b571ccc75ee8577` |
| 59 | `lemma` | [mem_iff_toUnits_mem_units](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/mem-iff-tounits-mem-units--11a3f475c3e75669a7459389.md) | 319 | `result-track:11a3f475c3e75669a74593897931054c2b0ae38acf79043832310873e862270d` |
| 60 | `lemma` | [val_mem_ofUnits_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/val-mem-ofunits-iff-mem--bcd42d8bf956b3a8b0bdda5a.md) | 323 | `result-track:bcd42d8bf956b3a8b0bdda5ab189de1ddaef1f72672217b7dfc9aa167d2f8170` |
| 61 | `def` | [unitsEquivSelf](../../../../../mathematics/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/declarations/unitsequivself--379f8217297ffeca20c9f22c.md) | 329 | `declaration-track:379f8217297ffeca20c9f22ce9ff9c25e98cc9f070b65ec00473ec77647732ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
