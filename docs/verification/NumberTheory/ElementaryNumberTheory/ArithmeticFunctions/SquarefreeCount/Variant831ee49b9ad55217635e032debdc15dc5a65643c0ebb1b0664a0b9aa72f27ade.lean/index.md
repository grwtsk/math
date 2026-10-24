# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SquarefreeCount.Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 10; external provider; requires a separately pinned dependency.
- `scratch.mertens.CoprimeCount` — import line 11; external provider; requires a separately pinned dependency.
- `scratch.mertens.ReciprocalSquareTail` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfFactorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/halffactorization--f1f001d7301a54ed0eeb6b9e.md) | 24 | `declaration-track:f1f001d7301a54ed0eeb6b9e47c0e4f44d6e241b8932a5671a97980182cb6aa9` |
| 2 | `def` | [squareDivisorRoot](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squaredivisorroot--8fcc1e227f51c94ee45ecac8.md) | 27 | `declaration-track:8fcc1e227f51c94ee45ecac8ec380fd4b004298cc56e5a2702cea350670a596d` |
| 3 | `theorem` | [halfFactorization_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/halffactorization-le--018fde174fbd865cdfdc6ab0.md) | 29 | `result-track:018fde174fbd865cdfdc6ab057a57a36c807b00ed82b763324da788c8210a540` |
| 4 | `theorem` | [squareDivisorRoot_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squaredivisorroot-ne-zero--c5d04cb003f7c8dc838d4f2b.md) | 33 | `result-track:c5d04cb003f7c8dc838d4f2b17732cd548faac48a0c6b14ad6958033ff3f7c69` |
| 5 | `theorem` | [squareDivisorRoot_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squaredivisorroot-factorization--759d8f0d66ef8d6d50e992d3.md) | 40 | `result-track:759d8f0d66ef8d6d50e992d3feebf23a1718cecef658e28a5d645f925801290c` |
| 6 | `theorem` | [square_dvd_iff_dvd_root](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/square-dvd-iff-dvd-root--e28178aada9e17a834ef978c.md) | 44 | `result-track:e28178aada9e17a834ef978c447290d08ecfbef6e157178805a226645d9d27d8` |
| 7 | `theorem` | [root_eq_one_iff_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/root-eq-one-iff-squarefree--357c65e024335222b5f97818.md) | 56 | `result-track:357c65e024335222b5f9781825356f13a840b85c0bf6da50758df21bdf750a1e` |
| 8 | `theorem` | [squareDivisors_eq_root_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squaredivisors-eq-root-divisors--2274bd3ad72f3c9248a58503.md) | 68 | `result-track:2274bd3ad72f3c9248a58503dec584f23213f4d5c46735a5d5beb86944767d3e` |
| 9 | `theorem` | [sum_moebius_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/sum-moebius-divisors--a7e25524b59896c20fe95af4.md) | 79 | `result-track:a7e25524b59896c20fe95af4f3cb81111a60c59ad5e87c40af09d8ab335e143b` |
| 10 | `theorem` | [moebius_square_eq_sum_squareDivisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/moebius-square-eq-sum-squaredivisors--58457ffcdf82d2aad58d6053.md) | 86 | `result-track:58457ffcdf82d2aad58d605341952bb6e96cd064df04f4623e733843050215c7` |
| 11 | `theorem` | [squareDivisors_eq_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squaredivisors-eq-icc--461644c8845668c6febcf0ac.md) | 94 | `result-track:461644c8845668c6febcf0ac7c40f38a0c5755226b876baf123114a6a78ef19f` |
| 12 | `theorem` | [moebius_square_eq_sum_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/moebius-square-eq-sum-icc--1ef3b245d2544998fde84584.md) | 106 | `result-track:1ef3b245d2544998fde8458421ade80b6f1c151dd34dcd6a987f757bea6da710` |
| 13 | `theorem` | [coprime_multiples_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/coprime-multiples-card--e611513d7b25aa0781d79b12.md) | 115 | `result-track:e611513d7b25aa0781d79b128ccd174a279c5221c3fc0dc1e46702ad888c02d9` |
| 14 | `def` | [squarefreeCoprimeCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squarefreecoprimecount--55cc03548280341106e475fa.md) | 143 | `declaration-track:55cc03548280341106e475fa2d75629aa5bcc7a67ca1d83a824fb8ce711561c5` |
| 15 | `theorem` | [coprime_multiples_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/coprime-multiples-sum--8885fbac8cdd6cf5481d9e29.md) | 147 | `result-track:8885fbac8cdd6cf5481d9e29edfe395f44eb22a3cfdce57a408c8b778884bcf1` |
| 16 | `theorem` | [squarefreeCoprimeCount_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squarefreecoprimecount-eq--25ac749da07e18ff53f82964.md) | 177 | `result-track:25ac749da07e18ff53f8296492e5b573d71a44aa724638a4e123e962fc0c15bd` |
| 17 | `theorem` | [coprimeCount_div_error](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/coprimecount-div-error--9fac23bac4f55e562aff633c.md) | 207 | `result-track:9fac23bac4f55e562aff633c7698eb25677c31943a0edbe6a228aff277b981d6` |
| 18 | `def` | [finiteSquarefreeDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/finitesquarefreedensity--bb5e1a14ecf56aed2fcab150.md) | 237 | `declaration-track:bb5e1a14ecf56aed2fcab150f2ed2ac6c4efd376a1b013872e17b720afb8bfff` |
| 19 | `theorem` | [squarefreeCoprimeCount_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/squarefreecoprimecount-error-le--d0fe0ea1c319e7b5c97e0eda.md) | 241 | `result-track:d0fe0ea1c319e7b5c97e0eda18f8f421293d271f3c1d8ebfa0348f0c4a01bd8d` |
| 20 | `theorem` | [finiteSquarefreeDensity_difference_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/finitesquarefreedensity-difference-le--e10301d5da291719f0b233d9.md) | 281 | `result-track:e10301d5da291719f0b233d9f5fe9e200c41f14d3b9f8c5da444d7cac596ce60` |
| 21 | `theorem` | [fixedDensity_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/declarations/fixeddensity-error-le--aa9b9f12b157715aecb5b6e8.md) | 313 | `result-track:aa9b9f12b157715aecb5b6e8697388666ee9f72d8d88ca612a9a94214f08108f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
