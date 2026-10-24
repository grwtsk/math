# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivialZeroDebt.Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d4f77bf710061303cb9c16c20b564ccf1a011ca",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d4f77bf710061303cb9c16c20b564ccf1a011ca`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialZeroPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialzeropoint--fb7bf0880e1626e8fec3a975.md) | 41 | `declaration-track:fb7bf0880e1626e8fec3a975deb4c474c49a517425e5874e1103ba43ff275a04` |
| 2 | `theorem` | [trivialZeroPoint_is_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialzeropoint-is-zero--d4227b252723cb67df24014e.md) | 44 | `result-track:d4227b252723cb67df24014e06b677f6b584bffc27f3d978092d3795f3df4038` |
| 3 | `theorem` | [trivialZeroPoint_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialzeropoint-re--4f8664d53e5860cdbf92e0ee.md) | 48 | `result-track:4f8664d53e5860cdbf92e0ee688853cca940bb3e71d06f96a8ea3c98f1a595df` |
| 4 | `theorem` | [trivialZeroPoint_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialzeropoint-im--9f95c4b66ecd2cd3addee3e6.md) | 53 | `result-track:9f95c4b66ecd2cd3addee3e6d6fa92157ac8435e4d59863cd8c471a4bc47db24` |
| 5 | `theorem` | [zeta_zero_not_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/zeta-zero-not-zero--250bcf7ee03f69c33dd56d36.md) | 57 | `result-track:250bcf7ee03f69c33dd56d36746e9e004ec6ec7dc8057de07311c1a6008d6354` |
| 6 | `def` | [trivialDistance](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialdistance--0207427ca17856aebdc1c13a.md) | 62 | `declaration-track:0207427ca17856aebdc1c13a6a0c6dd96b1d18a3fe5be6ae526d086aec3f934c` |
| 7 | `theorem` | [trivialDistance_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialdistance-eq--aff3357c42a59d4ba8ab6fe8.md) | 65 | `result-track:aff3357c42a59d4ba8ab6fe8aca5f3cfc65c9ef4909c3c87f58222769c9bce4c` |
| 8 | `theorem` | [trivialDistance_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialdistance-pos--291c6f721b33ae59c0c9b8ff.md) | 70 | `result-track:291c6f721b33ae59c0c9b8ff56ac4082acbb1de943734e913debda92b9ada2ba` |
| 9 | `def` | [trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution--a3a3e3ec59e2f37898c40414.md) | 75 | `declaration-track:a3a3e3ec59e2f37898c404145e0294787124dd62d8a1d9a4ca95f4fdae30664e` |
| 10 | `def` | [zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/zeroendpoint--5e3f0e47a8bb521dd687c5d4.md) | 79 | `declaration-track:5e3f0e47a8bb521dd687c5d43176e27a3c8568b1c5d18386874193beda3461aa` |
| 11 | `theorem` | [kernel_zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/kernel-zeroendpoint--f4c579736837136e9da8ebcf.md) | 82 | `result-track:f4c579736837136e9da8ebcf824210a21fd81300a7083146c8359314381d91bd` |
| 12 | `theorem` | [trivialContribution_eq_kernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-eq-kernel--1d4c07eecf34f5288941051c.md) | 89 | `result-track:1d4c07eecf34f5288941051ccb7dac8238178e872108806c5d7eea0acdda4bbd` |
| 13 | `theorem` | [trivialContribution_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-nonnegative--88b30b2cf288f4a671dc86fc.md) | 101 | `result-track:88b30b2cf288f4a671dc86fc15f6b31a70fbe97698ee2c7768dc67e205d195ec` |
| 14 | `theorem` | [trivialContribution_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-positive--3768bf4230a8bf3a4d89d781.md) | 107 | `result-track:3768bf4230a8bf3a4d89d7816c128e6524387cf9098b0b9cba245c1576eea094` |
| 15 | `theorem` | [trivialContribution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-zero--c65d7c6f6799ad6436756664.md) | 114 | `result-track:c65d7c6f6799ad6436756664b385e6f0f140f9af65e3b87cd40acc1d1fa5acbe` |
| 16 | `theorem` | [zeroEndpoint_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/zeroendpoint-zero--38e2779ef34ac2cb4a8ac7b8.md) | 118 | `result-track:38e2779ef34ac2cb4a8ac7b870f314c97df32715b7a18e8e95e8999591de3dc3` |
| 17 | `theorem` | [trivialContribution_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-neg--17fb139689c588b6b021b1fa.md) | 121 | `result-track:17fb139689c588b6b021b1fa5e4d58f009d73391fa5fd0c1e90f67c1455085bf` |
| 18 | `theorem` | [hasSum_trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/hassum-trivialcontribution--c9c541bcba7c51931ea2d424.md) | 126 | `result-track:c9c541bcba7c51931ea2d4245d0c7e5a9c4b2e8346356ca31df7ed29286d4838` |
| 19 | `theorem` | [trivialContribution_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-summable--69e4cd233fc03cdd6bce50fe.md) | 137 | `result-track:69e4cd233fc03cdd6bce50fedad9c134c3f8859566ea819ca11e83e6ed6658cb` |
| 20 | `theorem` | [archimedean_eq_endpoint_add_trivial](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/archimedean-eq-endpoint-add-trivial--6d64a0c4c6f7042b1d4331d6.md) | 141 | `result-track:6d64a0c4c6f7042b1d4331d6be0e09a4b1956b91314ed609a8fd70aed36aadf6` |
| 21 | `theorem` | [source_minus_endpoint_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/source-minus-endpoint-nonnegative--15689be71a0ef6f47e206d18.md) | 148 | `result-track:15689be71a0ef6f47e206d18627d611969e67b3661562bd88055490d0a25d536` |
| 22 | `theorem` | [source_minus_endpoint_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/source-minus-endpoint-positive--9280f2fb1d611801a9feb670.md) | 154 | `result-track:9280f2fb1d611801a9feb670c0af8549ed185414867abec2850883a21ca8db4f` |
| 23 | `theorem` | [source_prefix_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/source-prefix-tail--557a8de507dca99cbf33d00e.md) | 164 | `result-track:557a8de507dca99cbf33d00e4d19f393fdce00613d1d425b35e8985751bec4cd` |
| 24 | `theorem` | [trivialContribution_tail_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-tail-bounds--467501c9bbdf7bf7d8638a13.md) | 173 | `result-track:467501c9bbdf7bf7d8638a13632bb2e6ecf7947082fcc205006629875d4be2af` |
| 25 | `theorem` | [trivialContribution_tail_distance_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variant2bd7a14bc41b0c0f3e51e78e679ba40f06f8d324df50b6657f88f401f1eed8ad.lean/declarations/trivialcontribution-tail-distance-bounds--5c1e4c4396b967765c72b4cc.md) | 191 | `result-track:5c1e4c4396b967765c72b4ccf10a4fe8f2570e8b1078d50e25bdb67903b51380` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
