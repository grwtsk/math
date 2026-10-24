# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f750c6a807d68df6d142af86e0c7d5864223f3e3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f750c6a807d68df6d142af86e0c7d5864223f3e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/declarations/antidiagonal--f572acb52f5dc7c97050aac0.md) | 36 | `declaration-track:f572acb52f5dc7c97050aac01891398c4b3b2a5051bb7bf3cdd69e8258600e34` |
| 2 | `instance` | [instHasAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/declarations/insthasantidiagonal--2165d71b9f5543dfcc14a49b.md) | 42 | `declaration-track:2165d71b9f5543dfcc14a49bf379e6de48b4b45845af789165de73496b48cf1c` |
| 3 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/declarations/antidiagonal-zero--3478702ab8f2efa16d2078a2.md) | 50 | `result-track:3478702ab8f2efa16d2078a23beff9d7f0910eca8440af2c8debd83d078e1886` |
| 4 | `theorem` | [prod_antidiagonal_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/declarations/prod-antidiagonal-swap--1d7ca371d75a37a640e66f87.md) | 53 | `result-track:1d7ca371d75a37a640e66f87edc55e4706a18de785d12cc7472c5381da7bcbf2` |
| 5 | `theorem` | [antidiagonal_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307.lean/declarations/antidiagonal-single--390e8947917fa122fef38847.md) | 59 | `result-track:390e8947917fa122fef38847750024dd884bcb651314d015c58c9e46899e95bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
