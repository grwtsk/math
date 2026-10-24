# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Graph.Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "744b681e4f1c738b8edf39ca7a83772b2a9b3c50",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `744b681e4f1c738b8edf39ca7a83772b2a9b3c50`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Satisfiability` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [graphRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/graphrel--c0801d17aedaed4bb4444481.md) | 48 | `declaration-track:c0801d17aedaed4bb444448112dab2fb9de032a0d57d6cb462ac46da2233072f` |
| 2 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/graph--b5e9e134e38cc9edccf7ba2f.md) | 53 | `declaration-track:b5e9e134e38cc9edccf7ba2f227cc284fb07f255944bebd2d80ce4f86cb98b33` |
| 3 | `abbrev` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/adj--9868a57f1e47e293656520ac.md) | 57 | `declaration-track:9868a57f1e47e293656520ac108321d5be637ae13bdfd5781792c40695748a1a` |
| 4 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.SimpleGraph.structure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-graphrel-var--24d957973ffe7e00355b5336.md) | 60 | `declaration-track:24d957973ffe7e00355b5336b2faf90f69cca4242a0c7a2d67738a5e40a7d543` |
| 5 | `instance` | [instSubsingleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/instsubsingleton--aa01f85415bc24d06f96b43d.md) | 65 | `declaration-track:aa01f85415bc24d06f96b43d1a58ef805af8e4787679a00f2035ebbbc7d00426` |
| 6 | `def` | [Theory.simpleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/theory-simplegraph--516a84cabe017f7ead2568dc.md) | 71 | `declaration-track:516a84cabe017f7ead2568dc8e21f15ad6d8a9eea9e950bfb9335798fb0759b9` |
| 7 | `theorem` | [Theory.simpleGraph_model_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/theory-simplegraph-model-iff--42bac8b4ee8400041e35d9c5.md) | 75 | `result-track:42bac8b4ee8400041e35d9c59f5cae2d894f8aa9587cf0661f1576b95f9d2d04` |
| 8 | `instance` | [simpleGraph_model](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/simplegraph-model--4169e9b6092a371a1f368da7.md) | 81 | `declaration-track:4169e9b6092a371a1f368da772eea3202844048a470de9f2d1c01539f1fad6cd` |
| 9 | `def` | [simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/simplegraphofstructure--d6b1b5068eaa34e28eabc4c3.md) | 90 | `declaration-track:d6b1b5068eaa34e28eabc4c3d7a7845ab356a3656dbec87f897062e3be526c1f` |
| 10 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.GraphRel.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.SimpleGraph.simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-graphrel-var--7335e2adadbc80249783b1cb.md) | 102 | `result-track:7335e2adadbc80249783b1cbc58aced15a19d346893ab67338609c0078b98fec` |
| 11 | `theorem` | [structure_simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/structure-simplegraphofstructure--0d5afadc3c308f14cb676487.md) | 108 | `result-track:0d5afadc3c308f14cb6764876ed9697c1f0580bdf4cd2e13f2ae35d13c4d76db` |
| 12 | `theorem` | [Theory.simpleGraph_isSatisfiable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variantc5b8b90313c0c85bf6fc0ba817100717759eaef459c44c48e0b9720faaf8dc1c.lean/declarations/theory-simplegraph-issatisfiable--c6f6e1b7584ddbb10ef78902.md) | 121 | `result-track:c6f6e1b7584ddbb10ef78902dbbe0b0956c0e881b3e058887a8284e08107661b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
