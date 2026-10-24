# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1da7eea72c1f403696d2c47dbedf72c31317d8c0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1da7eea72c1f403696d2c47dbedf72c31317d8c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/declarations/keys--97687cb88f154e331bf8ab11.md) | 32 | `declaration-track:97687cb88f154e331bf8ab11ff87c824fa46d6180781146c5903290230528759` |
| 2 | `def` | [values](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/declarations/values--d34da0860a490999a6358e80.md) | 36 | `declaration-track:d34da0860a490999a6358e80a44fd07fb7910e5adcc3a7ce7e87e7023e87d3c2` |
| 3 | `def` | [consVal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/declarations/consval--31fb1e5cb49950cd83d1c0af.md) | 40 | `declaration-track:31fb1e5cb49950cd83d1c0af2a7dd698ebffef34f09f884bce70cae5a958070f` |
| 4 | `def` | [insertList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HashMap/Variant37bd47d140142e2b1fcda46d664a6af7c6326f285390c4068c9d9a44d4eed94a.lean/declarations/insertlist--4a162cf08921eb34d8f7fa9a.md) | 50 | `declaration-track:4a162cf08921eb34d8f7fa9ae4474687564026638019a8a3bfdd45691b4a04c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
