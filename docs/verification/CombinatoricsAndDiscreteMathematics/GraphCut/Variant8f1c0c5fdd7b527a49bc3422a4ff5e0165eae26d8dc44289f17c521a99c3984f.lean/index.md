# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCut.Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a0ba56f6a2f47dbba70687765ddc6b31ed1c1b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a0ba56f6a2f47dbba70687765ddc6b31ed1c1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GraphCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/graphcut--5854d13c37d3f612690cb06d.md) | 16 | `declaration-track:5854d13c37d3f612690cb06ded2688a2b6c621a0341884666528beafe6cfb597` |
| 2 | `def` | [nodeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/nodeset--9d13a1a0bf60d78d5aecb84f.md) | 60 | `declaration-track:9d13a1a0bf60d78d5aecb84fc05440d605117af856889ee2234d15ec0b3acb02` |
| 3 | `def` | [edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/edgeset--aff065f3a4ef689c17ef54a1.md) | 63 | `declaration-track:aff065f3a4ef689c17ef54a134c526473381925d6f90c8d374b2e07bc8e6de92` |
| 4 | `def` | [orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderednodes--abf04937a74b1ba20a515101.md) | 66 | `declaration-track:abf04937a74b1ba20a515101b4734eb4ad00e82cd5c257d14c275253ee0173f9` |
| 5 | `def` | [orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderededges--0def363a3d228f876dafc92e.md) | 69 | `declaration-track:0def363a3d228f876dafc92e7eea2487a4eb39d055e8d5ed78343184fc53f7c5` |
| 6 | `theorem` | [mem_orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/mem-orderednodes--0e721003617788775bf3d2a6.md) | 73 | `result-track:0e721003617788775bf3d2a6ad8d7d8671e638d76bc6febee1ff77991f225134` |
| 7 | `theorem` | [node_mem_orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/node-mem-orderednodes--455c447b9e42d2ac9bc60d05.md) | 79 | `result-track:455c447b9e42d2ac9bc60d05db184c1a2d4914910f9b6933deba167c136b5e10` |
| 8 | `theorem` | [mem_orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/mem-orderededges--c9b2166e25e755d213de68ca.md) | 86 | `result-track:c9b2166e25e755d213de68ca9f163d1796617c56fbd0f028ad64990e5b1b2f4d` |
| 9 | `theorem` | [edge_mem_orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/edge-mem-orderededges--8eb97811eccd84fcc060bc4e.md) | 92 | `result-track:8eb97811eccd84fcc060bc4e654772f786ed4e437746d11737dc20a0274f0d33` |
| 10 | `theorem` | [orderedNodes_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderednodes-nodup--0eaf6af5352921e90e55ed44.md) | 98 | `result-track:0eaf6af5352921e90e55ed442405bdacfaf4004954752ca0807da954a36707e8` |
| 11 | `theorem` | [orderedEdges_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderededges-nodup--a88d90a6cb36934865f8b7d1.md) | 103 | `result-track:a88d90a6cb36934865f8b7d182f8e511f58c48cfdec2826210d4245735855677` |
| 12 | `theorem` | [orderedNodes_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderednodes-sorted--7dbf9fee01cef734368f79f7.md) | 108 | `result-track:7dbf9fee01cef734368f79f7c9854afe5e6ee23074bef7dc84ee01834ead56f9` |
| 13 | `theorem` | [orderedEdges_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variant8f1c0c5fdd7b527a49bc3422a4ff5e0165eae26d8dc44289f17c521a99c3984f.lean/declarations/orderededges-sorted--46fa989034febbad6716314b.md) | 115 | `result-track:46fa989034febbad6716314bd0624aed3b075a6f2c41f5c8133cb67249e3e4ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
