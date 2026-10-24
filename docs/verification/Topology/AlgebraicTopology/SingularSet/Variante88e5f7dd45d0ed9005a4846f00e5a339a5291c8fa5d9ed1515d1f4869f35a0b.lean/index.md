# Verification target: GRWTSK.Topology.AlgebraicTopology.SingularSet.Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e99fb0892c5d39c212f5be2cd878b1a628fa1b1c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e99fb0892c5d39c212f5be2cd878b1a628fa1b1c`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.TopologicalSimplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopCat.toSSet](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/declarations/topcat-tosset--b9cdf6162cfde0ab55b465d1.md) | 47 | `declaration-track:b9cdf6162cfde0ab55b465d1902a307fb46f0c6463cb64d28fa40ae7bab8c53b` |
| 2 | `def` | [SSet.toTop](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/declarations/sset-totop--4b77f75c60b931103ac382a4.md) | 54 | `declaration-track:4b77f75c60b931103ac382a4214f62a7dfa9b3c3e56145eccbaece92a0b1d816` |
| 3 | `def` | [sSetTopAdj](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/declarations/ssettopadj--49040b49f75de293d9f87db2.md) | 58 | `declaration-track:49040b49f75de293d9f87db2fe4392900bb9fca68babf701f68188569fcd92d0` |
| 4 | `def` | [SSet.toTopSimplex](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/declarations/sset-totopsimplex--5325dd79ffaebad6775af639.md) | 64 | `declaration-track:5325dd79ffaebad6775af639123fc8724a9aab576459ceb96e1e1c13cfcd0026` |
| 5 | `def` | [TopCat.toSSetIsoConst](../../../../../mathematics/Topology/AlgebraicTopology/SingularSet/Variante88e5f7dd45d0ed9005a4846f00e5a339a5291c8fa5d9ed1515d1f4869f35a0b.lean/declarations/topcat-tossetisoconst--dc81ca183f8af776e4a210eb.md) | 70 | `declaration-track:dc81ca183f8af776e4a210eb833a366b87b36b9bfc33a091205b5f313171cd74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
