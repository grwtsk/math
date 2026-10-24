# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Potential.Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "000cb257b51a43d9abe9f87e46f624e8750486de",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `000cb257b51a43d9abe9f87e46f624e8750486de`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cubicPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/declarations/cubicpotential--3636dc3f998cccd575f8aadf.md) | 26 | `declaration-track:3636dc3f998cccd575f8aadf795d839cef3be7e89bbd3a4041142423d0ad007d` |
| 2 | `theorem` | [eval_cubicPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/declarations/eval-cubicpotential--bb80b833e82b06388097a0dc.md) | 32 | `result-track:bb80b833e82b06388097a0dc786741adbcdc9750e36ba077b25c435588057ddc` |
| 3 | `theorem` | [derivative_cubicPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/declarations/derivative-cubicpotential--80abf4270ee4e0a6e712dcbe.md) | 41 | `result-track:80abf4270ee4e0a6e712dcbeb24ea90553e4037082b6b286a7d4d972f25d915a` |
| 4 | `theorem` | [hasDerivAt_cubicPotential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Potential/Variant1ba667fbdae8bb03ec980f1b744dfc6c38930d30348fc8caf8058f6a65013d4d.lean/declarations/hasderivat-cubicpotential--746a34337ff692503e449cb0.md) | 53 | `result-track:746a34337ff692503e449cb0c4a8ec6cffb50cd4ad0904c702be6e36eac9e983` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
