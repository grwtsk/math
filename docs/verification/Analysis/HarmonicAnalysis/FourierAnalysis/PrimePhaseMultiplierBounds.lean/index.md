# Verification target: GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05e1a51bbfa26b4b737be01071b9b6d9d8b486de`.

Source path: `GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/PrimePhaseMultiplierBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawFourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/rawfourier--672bd03057ecdece92126033.md) | 21 | `declaration-track:672bd03057ecdece92126033656d9bc10f164f10379139a6375a8da757d649f1` |
| 2 | `def` | [timeTranslate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/timetranslate--95cb5f1828295f8726a08112.md) | 23 | `declaration-track:95cb5f1828295f8726a0811292683c649adf45251c22653af52d75779c51d69b` |
| 3 | `theorem` | [rawFourier_eq_integral](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/rawfourier-eq-integral--179945a8052a8c463f94e3e1.md) | 25 | `result-track:179945a8052a8c463f94e3e114771b260423fc08ab16bbfb8344b9d8aa5cd0c4` |
| 4 | `theorem` | [rawFourier_translate](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/rawfourier-translate--7bdebcf995c60e2d53061b7b.md) | 37 | `result-track:7bdebcf995c60e2d53061b7b74fd3c7a644626c6ab6a9ded866765dd3c747cc3` |
| 5 | `def` | [primeWeight](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primeweight--ffe19e56dac8306bf08fdfe5.md) | 53 | `declaration-track:ffe19e56dac8306bf08fdfe553ae75d7c197b55867c350c6c1beb4e9fef8efd1` |
| 6 | `def` | [primePhase](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primephase--f19e8e1bc5204d0c5763db60.md) | 54 | `declaration-track:f19e8e1bc5204d0c5763db60bda81b7d5fd7a0c41b3bfc4f98e20117810ed45e` |
| 7 | `def` | [primeField](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primefield--c553ac9d86ce6083b688c5aa.md) | 56 | `declaration-track:c553ac9d86ce6083b688c5aafd2c52ecf8ffd5d42c7b37567052493a7ee77d30` |
| 8 | `def` | [blockMultiplier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/blockmultiplier--d83a56f5ff3c36a7f079cf53.md) | 58 | `declaration-track:d83a56f5ff3c36a7f079cf53d59d2c46cef28fe191476e7f639fe62e76e04db0` |
| 9 | `def` | [harmonicMass](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/harmonicmass--a27883e6d13ebb8d15f9d7c6.md) | 60 | `declaration-track:a27883e6d13ebb8d15f9d7c6446aabdcf3c4ae41ab542395a167694f770c21ea` |
| 10 | `def` | [Broad](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/broad--ca50cd657889ba9f3db3f88a.md) | 61 | `declaration-track:ca50cd657889ba9f3db3f88aba8fe86fd03bcbd3d2af0f757ed4264102703ab6` |
| 11 | `def` | [Narrow](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/narrow--1c6314b5a6d83b3270824a32.md) | 63 | `declaration-track:1c6314b5a6d83b3270824a32eac566ab04e8b2536b39e80174600f52488aafb1` |
| 12 | `theorem` | [blockMultiplier_signed_expansion](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/blockmultiplier-signed-expansion--2299768403d346c1166c031c.md) | 66 | `result-track:2299768403d346c1166c031c5d23413d5eab52533071d6803168b910a8f31d8a` |
| 13 | `theorem` | [primePhase_norm](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primephase-norm--1b0cc0a669cf4be85246e28c.md) | 74 | `result-track:1b0cc0a669cf4be85246e28cbca165159bcb253713753ee8ff1771db879490c6` |
| 14 | `theorem` | [primeWeight_sq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primeweight-sq--53abb01f10c4885b9d86a274.md) | 77 | `result-track:53abb01f10c4885b9d86a274d17261d85e9e9d753a3617a6f1aad32df7e81a1b` |
| 15 | `theorem` | [one_sub_unit_norm_sq](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/one-sub-unit-norm-sq--7d983738d9a2cc4883b7aac4.md) | 80 | `result-track:7d983738d9a2cc4883b7aac46fb2d2446da3b61d35db0e95035d43df6aee09c1` |
| 16 | `theorem` | [one_sub_unit_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/one-sub-unit-bound--de33253644b8cf0ecd12bf38.md) | 87 | `result-track:de33253644b8cf0ecd12bf38538eb61ca58df14895f61f1a3e43778537d4c798` |
| 17 | `theorem` | [block_multiplier_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/block-multiplier-bound--b4d932037851808da19466fc.md) | 93 | `result-track:b4d932037851808da19466fc623336f84465389e1c82b4f27cf3ea89139ea86f` |
| 18 | `theorem` | [broad_multiplier_bound](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/broad-multiplier-bound--91ceeba533f517111a504dab.md) | 115 | `result-track:91ceeba533f517111a504dab7cf7deffc563de2c0cd9b4d03288ea566850b34f` |
| 19 | `theorem` | [narrow_iff_not_broad](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/narrow-iff-not-broad--61c26a212af836be6149a52c.md) | 123 | `result-track:61c26a212af836be6149a52c5c87aa1fb7eaf93ea82d6f6d8bf31ca2f6d8d264` |
| 20 | `theorem` | [primeWeight_nonneg](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primeweight-nonneg--edebf55964545338e41ae626.md) | 127 | `result-track:edebf55964545338e41ae626db126310e082a564a288e9ce743495b4d514143f` |
| 21 | `theorem` | [primeWeight_pos](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primeweight-pos--a089e8b6ec3bfe75ecce3fba.md) | 131 | `result-track:a089e8b6ec3bfe75ecce3fbac974deab5856a490e65107fcd553d38d8c5596fc` |
| 22 | `theorem` | [primeWeight_lt_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primeweight-lt-one--8c2d089303f3c1960b0efe20.md) | 135 | `result-track:8c2d089303f3c1960b0efe20b5589135db7845b40d7553e67cf35f2eb0adaebf` |
| 23 | `theorem` | [primePhase_re](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primephase-re--98d2d59654c6a59b40a9dde9.md) | 141 | `result-track:98d2d59654c6a59b40a9dde9f547920d6819f5e62e98567e345e9c4ae70f3d4a` |
| 24 | `theorem` | [primeField_re](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/primefield-re--271f0cb33c66d2fd6f6dfb37.md) | 145 | `result-track:271f0cb33c66d2fd6f6dfb374790d818dad9417c124da4479b53c47b7f4aa7c8` |
| 25 | `theorem` | [zero_frequency_broad](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/zero-frequency-broad--4fbaa862b7598904637d039f.md) | 150 | `result-track:4fbaa862b7598904637d039f10327390bd05bd8a7455d746b0aa31294506f483` |
| 26 | `theorem` | [zero_frequency_contractive](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/zero-frequency-contractive--fa9e36991893b04e06ab57e9.md) | 159 | `result-track:fa9e36991893b04e06ab57e9092c97a9259dc6feeaa9d21876d739abcd8a52b7` |
| 27 | `theorem` | [antiphase_singleton_amplifies](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/declarations/antiphase-singleton-amplifies--91a3792d83d8e335bd43aab3.md) | 179 | `result-track:91a3792d83d8e335bd43aab32f6a5cc2840b7d7554bd6f2cd1cc87526450b730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
