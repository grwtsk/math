# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinCases.Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90eb22e98cc5f72849782c0bc893341a9c386a54",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90eb22e98cc5f72849782c0bc893341a9c386a54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getMemType](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/declarations/getmemtype--f065409e093751f80b1ba634.md) | 34 | `declaration-track:f065409e093751f80b1ba634bc5a1663f1d87287b7c3c01c4c920a153a5b2a87` |
| 2 | `def` | [unfoldCases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/declarations/unfoldcases--860ee247c4c995a7ea2fe287.md) | 56 | `declaration-track:860ee247c4c995a7ea2fe2873ff8daf6f5a2b25799f76d5535eafd127de59f01` |
| 3 | `def` | [finCasesAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/declarations/fincasesat--8b555cdc222f873d0156c43f.md) | 67 | `declaration-track:8b555cdc222f873d0156c43fc98fcbd36275ee006257e712d2752182ae087e1c` |
| 4 | `syntax` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/declarations/syntax--14e74ae80784b2d412220b1d.md) | 93 | `declaration-track:14e74ae80784b2d412220b1dd298745a860c6aaa919a4cb1ddf7bc117fd057e3` |
| 5 | `elab_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinCases/Varianta5e783c92e5ae5432e24d31c8faa6312e116126a015edbd6e01d154c1b8e1492.lean/declarations/elab-rules--bd1bb3fdc5b9462b3305914c.md) | 132 | `declaration-track:bd1bb3fdc5b9462b3305914c8835e09af514c776da2460a8b1055990114e03f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
