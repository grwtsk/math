# Verification target: GRWTSK.NumberTheory.FrobeniusNumber.Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a45c5c2b15bd3a8dfa558d5dac809eb2fc0964a5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a45c5c2b15bd3a8dfa558d5dac809eb2fc0964a5`.

Source path: `GRWTSK/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.ModEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FrobeniusNumber](../../../../mathematics/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/declarations/frobeniusnumber--e7db24b02f434e3375327f6a.md) | 56 | `declaration-track:e7db24b02f434e3375327f6ac040f74bcfd6267c149597f4f066ff9efd3ac457` |
| 2 | `theorem` | [frobeniusNumber_pair](../../../../mathematics/NumberTheory/FrobeniusNumber/Variant42c20bb7a31853eddf8ef7e43d79ecd4d3271ffda9e5f230c290a5be01641206.lean/declarations/frobeniusnumber-pair--4f0b41f0a13c35213d37b83e.md) | 64 | `result-track:4f0b41f0a13c35213d37b83e81ef1bbeff2a6f602eae3610c253b38e1710fece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
