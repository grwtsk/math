# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeCount.Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f8dd8dc7e4bc54d6a738d693dcb40e932c7846d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f8dd8dc7e4bc54d6a738d693dcb40e932c7846d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Real.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimecount--5dc9db8c8544af10d75af7b7.md) | 27 | `declaration-track:5dc9db8c8544af10d75af7b7d223fe2f86497d9b14b17f5cac62ca2dccf5e371` |
| 2 | `def` | [coprimeDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimedensity--9ad99123c8a8ae4673842e9b.md) | 31 | `declaration-track:9ad99123c8a8ae4673842e9b54d1216e8f2294a9e96298c6d68b1fdcfb9e0134` |
| 3 | `theorem` | [sum_moebius_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/sum-moebius-divisors--6e4284bf9fa379e4ed7c48a9.md) | 35 | `result-track:6e4284bf9fa379e4ed7c48a90edd1c620753a3e5e19cf094d80beca5065a8db5` |
| 4 | `theorem` | [coprime_indicator_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprime-indicator-eq--ff5a182ca7c73dccebbb6367.md) | 43 | `result-track:ff5a182ca7c73dccebbb63671533d741f1405c29be55873b6b0dcf969659d5e9` |
| 5 | `theorem` | [positive_multiples_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/positive-multiples-card--9c7a19be4b10bdbb880d2faa.md) | 59 | `result-track:9c7a19be4b10bdbb880d2faafcdc7ba5dacfaa84f8621b880309508fbe83c614` |
| 6 | `theorem` | [coprimeCount_eq_moebius_floor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimecount-eq-moebius-floor--71a876e40efc9b0e6fc7536d.md) | 69 | `result-track:71a876e40efc9b0e6fc7536d46aa6972801f79f0d7938c8b9b5f9343be253e83` |
| 7 | `theorem` | [natural_division_error](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/natural-division-error--0e4aeefe41cb1b56d8d83857.md) | 85 | `result-track:0e4aeefe41cb1b56d8d83857f1fecf32f4504f951e0b1ad9492c404f151e1ed0` |
| 8 | `theorem` | [coprimeCount_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimecount-error-le--5e0ba57c3c5d092d2dbc8d46.md) | 95 | `result-track:5e0ba57c3c5d092d2dbc8d469d4bda02bf0957c80c0ea7241fc3d6ddbe5ea393` |
| 9 | `theorem` | [coprimeCount_period](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimecount-period--c4abe81d22f5a0199aa77806.md) | 120 | `result-track:c4abe81d22f5a0199aa7780667ffe4aa2889e7cd37346a87022aa86531b3c886` |
| 10 | `theorem` | [coprimeCount_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimecount-le--7b954132e4641ea2372fa3ba.md) | 129 | `result-track:7b954132e4641ea2372fa3bab72f06771c3f69e2f45933ba1662a17e3cd0cd03` |
| 11 | `theorem` | [coprimeDensity_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimedensity-nonneg--3e5527bdc2ad048e4fb4b084.md) | 136 | `result-track:3e5527bdc2ad048e4fb4b08443e9ed88f045a4c70c53553540d77f0e2ca446c1` |
| 12 | `theorem` | [coprimeDensity_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/declarations/coprimedensity-le-one--848bd0bef4d82428ba64641b.md) | 143 | `result-track:848bd0bef4d82428ba64641b995da8876216bdcf20b56d41717ed4da05373a31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
