# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCut.Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76a17f8641ec86c651522130905b7582d4bcf01e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76a17f8641ec86c651522130905b7582d4bcf01e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GraphCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/graphcut--9490a236d8c859881dcf2224.md) | 24 | `declaration-track:9490a236d8c859881dcf2224ca4bfc1af3868a1b1db8db6942ccc7e9e268f1c7` |
| 2 | `def` | [nodeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/nodeset--d5d2ace4351d0999706f17ee.md) | 68 | `declaration-track:d5d2ace4351d0999706f17eed5c6deabef82423f2239273211074c5c92f3b5b8` |
| 3 | `def` | [edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/edgeset--30596b2cba1d7ceb2cfc5591.md) | 71 | `declaration-track:30596b2cba1d7ceb2cfc559151e888c4b5167f07c5bb0fc0340089995db12b87` |
| 4 | `def` | [orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderednodes--268931dfa78b800e9cb06ab6.md) | 74 | `declaration-track:268931dfa78b800e9cb06ab6f8b69041cccdec466413c0c8d79c239d6eb79310` |
| 5 | `def` | [orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderededges--9d28df41770ee9ddd7a03c80.md) | 77 | `declaration-track:9d28df41770ee9ddd7a03c8025a1dc30cce9d6a8da72d6c222cde87409bc944b` |
| 6 | `theorem` | [mem_orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/mem-orderednodes--591d59e198eb2be9b57852e8.md) | 81 | `result-track:591d59e198eb2be9b57852e871964135de4892e0a8a65d37c69731eb2c3d0b16` |
| 7 | `theorem` | [node_mem_orderedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/node-mem-orderednodes--2840906e29420b532b7e28f4.md) | 87 | `result-track:2840906e29420b532b7e28f4e0049db11fe0a8a3af582c54e2b7abd43522ecaf` |
| 8 | `theorem` | [mem_orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/mem-orderededges--2e52a6918110384acc7ac18e.md) | 94 | `result-track:2e52a6918110384acc7ac18ed66be1005b938237cdbab683aa901ff576b45048` |
| 9 | `theorem` | [edge_mem_orderedEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/edge-mem-orderededges--eb7c2506e930398c0e0e2e72.md) | 100 | `result-track:eb7c2506e930398c0e0e2e725865772bd76ff7cba53142eb0b0745c37252584a` |
| 10 | `theorem` | [orderedNodes_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderednodes-nodup--f69708709e7dc40d4f72e003.md) | 106 | `result-track:f69708709e7dc40d4f72e0036bc52adf5b9e1935d2c2bff49f5b01bcaea044d7` |
| 11 | `theorem` | [orderedEdges_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderededges-nodup--330ad1bba63a9fbdf8f72c13.md) | 111 | `result-track:330ad1bba63a9fbdf8f72c13daf25334568e73c140185481d8ff040329410659` |
| 12 | `theorem` | [orderedNodes_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderednodes-sorted--2377b4b7d17367e75e7918f0.md) | 116 | `result-track:2377b4b7d17367e75e7918f0eef64645758b1e79aff36f507f6170bd8ce66672` |
| 13 | `theorem` | [orderedEdges_sorted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCut/Variantc89c25c61e8e3dc93682dfa70b83608c6db4e3bae8b4f6c2ab30374de6f6592d.lean/declarations/orderededges-sorted--6541e431b7527d272dd195cb.md) | 123 | `result-track:6541e431b7527d272dd195cb9e5e6d5a5a68816ab93e059301808f9a50f5d211` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
