# Verification target: GRWTSK.Algebra.GroupTheory.SubmonoidClosure.Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d26f7becf098b099d4bc370c340adbf0facd15fa",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d26f7becf098b099d4bc370c340adbf0facd15fa`.

Source path: `GRWTSK/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mapClusterPt_atTop_zpow_iff_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-attop-zpow-iff-pow--41fa9a2003ea02209ca77a2a.md) | 27 | `result-track:41fa9a2003ea02209ca77a2a423e216423c3eda1b254ecb46377b93dde322dd9` |
| 2 | `theorem` | [mapClusterPt_self_zpow_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-self-zpow-attop-pow--0dda3bc77c55f23b0b5ce3dc.md) | 34 | `result-track:0dda3bc77c55f23b0b5ce3dc3b6d41c03d0d554cd00859dea14843806feeee7c` |
| 3 | `theorem` | [mapClusterPt_one_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-one-attop-pow--b85d6b746d1c29994cc528cd.md) | 49 | `result-track:b85d6b746d1c29994cc528cda550aa39302682b8acc092a1912ff103ccfa8481` |
| 4 | `theorem` | [mapClusterPt_self_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-self-attop-pow--374bd438509de632348d57fd.md) | 53 | `result-track:374bd438509de632348d57fdcde7d15269e202063ad66458306fe56dce419ce3` |
| 5 | `theorem` | [mapClusterPt_atTop_pow_tfae](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-attop-pow-tfae--65bfb8c5f9322b335f24e27c.md) | 57 | `result-track:65bfb8c5f9322b335f24e27ca58b2b947e9e41450eb76da93fb30d6196bc9dd4` |
| 6 | `theorem` | [mapClusterPt_atTop_pow_iff_mem_topologicalClosure_zpowers](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-attop-pow-iff-mem-topologicalclosure-zpowers--ac12ba9c9b84cc33d775ab1c.md) | 77 | `result-track:ac12ba9c9b84cc33d775ab1c6b5643100a834f17c4bc33c26fda9480cc7849ed` |
| 7 | `theorem` | [mapClusterPt_inv_atTop_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/mapclusterpt-inv-attop-pow--774b5af63e66bb53b8c96250.md) | 82 | `result-track:774b5af63e66bb53b8c9625036648e090e1d30ffa2e41cd7dd733297121f5731` |
| 8 | `theorem` | [closure_range_zpow_eq_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/closure-range-zpow-eq-pow--d7005779e1c9a30b96b21e5f.md) | 87 | `result-track:d7005779e1c9a30b96b21e5fc7881cbd2467862d37ee176e38b941ad95b0fbce` |
| 9 | `theorem` | [denseRange_zpow_iff_pow](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/denserange-zpow-iff-pow--6a0f8b39287b54219c37c72b.md) | 93 | `result-track:6a0f8b39287b54219c37c72b3df384ad135ac731a955b207e365d2ce2a7efc6e` |
| 10 | `theorem` | [topologicalClosure_subgroupClosure_toSubmonoid](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/topologicalclosure-subgroupclosure-tosubmonoid--c3fa0c7da6c71c9799312ad4.md) | 98 | `result-track:c3fa0c7da6c71c9799312ad49c1bfaa1dc8cf64408352eed87acc80f062f7cfa` |
| 11 | `theorem` | [closure_submonoidClosure_eq_closure_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/closure-submonoidclosure-eq-closure-subgroupclosure--f070a6e5dd3f6e84f41cd57e.md) | 111 | `result-track:f070a6e5dd3f6e84f41cd57e6c47d2fb59dcae050d12e154a90a0fab9264934b` |
| 12 | `theorem` | [dense_submonoidClosure_iff_subgroupClosure](../../../../../mathematics/Algebra/GroupTheory/SubmonoidClosure/Variant8421de8a5e3cf0a887f73f9c842799ba2b95979542f57347c1f3b264dab37fd6.lean/declarations/dense-submonoidclosure-iff-subgroupclosure--51e6e485d993baff68a442c9.md) | 116 | `result-track:51e6e485d993baff68a442c9abcd109e7697c4856fe3c21acb173efbc6a4cce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
