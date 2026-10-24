# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b32c9e9aab3c6d59442fc5f0603246b1a8420bfd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b32c9e9aab3c6d59442fc5f0603246b1a8420bfd`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ZornAtoms` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_sUnion_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/finite-sunion-mem-iff--652e585c20d748370f6ca04c.md) | 29 | `result-track:652e585c20d748370f6ca04c6861e19dd0a59704918247dc524cba67ee95509d` |
| 2 | `theorem` | [finite_biUnion_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/finite-biunion-mem-iff--c7f31d72b66c098b1b15c8c4.md) | 34 | `result-track:c7f31d72b66c098b1b15c8c4c60a49048e759cf29c83a6ce4408f269d0b83f88` |
| 3 | `lemma` | [eventually_exists_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/eventually-exists-mem-iff--5048a43731ce62770dd45f7b.md) | 38 | `result-track:5048a43731ce62770dd45f7beaa848118b42ce1045be0c052c619398e253d798` |
| 4 | `lemma` | [eventually_exists_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/eventually-exists-iff--59db6fc152962312a466c994.md) | 44 | `result-track:59db6fc152962312a466c99469143fb5ab31603472d371a9e63e43128a36405d` |
| 5 | `theorem` | [eq_pure_of_finite_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/eq-pure-of-finite-mem--0465a20fe237b961e2eb5b6c.md) | 48 | `result-track:0465a20fe237b961e2eb5b6c453e6bda7e3260e5892eccead686ee99b4582770` |
| 6 | `theorem` | [eq_pure_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/eq-pure-of-finite--c2dd97be0588cbbc895b3a12.md) | 53 | `result-track:c2dd97be0588cbbc895b3a12beedde3e1160aa28cc4bfa9b11dfb7d3fcf8effe` |
| 7 | `theorem` | [le_cofinite_or_eq_pure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/le-cofinite-or-eq-pure--d25965afd2a78ff436b5da64.md) | 56 | `result-track:d25965afd2a78ff436b5da64a6f74df98b4d9793e4bba40c1285c00c613563f9` |
| 8 | `theorem` | [exists_ultrafilter_of_finite_inter_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/exists-ultrafilter-of-finite-inter-nonempty--abbd6b5eed344a8a3c43fff4.md) | 62 | `result-track:abbd6b5eed344a8a3c43fff403b12b2e2a03aedf3ef1ce0b947c98389cced401` |
| 9 | `lemma` | [atTop_eq_pure_of_isTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/attop-eq-pure-of-istop--07bb1425d258688c5df6b7c2.md) | 76 | `result-track:07bb1425d258688c5df6b7c2c1c6b099b6fb767a24094ae61e3aa58220a10ded` |
| 10 | `lemma` | [atBot_eq_pure_of_isBot](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/atbot-eq-pure-of-isbot--e8cc5037e0ef2d6a1a19ecb5.md) | 80 | `result-track:e8cc5037e0ef2d6a1a19ecb51bd8855b4d5abbe72db24e190dcdc9888cb1e393` |
| 11 | `theorem` | [tendsto_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/tendsto-iff-ultrafilter--7861a8e5f0997acc25901004.md) | 85 | `result-track:7861a8e5f0997acc25901004cbc7657d7b80d55aa1621725996a35186537f324` |
| 12 | `def` | [hyperfilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/hyperfilter--dad1f87ebedf99585e0286c0.md) | 94 | `declaration-track:dad1f87ebedf99585e0286c08f82cf62964e370969dc14975834364eb6d8e7be` |
| 13 | `theorem` | [hyperfilter_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/hyperfilter-le-cofinite--dc6eb2895844e5e8255e649f.md) | 99 | `result-track:dc6eb2895844e5e8255e649f0bc6127d7d1500304f6889b9afbe11f2b54f6ecf` |
| 14 | `theorem` | [_root_.Nat.hyperfilter_le_atTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/root-nat-hyperfilter-le-attop--ad651787a78a134755d1130d.md) | 102 | `result-track:ad651787a78a134755d1130d2902b72d69e5f9157e50e11ff9563b3392ca866d` |
| 15 | `theorem` | [bot_ne_hyperfilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/bot-ne-hyperfilter--fefdfc9c39aaf91777d27ba4.md) | 106 | `result-track:fefdfc9c39aaf91777d27ba47003ae6da01a997499832e489f087dc7fd98dfca` |
| 16 | `theorem` | [notMem_hyperfilter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/notmem-hyperfilter-of-finite--727407bc4bde97a7c4ee1174.md) | 109 | `result-track:727407bc4bde97a7c4ee1174db7e5271d481ad3fadff64856104f02c6fceaafd` |
| 17 | `theorem` | [compl_mem_hyperfilter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/compl-mem-hyperfilter-of-finite--80c824f2c1e11a06ab9f847d.md) | 120 | `result-track:80c824f2c1e11a06ab9f847de3d8bcba5aeaec19223d72d0a5f9c0f62cc0e8bc` |
| 18 | `theorem` | [mem_hyperfilter_of_finite_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.lean/declarations/mem-hyperfilter-of-finite-compl--c144c2872ef93002b8afa2f5.md) | 125 | `result-track:c144c2872ef93002b8afa2f5cc057f84c5e664943191deefefdf772fe876d95f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
