# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsConnected.Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f620121744050f07fd045ae033372c3d717f66",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f620121744050f07fd045ae033372c3d717f66`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constPUnitFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/constpunitfunctor--40ed9cd3fda53efee219d008.md) | 57 | `declaration-track:40ed9cd3fda53efee219d008770811c5f771e5dbe9cfae8ba1299080fbc7dc60` |
| 2 | `def` | [pUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/punitcocone--3c5a5c60b52435c2d5c6dadb.md) | 61 | `declaration-track:3c5a5c60b52435c2d5c6dadba72036d118f5992d8e3df7c810bd945e159267c3` |
| 3 | `def` | [isColimitPUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/iscolimitpunitcocone--ae194da57f08ebb6f3d37f27.md) | 67 | `declaration-track:ae194da57f08ebb6f3d37f27920e2f34ed90a42960aeb29326b195cea34e0f32` |
| 4 | `instance` | [instHasColimitConstPUnitFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/insthascolimitconstpunitfunctor--5296c7e977a87e41c94da4a0.md) | 78 | `declaration-track:5296c7e977a87e41c94da4a0ff067afd457bafd140b4ee3984405bd43672faf2` |
| 5 | `instance` | [instSubsingletonColimitPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/instsubsingletoncolimitpunit--99353778f5532ec464666f07.md) | 81 | `declaration-track:99353778f5532ec464666f07f3b956cc33de216fd976f0d193487dc6091da14d` |
| 6 | `def` | [colimitConstPUnitIsoPUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/colimitconstpunitisopunit--49f5e4e4d2ec62b51a160742.md) | 91 | `declaration-track:49f5e4e4d2ec62b51a16074202676bcac39d90b1e2bcc366163e987525e729a1` |
| 7 | `theorem` | [zigzag_of_eqvGen_quot_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/zigzag-of-eqvgen-quot-rel--c1b3d1557aaacb763b058379.md) | 97 | `result-track:c1b3d1557aaacb763b0583796aa855588c416454294c42ca6ca12aaf78f3504f` |
| 8 | `theorem` | [isConnected_iff_colimit_constPUnitFunctor_iso_pUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-iff-colimit-constpunitfunctor-iso-punit--b1f92bfc221515c72990eb24.md) | 107 | `result-track:b1f92bfc221515c72990eb24b2eb16e04a58f24c3e65e1ce9d3c28df684cac9e` |
| 9 | `theorem` | [isConnected_iff_isColimit_pUnitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-iff-iscolimit-punitcocone--6ff4d94efadd0f0a1f7fb0b4.md) | 116 | `result-track:6ff4d94efadd0f0a1f7fb0b42fd122768e480cb122603e789fcfa59c598f9514` |
| 10 | `theorem` | [isConnected_iff_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-iff-of-final--6dd1945f49f8e4545d0c2b98.md) | 135 | `result-track:6dd1945f49f8e4545d0c2b986ee9feb88f62e99734f2ae17b0c652278da78f64` |
| 11 | `theorem` | [isConnected_iff_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-iff-of-initial--ee05c729e21039fbf79e8776.md) | 142 | `result-track:ee05c729e21039fbf79e8776c0476ea9ddb24357dfb59fa3a4f84bb36bfbdbcd` |
| 12 | `lemma` | [isConnected_of_isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-of-isinitial--47f2a4841dd9fdee0f71efe5.md) | 153 | `result-track:47f2a4841dd9fdee0f71efe5dc2624b6cd50ebf98bf677bb4051754da174a036` |
| 13 | `lemma` | [isConnected_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-of-isterminal--777ea91fd0775a4a5e7b78d7.md) | 163 | `result-track:777ea91fd0775a4a5e7b78d7c4450f3f3614e178eaa8d1b87cf32120e40bfcc2` |
| 14 | `lemma` | [isConnected_of_hasInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-of-hasinitial--a6e7d255938fd469378e5cd4.md) | 173 | `result-track:a6e7d255938fd469378e5cd41394bc635c2cddec2e47d2c79e9af411efa84926` |
| 15 | `lemma` | [isConnected_of_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant3599b265d1179f28186d844865d3ea7a90f186ddee9819112e7677c2265d1fe4.lean/declarations/isconnected-of-hasterminal--88aabd376ff0eed9ddd467f6.md) | 176 | `result-track:88aabd376ff0eed9ddd467f67ba2ba425ec82821841f135938d06db1c33a1576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
