# Verification target: GRWTSK.Topology.GeneralTopology.ControlledClosure.Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62167b82502170ca8d1f02607589ec6cdedaa808",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62167b82502170ca8d1f02607589ec6cdedaa808`.

Source path: `GRWTSK/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [controlled_closure_of_complete](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/declarations/controlled-closure-of-complete--daa96eb231c9e37ce69fae0a.md) | 30 | `result-track:daa96eb231c9e37ce69fae0a3cf4cc0d522b144005b0b90badfa21b17db27298` |
| 2 | `theorem` | [controlled_closure_range_of_complete](../../../../../mathematics/Topology/GeneralTopology/ControlledClosure/Variantdc649870aceb0f62481cea658c11ccfac9bf3ba4eaa2caaf99e0264c5c4316bf.lean/declarations/controlled-closure-range-of-complete--115da8d56cb1a1ef6521fc88.md) | 113 | `result-track:115da8d56cb1a1ef6521fc88dd142546d41ecfd822d1341d4bb66b63da577218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
