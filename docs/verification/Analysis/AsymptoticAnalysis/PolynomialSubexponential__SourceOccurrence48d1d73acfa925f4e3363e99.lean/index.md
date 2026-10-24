# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PolynomialSubexponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PolynomialSubexponential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PolynomialSubexponential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PolynomialSubexponential.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SubexponentialUpper](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/subexponentialupper--6b5321efb9b5eee5ab1965ce.md) | 24 | `declaration-track:6b5321efb9b5eee5ab1965cefd0948710ed9586940119d0822643d127e247eaa` |
| 2 | `theorem` | [pow_le_factorial_mul_exp](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/pow-le-factorial-mul-exp--867f1e47b2bab052efde8861.md) | 29 | `result-track:867f1e47b2bab052efde8861b744388d9799a0118af7e5eb41e3b8445986d854` |
| 3 | `theorem` | [shifted_rpow_le_exponential](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/shifted-rpow-le-exponential--360f8f5d20876d69d13e50e7.md) | 41 | `result-track:360f8f5d20876d69d13e50e7a616525cc6f613bf408d517b7650c328156c4a31` |
| 4 | `theorem` | [subexponentialUpper_of_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/subexponentialupper-of-polynomial--519197dde4e44ce877de17e0.md) | 55 | `result-track:519197dde4e44ce877de17e00bd221fe0638c094bc08f3df75b16ebe3dc8cf5c` |
| 5 | `theorem` | [SubexponentialUpper.mono](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/subexponentialupper-mono--58b16ac164fd86110bbbe340.md) | 66 | `result-track:58b16ac164fd86110bbbe34042451d12b9275c030be5cad099b6c251fb94dd7a` |
| 6 | `theorem` | [SubexponentialUpper.add](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/subexponentialupper-add--a5cf2a36e67f7521ac5e3e47.md) | 72 | `result-track:a5cf2a36e67f7521ac5e3e47b8ae8ce7c7007880cbdf20e02f333c8be383da5c` |
| 7 | `theorem` | [SubexponentialUpper.const_mul](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence48d1d73acfa925f4e3363e99.lean/declarations/subexponentialupper-const-mul--0959e2c4b45df6b22160ce26.md) | 81 | `result-track:0959e2c4b45df6b22160ce26ea1048957814d191750f656ccc244665b2c47a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
