# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SquarefreeCount.Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc6bafc7cf55e1aa42f97a83a9a536d964de1a27",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc6bafc7cf55e1aa42f97a83a9a536d964de1a27`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 5; external provider; requires a separately pinned dependency.
- `scratch.mertens.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `scratch.mertens.ReciprocalSquareTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfFactorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/halffactorization--a76fcfb2d51d7a8daafb97a8.md) | 16 | `declaration-track:a76fcfb2d51d7a8daafb97a8cdb6e9dda0e8174635bfc43169733d992073b8c2` |
| 2 | `def` | [squareDivisorRoot](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squaredivisorroot--4dac97291adb3a3de62abada.md) | 19 | `declaration-track:4dac97291adb3a3de62abadac31a9fd61e4819b36c68d243109a4f9a4cd2f453` |
| 3 | `theorem` | [halfFactorization_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/halffactorization-le--c3c5265fa32e919fe19dfc9a.md) | 21 | `result-track:c3c5265fa32e919fe19dfc9a7bce5aacf2440d11d37af21e2e0d2da06e540ce4` |
| 4 | `theorem` | [squareDivisorRoot_ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squaredivisorroot-ne-zero--e8561df6acf770f13cee7fa0.md) | 25 | `result-track:e8561df6acf770f13cee7fa016849b4098fde3c834d8104155a1cae3af170b1c` |
| 5 | `theorem` | [squareDivisorRoot_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squaredivisorroot-factorization--605e88e288555eeda34e7b10.md) | 32 | `result-track:605e88e288555eeda34e7b10d9010bde6246b77ca9c7fc851f5ad726389ee697` |
| 6 | `theorem` | [square_dvd_iff_dvd_root](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/square-dvd-iff-dvd-root--251c3c3edcf6667f6211d048.md) | 36 | `result-track:251c3c3edcf6667f6211d048d351bbb0aabe3dff3b82f6fd971b0f4296160f32` |
| 7 | `theorem` | [root_eq_one_iff_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/root-eq-one-iff-squarefree--a8e71312a33cd9a1464fc430.md) | 48 | `result-track:a8e71312a33cd9a1464fc430821a0b7bcdf43ff15fdee107becad2b302ad8add` |
| 8 | `theorem` | [squareDivisors_eq_root_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squaredivisors-eq-root-divisors--d40358adb25959f94379f2c9.md) | 60 | `result-track:d40358adb25959f94379f2c906235e2dcbeb079be15fbeda2662551df3cca719` |
| 9 | `theorem` | [sum_moebius_divisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/sum-moebius-divisors--b8d8c94ea0bf9510c4604627.md) | 71 | `result-track:b8d8c94ea0bf9510c4604627d63667424c11d4afecc263c4195611f4a38df863` |
| 10 | `theorem` | [moebius_square_eq_sum_squareDivisors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/moebius-square-eq-sum-squaredivisors--bdbf7a9258730c7e4c27adc4.md) | 78 | `result-track:bdbf7a9258730c7e4c27adc4eaf99e7a4e8961171f392b78c8fb30882badcbe0` |
| 11 | `theorem` | [squareDivisors_eq_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squaredivisors-eq-icc--f47f476c951b2b349d49a972.md) | 86 | `result-track:f47f476c951b2b349d49a9726d41c0e7d2c0b612ab885a985d246e085ab4421b` |
| 12 | `theorem` | [moebius_square_eq_sum_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/moebius-square-eq-sum-icc--dbf10d36eca4e9e8c993ff75.md) | 98 | `result-track:dbf10d36eca4e9e8c993ff751f4373825f31707911d03d9fc0e1142f702de493` |
| 13 | `theorem` | [coprime_multiples_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/coprime-multiples-card--d5166a67843421749aeec749.md) | 107 | `result-track:d5166a67843421749aeec749287e55a9df783b75c532fe720f24cb7753f4a4f6` |
| 14 | `def` | [squarefreeCoprimeCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squarefreecoprimecount--093cb824cf0629402fcc4c71.md) | 135 | `declaration-track:093cb824cf0629402fcc4c713e1fac51f8c155c281e1d52cf6b1bd1fe5a6b394` |
| 15 | `theorem` | [coprime_multiples_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/coprime-multiples-sum--f3b690c8f6b3bf824a49393c.md) | 139 | `result-track:f3b690c8f6b3bf824a49393cf65b58e6fe1c10fca51f233e8375b39c09d27281` |
| 16 | `theorem` | [squarefreeCoprimeCount_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squarefreecoprimecount-eq--a1e4677b6d27fb959a3ee57c.md) | 169 | `result-track:a1e4677b6d27fb959a3ee57c8e110c2a979ba6fb9fa8fba1079d15f030880777` |
| 17 | `theorem` | [coprimeCount_div_error](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/coprimecount-div-error--01e2a08a88ff90a6079d9c92.md) | 199 | `result-track:01e2a08a88ff90a6079d9c92b032e069e13fd679f2833d3d22f894c9c711dd1b` |
| 18 | `def` | [finiteSquarefreeDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/finitesquarefreedensity--ca96ef66d00222acaf8e4f2a.md) | 229 | `declaration-track:ca96ef66d00222acaf8e4f2afb00400a3a85d98f6ce9eb330ec66bdafca346e4` |
| 19 | `theorem` | [squarefreeCoprimeCount_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/squarefreecoprimecount-error-le--101ade75eaa40807fcc268d9.md) | 233 | `result-track:101ade75eaa40807fcc268d9d645df088334aaa18d0673daa6f092965112ec35` |
| 20 | `theorem` | [finiteSquarefreeDensity_difference_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/finitesquarefreedensity-difference-le--13ddaf144e494b417bc29ba0.md) | 273 | `result-track:13ddaf144e494b417bc29ba08bde0d222fe5eb631c0b33905daada12de7894b0` |
| 21 | `theorem` | [fixedDensity_error_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variantd53ceefb4576fd1ff05e0b3bd99102428b973984f2561383ee3f0393f0407159.lean/declarations/fixeddensity-error-le--a4d77f2768e4386b0b812014.md) | 305 | `result-track:a4d77f2768e4386b0b812014b09c71e5376281949b252b92c6b3b0046a15e8ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
