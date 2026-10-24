# Verification target: GRWTSK.Topology.Algebra.DiscreteProjection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94e525af3627b2b9198bba45598e56c26faf3fad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Algebra/DiscreteProjection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/index.md) · [Full source](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94e525af3627b2b9198bba45598e56c26faf3fad`.

Source path: `GRWTSK/Topology/Algebra/DiscreteProjection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Algebra/DiscreteProjection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [topology](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/topology--e4ad58f421a6b39f6a72e4c0.md) | 21 | `declaration-track:e4ad58f421a6b39f6a72e4c0bd0189e45392ef494f79a5234d04e5c94c8bbd99` |
| 2 | `theorem` | [projection_continuous](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/projection-continuous--23da5059d92e53600ac9309c.md) | 25 | `result-track:23da5059d92e53600ac9309c10b824fc80ef6fa0d132d6bc7a927a6b9671135e` |
| 3 | `theorem` | [continuous_into_iff](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/continuous-into-iff--3095986d7343178eb2b2fc7b.md) | 31 | `result-track:3095986d7343178eb2b2fc7bea2d12f530981de1588abd078e1b03b435129bc0` |
| 4 | `theorem` | [continuous_of_factor](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/continuous-of-factor--58bc7adf7d45ca5f059b798d.md) | 39 | `result-track:58bc7adf7d45ca5f059b798d30a9597a52d1298835cd824668855f8a638551fd` |
| 5 | `theorem` | [fiber_isOpen](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/fiber-isopen--94d76ea5b21d3e19916eff62.md) | 52 | `result-track:94d76ea5b21d3e19916eff62c10cea26f2411c593a37677e558950cd2bc1b60b` |
| 6 | `theorem` | [fiber_isClosed](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/fiber-isclosed--f0db9460c968d5f7056ba729.md) | 60 | `result-track:f0db9460c968d5f7056ba729b1d7be67f33c0ceda4abf5b792fb6276e7b233be` |
| 7 | `theorem` | [ring_structure](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/declarations/ring-structure--7167e2a1ba3972edf22880de.md) | 69 | `result-track:7167e2a1ba3972edf22880ded3d0d0ca0ec8860fd7e66d2625cce8fc4721e69f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
