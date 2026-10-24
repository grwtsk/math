# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a36974f42737373706ab8edffabbc13e0566ac",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a36974f42737373706ab8edffabbc13e0566ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/locallyboundedmap--7a8b72f5e01ad5f3cfc71ddd.md) | 31 | `declaration-track:7a8b72f5e01ad5f3cfc71ddd70209ab9ad4dd6582b11e990cd24494356fc0ee5` |
| 2 | `class` | [LocallyBoundedMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/locallyboundedmapclass--93f9fe406c365c8e6cdd6a51.md) | 43 | `declaration-track:93f9fe406c365c8e6cdd6a514f5a75d4cf2229f657577f387edae85e4d459e27` |
| 3 | `theorem` | [Bornology.IsBounded.image](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/bornology-isbounded-image--0cf4930e070f8947c37e8cc3.md) | 55 | `result-track:0cf4930e070f8947c37e8cc39f797742a9aa4af6e45030fd5d055abdf7921286` |
| 4 | `def` | [LocallyBoundedMapClass.toLocallyBoundedMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/locallyboundedmapclass-tolocallyboundedmap--59eb665b983622dd82ce9686.md) | 63 | `declaration-track:59eb665b983622dd82ce96863fb3b19c0131df3859e3f4f4c1bbd68626ae3041` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/instance--fcc4298b43486413ef9c8a59.md) | 68 | `declaration-track:fcc4298b43486413ef9c8a5999ad31dbc81b3aca99eaaef872c7f5939e2bf2e0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/instance--b237acbe34e7a32488d5add3.md) | 76 | `declaration-track:b237acbe34e7a32488d5add3e678ee7e66f33ac4929990e257bac07d1c4b88c3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/instance--fb838b5c40ee33b2db57002e.md) | 83 | `declaration-track:fb838b5c40ee33b2db57002e570f0483b3f5fe5611d24bd56dcbc36f369d6396` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/ext--2245357e5e82aed230afd7cf.md) | 87 | `result-track:2245357e5e82aed230afd7cf8098c75e0963ced883024a6eacb57ebeb93ec367` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/copy--b8211688ba833f0eec910639.md) | 92 | `declaration-track:b8211688ba833f0eec910639a589e6002ab9246671d233ccc4fd1e35062e690f` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/coe-copy--c1cfcecb8ac2441b12c5ffa5.md) | 96 | `result-track:c1cfcecb8ac2441b12c5ffa5586fb59fa549e99a2d56a8d3c1942fac62b21ac0` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/copy-eq--002842be7279a5030aef6752.md) | 99 | `result-track:002842be7279a5030aef675224082e018d634949428d8e54d610071dd1b34f23` |
| 12 | `def` | [ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/ofmapbounded--128d204f1fac80a24d699dd4.md) | 104 | `declaration-track:128d204f1fac80a24d699dd45e59b61f016b1091e1b0dbab0cdde6a6cf60cd93` |
| 13 | `theorem` | [coe_ofMapBounded](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/coe-ofmapbounded--585f328be125e2136bdb74c6.md) | 109 | `result-track:585f328be125e2136bdb74c692676c18eff9c75d7bfa8d0c57a2056db3061a79` |
| 14 | `theorem` | [ofMapBounded_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/ofmapbounded-apply--b630794f9e7bc80fe1c22f79.md) | 113 | `result-track:b630794f9e7bc80fe1c22f79b71854521806941beee569c6dfabdfd43f5aab7e` |
| 15 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/id--8e263c44bf7d8599ba5b9b00.md) | 119 | `declaration-track:8e263c44bf7d8599ba5b9b00f7849d751af085e6de3aacf8b0d9cd6568e72421` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/instance--3e57bf904d84c23ae9d494ff.md) | 122 | `declaration-track:3e57bf904d84c23ae9d494ffaf97febcad4ba096cba24d69e7a16d5ae4d4c62e` |
| 17 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/coe-id--61c6172940f6cdf92fcee8c1.md) | 126 | `result-track:61c6172940f6cdf92fcee8c10989cf826d623b305fb15bc8d922c60aa34b5b19` |
| 18 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/id-apply--7dec8113c90615281206c446.md) | 132 | `result-track:7dec8113c90615281206c446f7a484162b41da81e6b19070abfdb99b40701b9a` |
| 19 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/comp--3920929416de76170a35af14.md) | 136 | `declaration-track:3920929416de76170a35af14292d66d4e67b851cc733ee9b6208d33449911972` |
| 20 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/coe-comp--5fea3565b8a7298c54e60dee.md) | 142 | `result-track:5fea3565b8a7298c54e60dee3cabd1a886572748f39133e8032c84a229c25cb4` |
| 21 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/comp-apply--531a936018faf6fb899bcf8d.md) | 146 | `result-track:531a936018faf6fb899bcf8d527b8705a8c5fa260679533ef325d789b9edb26f` |
| 22 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/comp-assoc--88a47f5a84408fe15a3b488e.md) | 151 | `result-track:88a47f5a84408fe15a3b488e176300e0b4216658f356f76a461a3d116c4dc422` |
| 23 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/comp-id--26f618a0cf84e7954739afd8.md) | 156 | `result-track:26f618a0cf84e7954739afd87c62e87947009865293928c0d0df57a7fef19d9b` |
| 24 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/id-comp--9d3d67dd600923948e31baad.md) | 160 | `result-track:9d3d67dd600923948e31baadb8ca3e9f43ebc6542c0262d3cb25468802fd6138` |
| 25 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/cancel-right--d90a21f13a15fdbfdb4186c1.md) | 164 | `result-track:d90a21f13a15fdbfdb4186c121ea704910513fe5122fd1e26bf49b1fa57b250f` |
| 26 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb945fbf863e0e4fc5d9910646adb7d5537ec271a8e789c45de8c35d3974c18d7.lean/declarations/cancel-left--2834b12f1265b5c4e9683eba.md) | 169 | `result-track:2834b12f1265b5c4e9683ebafbc683370a67069e25d3d07396c27000f0b36686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
