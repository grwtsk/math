# Verification target: GRWTSK.Analysis.MeasureTheory.AddChar.Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d2852beabfe1e01110c2f11a963227233cdb2e5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d2852beabfe1e01110c2f11a963227233cdb2e5`.

Source path: `GRWTSK/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.AddChar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean/declarations/instmeasurablespace--1c54d8fa7bd1ca42b1508708.md) | 24 | `declaration-track:1c54d8fa7bd1ca42b1508708f8c912d4358c94044533f74a4b5b5ca75db0e07f` |
| 2 | `instance` | [instDiscreteMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/AddChar/Variant764447450c4739d58278931f7a65d8d092de3e52221a0ed1f6af551313b6798c.lean/declarations/instdiscretemeasurablespace--d3eb371b8d0c1fb6a9e37d86.md) | 28 | `declaration-track:d3eb371b8d0c1fb6a9e37d8620ab0b1d7494d21c0e1f9a213b498ee88e0a9f75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
