# Verification target: GRWTSK.Spectral.Sheaf.SynchronizedSchurJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1decd0fe306f36157a1acfef1b12a92440e5066e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1decd0fe306f36157a1acfef1b12a92440e5066e`.

Source path: `GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/Sheaf/SynchronizedSchurJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.RelationSandwich`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RelationSandwich.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors`](../../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/CommutingInvolutionSectors.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet`](../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/SchurFeshbachJet.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixInvolutions](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/matrixinvolutions--22903b601b3575e7b0a20265.md) | 38 | `declaration-track:22903b601b3575e7b0a2026596f38d93881e2e1d818cc1f6dae186ce7eaa4b10` |
| 2 | `def` | [Commutes](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/commutes--367eaa5fc4d19e28ff2bacb3.md) | 46 | `declaration-track:367eaa5fc4d19e28ff2bacb3a0a7f3537e7c4a93ec79baf14c4f614a587a28fe` |
| 3 | `structure` | [SynchronizedJet](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/synchronizedjet--96ed8e91960c355901dcfb9b.md) | 52 | `declaration-track:96ed8e91960c355901dcfb9be40e683eafde31dd95eec37ccf4b430ab9e3f792` |
| 4 | `structure` | [SectorResolution](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/sectorresolution--a12e4dc041fcb654fe59e7f4.md) | 62 | `declaration-track:a12e4dc041fcb654fe59e7f4e32f5c634a2189a2bac628bd9f999c0e35b23404` |
| 5 | `theorem` | [determinant_eq_zero_iff_sector](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/determinant-eq-zero-iff-sector--d4fee5840996e154e5cc8ce3.md) | 77 | `result-track:d4fee5840996e154e5cc8ce39bbefde08985dcc4b12b1b8bde6d449a3b71acd6` |
| 6 | `theorem` | [zeroSet_eq_iUnion](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/zeroset-eq-iunion--e0e8f6570299679d6c7f8dc4.md) | 92 | `result-track:e0e8f6570299679d6c7f8dc4243bf45c4a4880f3a0230b5a9c4b9fbe2c2d6c42` |
| 7 | `structure` | [ResolvedSchurJet](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/resolvedschurjet--9fbe0088d4a53a5d0789baef.md) | 102 | `declaration-track:9fbe0088d4a53a5d0789baefff218bad6da72759c662ca201ca754d1890fe4f1` |
| 8 | `theorem` | [full_zero_iff_sector](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/full-zero-iff-sector--949a0c463f9fa2858fd615ef.md) | 124 | `result-track:949a0c463f9fa2858fd615ef41e731eb24b135376e832930986106d2e7f8d380` |
| 9 | `structure` | [JetSheaf](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/jetsheaf--4caf6da93663c16e03fdc4b9.md) | 135 | `declaration-track:4caf6da93663c16e03fdc4b964559eb554bf173a760cab796a4972711ab52322` |
| 10 | `def` | [transport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/transport--6b633d574e02a2c1cce73b28.md) | 173 | `declaration-track:6b633d574e02a2c1cce73b28b3a7330ff2c9f0c7160b55d77ba65cfa6a0e4d36` |
| 11 | `theorem` | [path_frequency_lt](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/path-frequency-lt--873bf6cc3a011761c50c760d.md) | 180 | `result-track:873bf6cc3a011761c50c760dccc3502b77b86323e0e21b3c73dde8305dd9f768` |
| 12 | `theorem` | [transport_effective_intertwines](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/transport-effective-intertwines--ab27d538c338177fa27b2201.md) | 187 | `result-track:ab27d538c338177fa27b2201df6e6de2983d0cdcb91b11fa1605544d23fb042a` |
| 13 | `theorem` | [transport_coefficient_intertwines](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/transport-coefficient-intertwines--82c098c8784e906f034dd0fb.md) | 202 | `result-track:82c098c8784e906f034dd0fbed97a4e595b887b3540d0faae7d0ec3a5c9032aa` |
| 14 | `theorem` | [transport_sigma_intertwines](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/transport-sigma-intertwines--637f3079fd9c583866534c1f.md) | 217 | `result-track:637f3079fd9c583866534c1f393ce017c7bb27dfc9e7d5fd438b05c994569938` |
| 15 | `theorem` | [transport_tau_intertwines](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/transport-tau-intertwines--9df4a79cf76119a58cd58295.md) | 231 | `result-track:9df4a79cf76119a58cd58295f12de95b0e663eb8f278c28d0a2e79efb338261a` |
| 16 | `structure` | [CompatibleSectorZero](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/compatiblesectorzero--42a2436722778b8d25ed5cd8.md) | 250 | `declaration-track:42a2436722778b8d25ed5cd80aaec461007878c3a7d763ac393592d46601c23c` |
| 17 | `def` | [globalSchurZeroSupport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/globalschurzerosupport--cd50e4ba99a8416d768fa5c3.md) | 263 | `declaration-track:cd50e4ba99a8416d768fa5c362a68dc169874dfb096f2b3cb0c8e325e89a8d8f` |
| 18 | `theorem` | [glue](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/declarations/glue--3c08657a18548eea538a06c4.md) | 272 | `result-track:3c08657a18548eea538a06c4730e05c6941c8699fc70e36612a402df6c6bffed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
