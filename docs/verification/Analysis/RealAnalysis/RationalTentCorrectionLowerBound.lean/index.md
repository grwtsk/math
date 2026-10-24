# Verification target: GRWTSK.Analysis.Real.RationalTentCorrectionLowerBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71d1b4bf30446b7cb47e33cfd51e9ae5cbedd6a5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/RationalTentCorrectionLowerBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71d1b4bf30446b7cb47e33cfd51e9ae5cbedd6a5`.

Source path: `GRWTSK/Analysis/Real/RationalTentCorrectionLowerBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/RationalTentCorrectionLowerBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentRationalCorrection`](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalRoundedArithmetic`](../../../../mathematics/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/admissible--f61c4aa383c4876b877851e4.md) | 41 | `declaration-track:f61c4aa383c4876b877851e43b84d0b808a74ca68db0abd9f019bb9b3e070f87` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/instance--c250cd81e72c40a4c887b6ee.md) | 44 | `declaration-track:c250cd81e72c40a4c887b6ee48837092b60f7b5506343dde03786df059ffedf2` |
| 3 | `def` | [PrefixEnclosure](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/prefixenclosure--e2aa23e6fea85b4d663658d1.md) | 50 | `declaration-track:e2aa23e6fea85b4d663658d1c9f4405fc4f67f40704e09610e5c3c7b5ba998e9` |
| 4 | `def` | [remainderQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/remainderq--ebf7924b9aa2f563adf88fa9.md) | 55 | `declaration-track:ebf7924b9aa2f563adf88fa99aa977b644b9d8cb3ec149aa023e1e25702408d3` |
| 5 | `def` | [lowerBaseQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/lowerbaseq--84aeb3d57adf45ce7a1a56b4.md) | 59 | `declaration-track:84aeb3d57adf45ce7a1a56b40d9eacd5800bca5561011995f4572be70f25e733` |
| 6 | `def` | [computeLower](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/computelower--a118893e6a26576bf8e879eb.md) | 64 | `declaration-track:a118893e6a26576bf8e879eb0785e3f9d2d1ed55bf5f751f653020f5027239c9` |
| 7 | `def` | [evaluate](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/evaluate--cc646b79ae28efdea9c7fa55.md) | 70 | `declaration-track:cc646b79ae28efdea9c7fa55cee9eb3ff99dab0eb93928388bdc245225054627` |
| 8 | `def` | [verify](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/verify--1ae98c83974b9be883c5d000.md) | 79 | `declaration-track:1ae98c83974b9be883c5d000bd186985e7d2cc4bb8c28fd588e92e3f4670670e` |
| 9 | `theorem` | [cast_remainderQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/cast-remainderq--f055278c9b32ef094348357a.md) | 84 | `result-track:f055278c9b32ef094348357a8aa2fe0267136f9f78c2db8ffb5607c851a75995` |
| 10 | `theorem` | [cast_lowerBaseQ](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/cast-lowerbaseq--c561480817fc78425a5a5d53.md) | 92 | `result-track:c561480817fc78425a5a5d53a814e9333333996be658fb8e14d15d9608935b2b` |
| 11 | `theorem` | [computeLower_le_base](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/computelower-le-base--6bef93fe74f18383140e9653.md) | 99 | `result-track:6bef93fe74f18383140e965370d46e823e3a08d2bba4b2d42e3f8a423bc4de3b` |
| 12 | `theorem` | [base_lt_computeLower_add_grid](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/base-lt-computelower-add-grid--c34f9fdbc1b575b6addd88f7.md) | 108 | `result-track:c34f9fdbc1b575b6addd88f7f0b75a3d36b9f50c3aa783aa4ebc3cdd87167b0b` |
| 13 | `theorem` | [lowerBase_le_correction](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/lowerbase-le-correction--63dcbfa9f1899f93609b4a90.md) | 119 | `result-track:63dcbfa9f1899f93609b4a909f63202bc1171ae58e2d89db49865eb135105986` |
| 14 | `theorem` | [computeLower_sound](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/computelower-sound--2253e9dc853e51a2ab4b9760.md) | 138 | `result-track:2253e9dc853e51a2ab4b9760beab8cb91b4d9e2fc04b412a7187d4f93afb1297` |
| 15 | `theorem` | [verify_iff](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/verify-iff--3e5c8d10f38be06c0d40f7d3.md) | 148 | `result-track:3e5c8d10f38be06c0d40f7d314ed66aa3a3e8bc0422760a5843ab2adc4823fdd` |
| 16 | `theorem` | [verify_sound](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/verify-sound--4bb0069f72e8c62cad350d7b.md) | 160 | `result-track:4bb0069f72e8c62cad350d7b1eef9de1c192a040331211da0a4cd25da927bcf4` |
| 17 | `theorem` | [verify_floor_sound](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/verify-floor-sound--a5546175428bb5363a9feebd.md) | 176 | `result-track:a5546175428bb5363a9feebd43ebb32be021946a26f8b6b2df5a3807870cf978` |
| 18 | `theorem` | [floor_equality_not_strict_fixture](../../../../mathematics/Analysis/RealAnalysis/RationalTentCorrectionLowerBound.lean/declarations/floor-equality-not-strict-fixture--b6804eae9f6a8079477f94df.md) | 187 | `result-track:b6804eae9f6a8079477f94df98ab1b18c2afb9e7fe12bc11299e45a14f024e79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
