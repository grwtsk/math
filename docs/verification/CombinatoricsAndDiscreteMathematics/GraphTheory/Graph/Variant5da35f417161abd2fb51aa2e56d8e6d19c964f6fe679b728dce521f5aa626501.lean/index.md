# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Graph.Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5dc2cd134c9e6c5f92f1a97c81228024240e275",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5dc2cd134c9e6c5f92f1a97c81228024240e275`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Satisfiability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [graphRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/graphrel--42c4585a45a992b7a64396bd.md) | 40 | `declaration-track:42c4585a45a992b7a64396bdf8e2e08f3e2450f8715373101fe39b8e43c719f6` |
| 2 | `def` | [graph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/graph--e7eafc6ab4b78cd1432427ef.md) | 45 | `declaration-track:e7eafc6ab4b78cd1432427ef7a64cb9a4ea0c6139e430a589a782ae68a60a9ed` |
| 3 | `abbrev` | [adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/adj--9a0b9168be24a5ab5811263b.md) | 49 | `declaration-track:9a0b9168be24a5ab5811263b265273e7ed130bbd75700d590cab275c236ffea0` |
| 4 | `def` | [_root_.SimpleGraph.structure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/root-simplegraph-structure--933caae3b9ec0f38793bf481.md) | 52 | `declaration-track:933caae3b9ec0f38793bf48144408999d9f4d377a57bdda98e0e9553a78af895` |
| 5 | `instance` | [instSubsingleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/instsubsingleton--67e2d180d71f5090096d2fc7.md) | 57 | `declaration-track:67e2d180d71f5090096d2fc7d00da32471e84dfa4d122e2dc1b8ffe43e8462a4` |
| 6 | `def` | [Theory.simpleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/theory-simplegraph--cda6bcf9fde1ebb0e6616a5b.md) | 63 | `declaration-track:cda6bcf9fde1ebb0e6616a5b56f5b0076b797792df77a167dba05e71281b4297` |
| 7 | `theorem` | [Theory.simpleGraph_model_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/theory-simplegraph-model-iff--11b92f0e246cca2e623a00df.md) | 67 | `result-track:11b92f0e246cca2e623a00dff19d4432192464649e5451379773f2ceb7da282d` |
| 8 | `instance` | [simpleGraph_model](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/simplegraph-model--96a8e5ef6d3b5c2fa6926796.md) | 73 | `declaration-track:96a8e5ef6d3b5c2fa69267965fe0ddb0ee44200c1bd932a1c54a8630d6b20afd` |
| 9 | `def` | [simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/simplegraphofstructure--63df405845d263a92a837381.md) | 82 | `declaration-track:63df405845d263a92a83738146b3aa30c76c0b0398858b3bc15577ec4106e70b` |
| 10 | `theorem` | [_root_.SimpleGraph.simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/root-simplegraph-simplegraphofstructure--0b646acb56598e015d60d63c.md) | 94 | `result-track:0b646acb56598e015d60d63c435aee1a2da25bde07c4f28157273af770661ef9` |
| 11 | `theorem` | [structure_simpleGraphOfStructure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/structure-simplegraphofstructure--693cee19c06a84ddc3b1cc12.md) | 100 | `result-track:693cee19c06a84ddc3b1cc129371bacae63bf61deb1f28134c948d3fe57269bb` |
| 12 | `theorem` | [Theory.simpleGraph_isSatisfiable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Graph/Variant5da35f417161abd2fb51aa2e56d8e6d19c964f6fe679b728dce521f5aa626501.lean/declarations/theory-simplegraph-issatisfiable--2993f57612b05c0183fac98c.md) | 113 | `result-track:2993f57612b05c0183fac98c74648a66cfd89669dde087f189a776dd8d6cb5b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
