# Verification target: GRWTSK.Analysis.LinearAlgebra.FourFieldArchimedeanNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d25b3131dae04a7c08208227357180db777462ab",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d25b3131dae04a7c08208227357180db777462ab`.

Source path: `GRWTSK/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LinearAlgebra/FourFieldArchimedeanNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxAbs](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/maxabs--3335887c8d5a84c4ebc4d39f.md) | 29 | `declaration-track:3335887c8d5a84c4ebc4d39f168b5122603bcd919d2003b2dce9404cec39dc7f` |
| 2 | `theorem` | [maxAbs_le_iff](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/maxabs-le-iff--bd07b025485d8c6ed17681dd.md) | 32 | `result-track:bd07b025485d8c6ed17681dd676382403c705020a9098e4b0b99902af9eea29c` |
| 3 | `theorem` | [entry_le](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/entry-le--e0f8b40c0e9b0512c9e0ca05.md) | 36 | `result-track:e0f8b40c0e9b0512c9e0ca05b61d0cf1e67c9419a617c869505ed844160f3a71` |
| 4 | `theorem` | [maxAbs_nonneg](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/maxabs-nonneg--409ec45539b7e35d4368129a.md) | 39 | `result-track:409ec45539b7e35d4368129a0cd960d693955d113adbbbb0074a286ca085b6b2` |
| 5 | `theorem` | [maxAbs_ones](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/maxabs-ones--36097fd16d8fd359e43240b7.md) | 43 | `result-track:36097fd16d8fd359e43240b78cfac15438b9ba3ffe4b98e26c19346e60d7af5f` |
| 6 | `def` | [forwardBlock](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/forwardblock--d072dc41d71f877340b5973a.md) | 49 | `declaration-track:d072dc41d71f877340b5973accf5bae86ffac08b82c0f9b7033e26dd3b3a448c` |
| 7 | `def` | [inverseBlock](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/inverseblock--788d607b7cafb1db07c0e166.md) | 53 | `declaration-track:788d607b7cafb1db07c0e1665c8881035053ccf3ff114778ce5e3510cbf6aff3` |
| 8 | `theorem` | [chart_row_bound](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/chart-row-bound--15565e654aac4b322287ef5e.md) | 56 | `result-track:15565e654aac4b322287ef5e3f0466fcf0d3d009cc6dc85667e1e628594d10a0` |
| 9 | `theorem` | [forwardBlock_bound](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/forwardblock-bound--b4df5debdb94d626e5044699.md) | 78 | `result-track:b4df5debdb94d626e504469935bb6105e0a5a1b0327136aa2602e17dd6b30626` |
| 10 | `theorem` | [inverseBlock_bound](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/inverseblock-bound--ffa8bf249061827398764d3d.md) | 91 | `result-track:ffa8bf249061827398764d3d9ecbaf38a267a05ac2749d505144f22eb560922e` |
| 11 | `theorem` | [integer_abs_one_le](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/integer-abs-one-le--e627fc084be471b916331530.md) | 122 | `result-track:e627fc084be471b91633153033e5d3224025c4204a53ccb801da41f77dfcb3b1` |
| 12 | `theorem` | [abs_cast_le_of_dvd](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/abs-cast-le-of-dvd--4d5131729f29aa8e58af5053.md) | 129 | `result-track:4d5131729f29aa8e58af5053211c0cd1eddb529e43d6aacf72c6aa9724474acc` |
| 13 | `theorem` | [raw_chart_not_four](../../../../mathematics/Algebra/LinearAlgebra/FourFieldArchimedeanNorm.lean/declarations/raw-chart-not-four--fe84a8b28380d1f81bb3d668.md) | 138 | `result-track:fe84a8b28380d1f81bb3d668e19c34a57c63014303a31b3c58140c4090f29a82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
