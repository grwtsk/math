# Verification target: GRWTSK.Analysis.Asymptotics.PolynomialSubexponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c`.

Source path: `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/PolynomialSubexponential.lean.json)

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
| 1 | `def` | [SubexponentialUpper](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/subexponentialupper--812394d89b983d1698bd1e2e.md) | 24 | `declaration-track:812394d89b983d1698bd1e2eced1eff00610c5ba2f7d9f6fd5b10a94693bb68e` |
| 2 | `theorem` | [pow_le_factorial_mul_exp](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/pow-le-factorial-mul-exp--a3b3d2310ecc19195d62b0da.md) | 29 | `result-track:a3b3d2310ecc19195d62b0dad06e9384c707241817cd6555bd622285a49cec30` |
| 3 | `theorem` | [shifted_rpow_le_exponential](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/shifted-rpow-le-exponential--34c0f60e05eff1ceecbdab90.md) | 41 | `result-track:34c0f60e05eff1ceecbdab905fbc1ef269ec6f51f87af76d45053db68c7d9b24` |
| 4 | `theorem` | [subexponentialUpper_of_polynomial](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/subexponentialupper-of-polynomial--9a2e9c245ef70b014f1a5b6b.md) | 55 | `result-track:9a2e9c245ef70b014f1a5b6b797fadf69964ccc327313dfe35b9c3d9319f034e` |
| 5 | `theorem` | [SubexponentialUpper.mono](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/subexponentialupper-mono--64828d24876b5907d63820db.md) | 66 | `result-track:64828d24876b5907d63820dbaf7e2eac9c6c6324be31b3b8dee616f4c7563155` |
| 6 | `theorem` | [SubexponentialUpper.add](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/subexponentialupper-add--92577988bcef7a66acbeb55f.md) | 72 | `result-track:92577988bcef7a66acbeb55f67d97aee541d5cb5689ed8a24aa929fabcea9d90` |
| 7 | `theorem` | [SubexponentialUpper.const_mul](../../../../mathematics/Analysis/AsymptoticAnalysis/PolynomialSubexponential__SourceOccurrence532aa00b94bc79391b7580d5.lean/declarations/subexponentialupper-const-mul--3cfb50b03358a65a048d3f78.md) | 81 | `result-track:3cfb50b03358a65a048d3f789ff3338a1541900ef7fe4bd7c01555543befe3cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
