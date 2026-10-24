# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39f7df8b2704d5a5e1dc995eabe9ffc2ec03407c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39f7df8b2704d5a5e1dc995eabe9ffc2ec03407c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.finite_subsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean/declarations/finite-finite-subsets--a0fd9d89c421b2af0c205a1d.md) | 44 | `result-track:a0fd9d89c421b2af0c205a1d1aefa3e2241bf528b156849bde5b6a1b0dbea779` |
| 2 | `theorem` | [Finite.powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5.lean/declarations/finite-powerset--bd85b0e14c1ff53de718a1be.md) | 50 | `result-track:bd85b0e14c1ff53de718a1be0d8f1d3a81a8248b611821cff8ea4f698b55a603` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
