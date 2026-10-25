# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CurvatureInterface.Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0e5a30889bd383ee864fe96f1f57087e88018e6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0e5a30889bd383ee864fe96f1f57087e88018e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CurvatureSemantics](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/curvaturesemantics--3c63bccf2ee7ddb28973102a.md) | 21 | `declaration-track:3c63bccf2ee7ddb28973102abe4bdd25d11e8202bae63f72e1b3f0060c3eea1d` |
| 2 | `def` | [IsDiscrete](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/isdiscrete--7a7375166f2a22cd2bfef95f.md) | 31 | `declaration-track:7a7375166f2a22cd2bfef95f72530d3e80e4098ee1e34ad6c13ff952bc71d23e` |
| 3 | `theorem` | [isDiscrete_ne_smoothManifold](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/isdiscrete-ne-smoothmanifold--9948b88b0bf83af7e50e72ec.md) | 35 | `result-track:9948b88b0bf83af7e50e72ec07c05236c3c991d562ecc01858efa7572ffdefa1` |
| 4 | `structure` | [DiscreteCurvatureModel](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/discretecurvaturemodel--a5bef86b8f829fdfcb27c6b8.md) | 51 | `declaration-track:a5bef86b8f829fdfcb27c6b8000ce51a865d9cf04a7fdb9ed23b204b3b1b888d` |
| 5 | `theorem` | [semantics_ne_smoothManifold](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/semantics-ne-smoothmanifold--ce1b902f916463df3982da53.md) | 76 | `result-track:ce1b902f916463df3982da53e04547418b496f3a6f08f14630faefeb6a922fe3` |
| 6 | `theorem` | [weight_eq_zero_of_not_adjacent](../../../../mathematics/FoundationsLogicAndTypeTheory/CurvatureInterface/Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c.lean/declarations/weight-eq-zero-of-not-adjacent--eb817a7983fd3015858fa14b.md) | 83 | `result-track:eb817a7983fd3015858fa14b8c85b04fac9ed9ebe1b1fa9f8b0b707bfcefeaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
