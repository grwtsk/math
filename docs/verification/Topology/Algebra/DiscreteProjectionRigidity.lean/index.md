# Verification target: GRWTSK.Topology.Algebra.DiscreteProjectionRigidity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f70aa54dc4e4b6d7c02cc3b80fda3c46458f650",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Algebra/DiscreteProjectionRigidity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/index.md) · [Full source](../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f70aa54dc4e4b6d7c02cc3b80fda3c46458f650`.

Source path: `GRWTSK/Topology/Algebra/DiscreteProjectionRigidity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Algebra/DiscreteProjectionRigidity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.Algebra.DiscreteProjection`](../../../../mathematics/Topology/Algebra/DiscreteProjection.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [observation_eq](../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/declarations/observation-eq--eee033159ecde7f7526ee2d1.md) | 23 | `result-track:eee033159ecde7f7526ee2d1940cf9cf7b7c27a935eb9d556ba6f9b13671c29e` |
| 2 | `theorem` | [path_eq](../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/declarations/path-eq--d1a123c317078e50881421f1.md) | 35 | `result-track:d1a123c317078e50881421f1055260f7dd83530169f7bcca3b0a04b12443c144` |
| 3 | `theorem` | [not_continuous_of_observation_ne](../../../../mathematics/Topology/Algebra/DiscreteProjectionRigidity.lean/declarations/not-continuous-of-observation-ne--cecab582fa315d3ce09f8fff.md) | 45 | `result-track:cecab582fa315d3ce09f8fffdf96cf41cbcababb8c0f79c67aa7c05d341f4393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
