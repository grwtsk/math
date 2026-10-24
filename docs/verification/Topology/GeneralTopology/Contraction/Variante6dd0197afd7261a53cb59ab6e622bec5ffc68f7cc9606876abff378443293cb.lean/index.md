# Verification target: GRWTSK.Topology.GeneralTopology.Contraction.Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bcfe10202f567d69fb256600ba3f4a65e78725f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bcfe10202f567d69fb256600ba3f4a65e78725f`.

Source path: `GRWTSK/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.RootFinding.MVTBounds` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Bisection` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [newton_contraction_has_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean/declarations/newton-contraction-has-root--7b3a53498df37c3e178fe0ed.md) | 39 | `result-track:7b3a53498df37c3e178fe0edbc31b7cb5c393eff4276c51202b3df323282262d` |
| 2 | `theorem` | [newton_contraction_unique_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean/declarations/newton-contraction-unique-root--f94cf801f1ed1388a9031ed8.md) | 377 | `result-track:f94cf801f1ed1388a9031ed868be1f39c7bf2b10817ead4c095fd2dc53019d3d` |
| 3 | `theorem` | [newtonIntervalGo_preserves_root](../../../../../mathematics/Topology/GeneralTopology/Contraction/Variante6dd0197afd7261a53cb59ab6e622bec5ffc68f7cc9606876abff378443293cb.lean/declarations/newtonintervalgo-preserves-root--cbddff219dddeb8af8e45ce6.md) | 408 | `result-track:cbddff219dddeb8af8e45ce649d89966f49b70a11c81d801f9d712d570346f2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
