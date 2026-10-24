# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6987b9147483d6fbc038469c0b9361a09d5bfd96",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6987b9147483d6fbc038469c0b9361a09d5bfd96`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schrodingerTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/schrodingertransfer--fde64e28350c7c2aae823e4b.md) | 31 | `declaration-track:fde64e28350c7c2aae823e4bdbeba576b4d9f58a955ea62b46eae8f4abc7de63` |
| 2 | `def` | [rawState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/rawstate--aa97c60a0cd4d3229c60c3a0.md) | 35 | `declaration-track:aa97c60a0cd4d3229c60c3a021f3929fd1e49b28e13565b1e08e6b7f496fae27` |
| 3 | `theorem` | [schrodinger_recurrence_iff_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/schrodinger-recurrence-iff-transfer--6948689af1850f2e57f5bb9a.md) | 39 | `result-track:6948689af1850f2e57f5bb9a9481dee295a658bedb5b511aa77d6288310d2826` |
| 4 | `theorem` | [det_schrodingerTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/det-schrodingertransfer--1411d0cff8867804d67a7c5e.md) | 62 | `result-track:1411d0cff8867804d67a7c5e37291b9b94368179efd61c9702501e3aed718dce` |
| 5 | `def` | [schrodingerSL](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/schrodingersl--e7647e701c073cbc7b1f9ea8.md) | 67 | `declaration-track:e7647e701c073cbc7b1f9ea870b7faa44c18e08a647956280bf06610f837ccd7` |
| 6 | `def` | [rawJacobiTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/rawjacobitransfer--372a2cd3cfe522a84f39e492.md) | 72 | `declaration-track:372a2cd3cfe522a84f39e492b0b420d36549542ad8742a2a64bfe8bfd63600c1` |
| 7 | `def` | [jacobiRecurrence](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobirecurrence--506df540942771d5d0e4b7c4.md) | 77 | `declaration-track:506df540942771d5d0e4b7c4d7015f629846d827feef0980314c7bf91379c9da` |
| 8 | `theorem` | [jacobi_recurrence_iff_solved](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobi-recurrence-iff-solved--76affa99c8cdb462b135e64b.md) | 82 | `result-track:76affa99c8cdb462b135e64bdebe19e630f6b2b33b3609a4d0dbae8c8aead5b3` |
| 9 | `theorem` | [jacobi_recurrence_iff_raw_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobi-recurrence-iff-raw-transfer--5af80aa76fe03893f4769705.md) | 99 | `result-track:5af80aa76fe03893f47697053ed7fff615f915d18afb6e06e062494abb832fcd` |
| 10 | `theorem` | [det_rawJacobiTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/det-rawjacobitransfer--d271a27c213b8e8daac9f1b3.md) | 121 | `result-track:d271a27c213b8e8daac9f1b3a44e8bfa6620227941fb3c408f75c8d669338b0f` |
| 11 | `def` | [weightedState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weightedstate--3363e1c70a002517d461c8b9.md) | 126 | `declaration-track:3363e1c70a002517d461c8b99f643c2f479f12a25e8db818fde3970f8cc90892` |
| 12 | `def` | [weightedJacobiTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weightedjacobitransfer--e5fb46f104734c437ec48e05.md) | 130 | `declaration-track:e5fb46f104734c437ec48e0567bb2927916afce5dd00998fdfcd846449fdc005` |
| 13 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobi-recurrence-iff-weighted-transfer--350bcb9879936bc787b5323e.md) | 135 | `result-track:350bcb9879936bc787b5323e79c866010e39f78ecc61e99addc56b951d3126a0` |
| 14 | `theorem` | [det_weightedJacobiTransfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/det-weightedjacobitransfer--da69bc8b1e4be4d05b68418b.md) | 158 | `result-track:da69bc8b1e4be4d05b68418bf62d6ca7cd72b09aaccfc5f9835a039bceee2472` |
| 15 | `def` | [weightedJacobiSL](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weightedjacobisl--931dbd6b3ee97770ffcadcfc.md) | 164 | `declaration-track:931dbd6b3ee97770ffcadcfcdf59485112d75f1c93b2efff1e861dfe7774e3c4` |
| 16 | `theorem` | [weightedJacobiTransfer_schrodinger](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weightedjacobitransfer-schrodinger--efe4471eda7943282300b27a.md) | 169 | `result-track:efe4471eda7943282300b27ac6f9e50a7229b2c8d77e7e6e11eed0f43b452b7a` |
| 17 | `theorem` | [rawJacobiTransfer_schrodinger](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/rawjacobitransfer-schrodinger--ab1053d4474ecb17c9603023.md) | 174 | `result-track:ab1053d4474ecb17c9603023a627d3461fc268fa1c1f5671101845ff71b91ff8` |
| 18 | `def` | [stateWeightingMatrix](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/stateweightingmatrix--5bf5274c4010ba74affa895a.md) | 179 | `declaration-track:5bf5274c4010ba74affa895a5d11f3444a90351161644695b9a851afb39df692` |
| 19 | `theorem` | [stateWeightingMatrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/stateweightingmatrix-mulvec--e789794a3482db6d86214c25.md) | 183 | `result-track:e789794a3482db6d86214c25eeadff226784aa1bbe706d9449a7a019ba5fad86` |
| 20 | `theorem` | [weighted_raw_intertwining](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weighted-raw-intertwining--a1d5f91e007f572151fcd662.md) | 192 | `result-track:a1d5f91e007f572151fcd662181b4267680614623bac899ed708e89006ca8b79` |
| 21 | `def` | [rawSequenceState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/rawsequencestate--be45428dbecb6fcfb415c2c0.md) | 203 | `declaration-track:be45428dbecb6fcfb415c2c0a43e7c0934fe18befd2cbcc482c4e26c01a57f17` |
| 22 | `def` | [weightedSequenceState](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/weightedsequencestate--0a416ecb13efa855c906bde5.md) | 207 | `declaration-track:0a416ecb13efa855c906bde50cd15c77b7a270d3ac441266240eb2f2d653a8e1` |
| 23 | `theorem` | [schrodinger_sequence_iff_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/schrodinger-sequence-iff-transfer--e1bf23b8fc6593e0ca6f4cdf.md) | 211 | `result-track:e1bf23b8fc6593e0ca6f4cdfd501fe2d89d9b6759c2eb06c8d0103dc033dd110` |
| 24 | `theorem` | [jacobi_sequence_iff_raw_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobi-sequence-iff-raw-transfer--c181b87606e496f023a3e14f.md) | 220 | `result-track:c181b87606e496f023a3e14fb993b112003f1854f17ce9623e1ac3a0907e4870` |
| 25 | `theorem` | [jacobi_sequence_iff_weighted_transfer](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/jacobi-sequence-iff-weighted-transfer--5b5717c4c5b941e19a81940a.md) | 231 | `result-track:5b5717c4c5b941e19a81940a6da7b472ecda066ec94c4a728be9e1348753c936` |
| 26 | `theorem` | [rawJacobiTransfer_not_det_one](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/rawjacobitransfer-not-det-one--75123f375dea5845ecd16c11.md) | 241 | `result-track:75123f375dea5845ecd16c11a325a053cbac33aa8dabaf89152108123524837e` |
| 27 | `theorem` | [schrodinger_same_SL_syntax_not_equal](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/schrodinger-same-sl-syntax-not-equal--4e13d1ac20c6f2d6d1d38a3a.md) | 247 | `result-track:4e13d1ac20c6f2d6d1d38a3a0125991f4d65be3cd900ce8cb9fccd6b5e0dd887` |
| 28 | `def` | [twoSiteJacobi](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/twositejacobi--528b0ef5fb26ac5f7f78e57a.md) | 255 | `declaration-track:528b0ef5fb26ac5f7f78e57acaf230059cc4080787429cee64d1662e62e96aa5` |
| 29 | `theorem` | [twoSiteJacobi_cyclic](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/twositejacobi-cyclic--0fedcb8cef0278a682dc9570.md) | 258 | `result-track:0fedcb8cef0278a682dc95700167895efc36d6bc88a062f27913866c66c05f66` |
| 30 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/cyclic-coefficient-zero-without-zero-eigenvector--5043f8ee5bdd9d78168b26fc.md) | 265 | `result-track:5043f8ee5bdd9d78168b26fc15e22c4751bb926d8ad6c0cf9fec0649e1611d1c` |
| 31 | `theorem` | [twoSiteJacobi_first_three_moments_match](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/twositejacobi-first-three-moments-match--c6fc28b2c4c36c5ce7402416.md) | 281 | `result-track:c6fc28b2c4c36c5ce7402416220d2d9d72fef921463aa3a64333a974d6a7e7af` |
| 32 | `theorem` | [twoSiteJacobi_not_conjugate](../../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/declarations/twositejacobi-not-conjugate--181836927a6cd12e73c5b40d.md) | 290 | `result-track:181836927a6cd12e73c5b40dd5a0d304b37f796b06c513c170afc69c2980591d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
