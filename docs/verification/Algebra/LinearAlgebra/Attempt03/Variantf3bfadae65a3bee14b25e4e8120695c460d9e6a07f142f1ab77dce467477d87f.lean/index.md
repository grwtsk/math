# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt03.Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a06833b74a2e9b1297262900cea6d849b507e03",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a06833b74a2e9b1297262900cea6d849b507e03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus--3c422230a37a3f0d5acef5ff.md) | 13 | `declaration-track:3c422230a37a3f0d5acef5ff1df4f3c447c949c0227ec7cd5713220ec21f2510` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus--8e690e0cd53564b04506110a.md) | 15 | `declaration-track:8e690e0cd53564b04506110a7fe49ebfd7da5e8246e5f1fe06758a2281205667` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/pairwiseprofile--95b77fdd22ebedf5f0136a4a.md) | 17 | `declaration-track:95b77fdd22ebedf5f0136a4ad45d5b35cfd7e7fa6b4052fb99c252da5214b7dc` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/triplecycle--ee4bd832fa844428b3dac5b4.md) | 19 | `declaration-track:ee4bd832fa844428b3dac5b42fa1180c16c36f0c5c7dd019a4e936073a925e12` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus-hermitian--ca7686b15fbfc11b04e46e2b.md) | 21 | `result-track:ca7686b15fbfc11b04e46e2bb5d4ef2ecb511c8c366ffcbd6a8740a954262b2c` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus-hermitian--bc9a59a52c0da99990d3e7e8.md) | 24 | `result-track:bc9a59a52c0da99990d3e7e8df619d7459dc9ef68d76c769916b9a9055d65e76` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus-energy--806b44071d78e5a16e422698.md) | 28 | `result-track:806b44071d78e5a16e422698d99382d1a2c9e166692c9234ea6a8778b231f58a` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus-energy--cefc5de559ef34b6758165de.md) | 34 | `result-track:cefc5de559ef34b6758165dea57a29b1af0ac74d1fa4d5856d97fbae1bb886ac` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/sum-sq-pos--495ce79b985be29177d32e69.md) | 41 | `result-track:495ce79b985be29177d32e694b4916d360a22dfad00fd65dacb0c2ae488ef4d9` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus-posdef--2025a71aba2ad840107b2c3a.md) | 53 | `result-track:2025a71aba2ad840107b2c3a131a149c681994aa5747228c77a83614c03c2c67` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus-posdef--18f94cfc26a76bf03d8d4088.md) | 58 | `result-track:18f94cfc26a76bf03d8d4088a5dcb49f645e1ffd1e7fe56b82e642df4144209a` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/positive-gram-factor--da25f31b8a2398e1fee8e552.md) | 64 | `result-track:da25f31b8a2398e1fee8e552adf1df8a09f4f5e2c9b96d7140bb5c5ce179b0b3` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus-realizable--7be1f28aaa610b79c138e186.md) | 70 | `result-track:7be1f28aaa610b79c138e18650aa7aca7c23b26863af088b277b203e3550ecbd` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus-realizable--ffc9b6ae6ce64c978d24e250.md) | 72 | `result-track:ffc9b6ae6ce64c978d24e25055d9caa03c5e453127f8cb221b3516e280769ecd` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/diagonals-equal--521ea479659f64745630a197.md) | 75 | `result-track:521ea479659f64745630a19732287720a53a7873716ad4e5607a19a5c85fcd0f` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/pairwise-equal--f5617f3bfc54296809d35495.md) | 78 | `result-track:f5617f3bfc54296809d35495f74742ae5f605bfb87393893d32b2769eacd441b` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/triple-plus--55f0677dd49d233cc9d6afaf.md) | 81 | `result-track:55f0677dd49d233cc9d6afaf40bcdb0889995ee3adf25f839c6ba8a8912dbb35` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/triple-minus--ea018057c3d1f626e8515c88.md) | 83 | `result-track:ea018057c3d1f626e8515c88c93da1dc55187d51e18415cf5f68e95b1dfaca0a` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/triple-distinct--c67fd5d6c64696b2c659a3a1.md) | 85 | `result-track:c67fd5d6c64696b2c659a3a121fe033de30055109def85500bd8825985d2b3e1` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/det-plus--fd917b6a8a4b3daa712dd221.md) | 89 | `result-track:fd917b6a8a4b3daa712dd22135c2db8e663bc4e554138135f20e1d2df190e74a` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/det-minus--e82737a1094470a416961d0e.md) | 91 | `result-track:e82737a1094470a416961d0e40155f5c58773439218589ee5ee6fb6fb53e2d84` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/det-distinct--02248e653332126f42700f75.md) | 93 | `result-track:02248e653332126f42700f756fc0fc2119523496a7914244d35c507b12353eb1` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/no-pairwise-triple-decoder--c1ebc80727530befbbf3b2f8.md) | 97 | `result-track:c1ebc80727530befbbf3b2f8bbc155f0b1b8bc98535b35ccd5c092d67f41963e` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/no-pairwise-determinant-decoder--4061c3e1075c18eabb47b9da.md) | 106 | `result-track:4061c3e1075c18eabb47b9da62baa81ad9fd0fadc325525d1580fbcfa6a16480` |
| 25 | `theorem` | [positive_euclidean_gram](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/positive-euclidean-gram--b92c4ee07d2297b253546d69.md) | 117 | `result-track:b92c4ee07d2297b253546d696d4213d0b0a2f73659a4c819648c8cefcad3bbd3` |
| 26 | `theorem` | [gramPlus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramplus-euclidean--079940c3c92d31f193a83665.md) | 125 | `result-track:079940c3c92d31f193a83665ad2b787bb4cf1d3f22d3e57c60fa3d9811562d6e` |
| 27 | `theorem` | [gramMinus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/gramminus-euclidean--1da9576c002089c1faf3477c.md) | 129 | `result-track:1da9576c002089c1faf3477c72d532adfe09126f0d53bb1f7872c88d535afbb1` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/pairwiseprofile-eq-norm-sq--a38c293d90c094e1cfa40de8.md) | 133 | `result-track:a38c293d90c094e1cfa40de83752d3ed7cbcae4e8875fbb23813b1f93e4dc0df` |
| 29 | `theorem` | [first_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/first-trace-equal--f2a8161eaa19524d905630f3.md) | 137 | `result-track:f2a8161eaa19524d905630f3991bd2ec9745b9e412f97317995c537858958ca6` |
| 30 | `theorem` | [second_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/second-trace-equal--39ee2122bd93101e746c5309.md) | 140 | `result-track:39ee2122bd93101e746c5309aa783b06dfb0bd91c0745c524f6e7ea147b51121` |
| 31 | `theorem` | [third_trace_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/third-trace-plus--2940b1620f3ed42484278604.md) | 143 | `result-track:2940b1620f3ed42484278604b560a8492cfe0ed7f75a4caf236fa19182ca2a9a` |
| 32 | `theorem` | [third_trace_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/third-trace-minus--beeb6168b7cf023d437c4cde.md) | 146 | `result-track:beeb6168b7cf023d437c4cdeeddc8a7586addf449a77028280fd002ce3806c41` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Variantf3bfadae65a3bee14b25e4e8120695c460d9e6a07f142f1ab77dce467477d87f.lean/declarations/no-pairwise-third-trace-decoder--8f4c225911ba740cea4bf3a1.md) | 149 | `result-track:8f4c225911ba740cea4bf3a1ea09dea1417ed82a3fe0e76cb3d8c79790dd278a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
