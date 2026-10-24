# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Cube.Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f4a83f70381c33cf837afe9d67cf49ece697077",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Cube/Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Cube/Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Cube/Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f4a83f70381c33cf837afe9d67cf49ece697077`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Cube/Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Cube/Variant95e03cf48be30667ed3892c8ba4d3c112ac7e1299f56aaa482a952ac3c909213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Hypercube` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Hypercube.Gray` — import line 8; external provider; requires a separately pinned dependency.
- `Boolean.Cube.TruthTable` — import line 9; external provider; requires a separately pinned dependency.
- `Boolean.Cube.KarnaughMap` — import line 10; external provider; requires a separately pinned dependency.
- `Boolean.Cube.KarnaughMap.Traversal` — import line 11; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Fourier` — import line 12; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier` — import line 13; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Orthogonality` — import line 14; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork` — import line 15; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork.Dynamics` — import line 16; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork.Asynchronous` — import line 17; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork.Attractor` — import line 18; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork.Stochastic` — import line 19; external provider; requires a separately pinned dependency.
- `Boolean.Cube.BooleanNetwork.Feedback` — import line 20; external provider; requires a separately pinned dependency.
- `Boolean.Cube.Noise` — import line 21; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Energy` — import line 22; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Noise` — import line 23; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Analysis` — import line 24; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Relaxation` — import line 25; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Inequalities` — import line 26; external provider; requires a separately pinned dependency.
- `Boolean.Cube.WalshFourier.Dirichlet` — import line 27; external provider; requires a separately pinned dependency.
- `Boolean.Cube.PermutationFrequencyFactorization` — import line 28; external provider; requires a separately pinned dependency.
- `Boolean.Cube.DirectionalChain` — import line 29; external provider; requires a separately pinned dependency.
- `Boolean.Cube.NullBalancedEdgeCircle` — import line 30; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation` — import line 31; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation.Tree` — import line 32; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation.Continuous` — import line 33; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ProjectionDepth` — import line 34; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ToyStripBlend` — import line 35; external provider; requires a separately pinned dependency.
- `Boolean.Cube.SelmerFlatnessBoundary` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
