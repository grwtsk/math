# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EvalElab.Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c54aa0db83f5ad0022349edba24c25b168e3501",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c54aa0db83f5ad0022349edba24c25b168e3501`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasInstance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/declarations/hasinstance--4ce361018cedea5ab12df99a.md) | 37 | `declaration-track:4ce361018cedea5ab12df99a2abdc7ee77bd222a3f08667dbc72807df9a23399` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/declarations/instance--017d2fbe9cf0b63f731d5bd7.md) | 42 | `declaration-track:017d2fbe9cf0b63f731d5bd736755a99836774178a7cd143257e8d4f01e41462` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/declarations/instance--9ec2bb2d47df5ad0a9f905a4.md) | 44 | `declaration-track:9ec2bb2d47df5ad0a9f905a4db31c26f83d0034ac3afaed9ba741294d5918c8e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/declarations/instance--b41016cee5df7d07ff67ddb8.md) | 46 | `declaration-track:b41016cee5df7d07ff67ddb8f129f3e9ca1beb35202a4de99651de8dc43bf12e` |
| 5 | `instance` | [Finset.toExpr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variant4b499a5c71d6c41314d43e26d0f546c054e7f38fd384c4655165682de554222a.lean/declarations/finset-toexpr--67cc0091a619878bf864cde9.md) | 51 | `declaration-track:67cc0091a619878bf864cde9d6f86de87cabc03078d14c9a11f905d0936e2fdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
