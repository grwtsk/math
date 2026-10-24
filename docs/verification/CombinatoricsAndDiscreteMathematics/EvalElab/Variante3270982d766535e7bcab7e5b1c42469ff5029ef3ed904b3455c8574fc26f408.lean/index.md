# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EvalElab.Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7179fc82574b38c8cd6a202e5855f9fa9a701e25",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7179fc82574b38c8cd6a202e5855f9fa9a701e25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasInstance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/declarations/hasinstance--5c83d75acefd0f5207b98c85.md) | 29 | `declaration-track:5c83d75acefd0f5207b98c856bff6a3d9b243a4a9cb18ddf69ed6fb267aae8d3` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/declarations/instance--887fe0dbe99ef2550348b4c2.md) | 34 | `declaration-track:887fe0dbe99ef2550348b4c2685193770709ca2d2d60ea6ddbefb8fceb1d2cb8` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/declarations/instance--ff82c1eae9243d53103a4d9c.md) | 36 | `declaration-track:ff82c1eae9243d53103a4d9cfd66e0c5d94d5a9e6b05df4b6797e414c723e65e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/declarations/instance--a015e781796ba7a983e130fb.md) | 38 | `declaration-track:a015e781796ba7a983e130fb0be9e2a40007ed139b39ad524dafcbdd5d38799c` |
| 5 | `instance` | [Finset.toExpr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EvalElab/Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408.lean/declarations/finset-toexpr--8067a4222bbec00bc38d48a7.md) | 43 | `declaration-track:8067a4222bbec00bc38d48a7a9a93baab756b94f4863831882104afc8d46f1af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
