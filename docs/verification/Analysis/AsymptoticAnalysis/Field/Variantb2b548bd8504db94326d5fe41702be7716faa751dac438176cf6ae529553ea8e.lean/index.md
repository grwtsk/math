# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Field.Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5aa4000e44f76afa42442801420ac658dd7fa06b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5aa4000e44f76afa42442801420ac658dd7fa06b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasProd.norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean/declarations/hasprod-norm--70f9f1bfbb867e3c9b828bde.md) | 29 | `result-track:70f9f1bfbb867e3c9b828bde045619ba62511c5ed3576d8e879b6533bcfa8d8e` |
| 2 | `theorem` | [Multipliable.norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean/declarations/multipliable-norm--455f4507f9302dcd2c95b777.md) | 33 | `result-track:455f4507f9302dcd2c95b77773a85f8b7b5c2bd5e956dac7451f79f365d21e7e` |
| 3 | `theorem` | [Multipliable.norm_tprod](../../../../../mathematics/Analysis/AsymptoticAnalysis/Field/Variantb2b548bd8504db94326d5fe41702be7716faa751dac438176cf6ae529553ea8e.lean/declarations/multipliable-norm-tprod--a6fa30bbae43f0c1f218dc17.md) | 36 | `result-track:a6fa30bbae43f0c1f218dc17b6006ba3aead6d7b6c6e887e899a397cc5536257` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
