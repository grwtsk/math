# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Extension.Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35c7c9830130452806e29df4c0d80df743245199",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35c7c9830130452806e29df4c0d80df743245199`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Monotone` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonotoneOn.exists_monotone_extension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/declarations/monotoneon-exists-monotone-extension--8af7e2612a7a6717dfd572f9.md) | 23 | `result-track:8af7e2612a7a6717dfd572f9063356d9b53378c11bb34384bc2a31f1589d0a80` |
| 2 | `theorem` | [AntitoneOn.exists_antitone_extension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant80ed0579ed1b80daf1be26526651b58a7f519b7ddf5f83ed1e893f3a8c09126d.lean/declarations/antitoneon-exists-antitone-extension--46bd28301a578839db4a6ce0.md) | 50 | `result-track:46bd28301a578839db4a6ce060e3f80624853dc10e66a9f7ba770bc19ed7e764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
