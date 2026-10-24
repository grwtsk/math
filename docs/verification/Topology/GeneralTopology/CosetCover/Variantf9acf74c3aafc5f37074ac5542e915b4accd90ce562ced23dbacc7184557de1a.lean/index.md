# Verification target: GRWTSK.Topology.GeneralTopology.CosetCover.Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e598607cd2ca2768c08f0bc01ea6ec0f2c4daa8a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e598607cd2ca2768c08f0bc01ea6ec0f2c4daa8a`.

Source path: `GRWTSK/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean.json)

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
| 1 | `theorem` | [exists_leftTransversal_of_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/exists-lefttransversal-of-finiteindex--88372f9200a0967b6abffd3c.md) | 60 | `result-track:88372f9200a0967b6abffd3c5d2c3105d583a8bf809373fc40ed7715b7615aae` |
| 2 | `theorem` | [leftCoset_cover_const_iff_surjOn](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/leftcoset-cover-const-iff-surjon--cb6de7ab5b0019c1f5f751dc.md) | 80 | `result-track:cb6de7ab5b0019c1f5f751dc3dbdbbb19e5aa1fca3de98d39c02e873d6855172` |
| 3 | `theorem` | [finiteIndex_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/finiteindex-of-leftcoset-cover-const--0759dd35f409168753ef670d.md) | 92 | `result-track:0759dd35f409168753ef670d51043ae7101c378359047ddddc84559afef6c8f6` |
| 4 | `theorem` | [index_le_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/index-le-of-leftcoset-cover-const--7b3ef86f3d8bf000daac7dc6.md) | 98 | `result-track:7b3ef86f3d8bf000daac7dc627f1981dd0f160fe6aa5c2035a8614e2405b7a74` |
| 5 | `theorem` | [pairwiseDisjoint_leftCoset_cover_const_of_index_eq](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/pairwisedisjoint-leftcoset-cover-const-of-index-eq--6501ed9aba3f06a19954ecab.md) | 106 | `result-track:6501ed9aba3f06a19954ecabd1a98ea7fd0a64521c3377d76540de8156a2aefc` |
| 6 | `theorem` | [exists_finiteIndex_of_leftCoset_cover_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/exists-finiteindex-of-leftcoset-cover-aux--477f4dcfa373e1922f84c8dd.md) | 134 | `result-track:477f4dcfa373e1922f84c8ddafe48225151506df21c9c9dd7fe5df4427023242` |
| 7 | `theorem` | [exists_finiteIndex_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/exists-finiteindex-of-leftcoset-cover--8ec36fd524c079501108309c.md) | 201 | `result-track:8ec36fd524c079501108309ccc7dc7cd4cc98a7b448c59cd7651a61d792ac181` |
| 8 | `theorem` | [leftCoset_cover_filter_FiniteIndex_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/leftcoset-cover-filter-finiteindex-aux--2375221c5296249447b38210.md) | 216 | `result-track:2375221c5296249447b3821095e2a321dd9acee97d046317b428b8c9feb9a8cc` |
| 9 | `theorem` | [leftCoset_cover_filter_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/leftcoset-cover-filter-finiteindex--dc987b0a6227acd4c4febcdf.md) | 315 | `result-track:dc987b0a6227acd4c4febcdf8eaac95c58de7c12661ee1890662592d4541e822` |
| 10 | `theorem` | [one_le_sum_inv_index_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/one-le-sum-inv-index-of-leftcoset-cover--ba3d34b68409a7632d85c341.md) | 325 | `result-track:ba3d34b68409a7632d85c3419854a5a685d99792b6596c63e55064fb47f7ed78` |
| 11 | `theorem` | [pairwiseDisjoint_leftCoset_cover_of_sum_inv_index_eq_one](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/pairwisedisjoint-leftcoset-cover-of-sum-inv-index-eq-one--a8a8b8f9cc1a102f2614021c.md) | 336 | `result-track:a8a8b8f9cc1a102f2614021c41a6c28b928a6bd3cdbac78cfc671221892f8829` |
| 12 | `theorem` | [exists_index_le_card_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/exists-index-le-card-of-leftcoset-cover--7364c1dc01d341b890dd28c8.md) | 349 | `result-track:7364c1dc01d341b890dd28c8b6c96e8bb684c542964ccce253d86b07d407cf17` |
| 13 | `theorem` | [Submodule.exists_finiteIndex_of_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/submodule-exists-finiteindex-of-cover--1a07368e26e533f32a2dfac9.md) | 375 | `result-track:1a07368e26e533f32a2dfac929de81fc9aceed08517cb5d1079dec9dba86195b` |
| 14 | `theorem` | [Subspace.biUnion_ne_univ_of_top_notMem](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/subspace-biunion-ne-univ-of-top-notmem--4bc726c5731dedd5e79a335f.md) | 389 | `result-track:4bc726c5731dedd5e79a335f3745a7a22c8f50eb8ec8fe88146e1e64dbdfacbb` |
| 15 | `theorem` | [Subspace.top_mem_of_biUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/subspace-top-mem-of-biunion-eq-univ--d9a1da9ace196a225e972bda.md) | 398 | `result-track:d9a1da9ace196a225e972bdaf8bbf249ef94a28f96f0b8d1dbe17e8df0f92b8f` |
| 16 | `theorem` | [Subspace.exists_eq_top_of_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variantf9acf74c3aafc5f37074ac5542e915b4accd90ce562ced23dbacc7184557de1a.lean/declarations/subspace-exists-eq-top-of-iunion-eq-univ--4264f139aa4994afb178e948.md) | 403 | `result-track:4264f139aa4994afb178e9481271919bc6dffbcaefed02665850c1102fde9cb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
