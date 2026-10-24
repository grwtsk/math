# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineGauge.Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d20e6b51feb1f0b93852e06cf341a006bf734e6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d20e6b51feb1f0b93852e06cf341a006bf734e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AnalyticDispersion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Const` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineGauge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge--d10d68f0584132c40da0ec00.md) | 43 | `declaration-track:d10d68f0584132c40da0ec006e9ee5bf5603d41d8b63211fb20a1c322ca21730` |
| 2 | `theorem` | [affineGauge_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-potential--754e681630d279c3ddf1b35d.md) | 65 | `result-track:754e681630d279c3ddf1b35d41d4650145fb20069ee6f5cea2f6abe5c6f0e870` |
| 3 | `theorem` | [affineGauge_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-gradient--474dafb0e1e74ef7da7fca04.md) | 72 | `result-track:474dafb0e1e74ef7da7fca04aeb27ee2938e726253a04ce1526ad39d5cc9d66e` |
| 4 | `theorem` | [affineGauge_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-hessian--abdbe6af95daaed460f4ad2f.md) | 79 | `result-track:abdbe6af95daaed460f4ad2f2a240103b27971621e309727fc109f72463ff09c` |
| 5 | `theorem` | [affineGauge_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-dispersion--65f35b1a3a5bff5f4e81e696.md) | 85 | `result-track:65f35b1a3a5bff5f4e81e69685c8846ba194dfb564f89d14172bff50f4b66ea7` |
| 6 | `theorem` | [affineGauge_potential_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-potential-sub--7bd11aca4ec9d8c3abda005e.md) | 91 | `result-track:7bd11aca4ec9d8c3abda005ef8b0c32b0443f5bbf6b53bb692926988936effa2` |
| 7 | `theorem` | [affineGauge_gradient_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-gradient-sub--2e06e6d37c819dd977d5e053.md) | 99 | `result-track:2e06e6d37c819dd977d5e05368d58c587f620dae5afc36986998badf5d7a1b62` |
| 8 | `theorem` | [fderiv_affineGauge_potential_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/fderiv-affinegauge-potential-eq--e1fc4c6ee2ae969ce4a48632.md) | 107 | `result-track:e1fc4c6ee2ae969ce4a4863278f46e16b61ac9e556569a172271661a0318642b` |
| 9 | `theorem` | [fderiv_affineGauge_gradient_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/fderiv-affinegauge-gradient-eq--52a1fc93c200850f443cc762.md) | 115 | `result-track:52a1fc93c200850f443cc76250911500349b7c74b700ac6569abb2d81712e505` |
| 10 | `theorem` | [affineGauge_geometryAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-geometryat--64ef1f5951554728a021c641.md) | 123 | `result-track:64ef1f5951554728a021c641c10904c3c49b99de4549eb81f1ee9b17c101e55d` |
| 11 | `theorem` | [affineGauge_hessian_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-hessian-quadratic--b0929b77a71173dc538f93cc.md) | 129 | `result-track:b0929b77a71173dc538f93ccb0ae700bdf82e61f715f17beec9a042be9eae9bf` |
| 12 | `theorem` | [affineGauge_visible_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-visible-iff--3be7e590a4eca200768e4d98.md) | 136 | `result-track:3be7e590a4eca200768e4d98a2918a193cd29c40e0598a0def8ee167531783a0` |
| 13 | `theorem` | [affineGauge_isNull_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-isnull-iff--c5703f0b156ef15a68c8728e.md) | 143 | `result-track:c5703f0b156ef15a68c8728ee63ca7a316897e663d78d7a27fccd5d3b0ad60ba` |
| 14 | `def` | [SameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/samedispersiongeometry--7ba8c43d84106fefe1288816.md) | 151 | `declaration-track:7ba8c43d84106fefe1288816320430d03e85828a642fbccb211f2defac549430` |
| 15 | `theorem` | [SameDispersionGeometry.refl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/samedispersiongeometry-refl--7be9508a9aa22990fa673da4.md) | 155 | `result-track:7be9508a9aa22990fa673da4e4f4b56884e9a53ee58ffb6b0734c574ac115c6b` |
| 16 | `theorem` | [SameDispersionGeometry.symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/samedispersiongeometry-symm--576d1de1ffb3faeffdae513d.md) | 161 | `result-track:576d1de1ffb3faeffdae513d2a0c97d21c66f7b02fbb059e70d30e3a70932eda` |
| 17 | `theorem` | [SameDispersionGeometry.trans](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/samedispersiongeometry-trans--3fc618c96655d9866c0bb37d.md) | 168 | `result-track:3fc618c96655d9866c0bb37da42c51a29f15a6b440f492fdffea27cb27aa1c84` |
| 18 | `theorem` | [affineGauge_sameDispersionGeometry](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-samedispersiongeometry--4544857e0a3d517b49c8c7e0.md) | 177 | `result-track:4544857e0a3d517b49c8c7e011d0f3b51581faea7fc8bc31313619612a504a88` |
| 19 | `theorem` | [ofAffineGauge_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/ofaffinegauge-eq--acafb7e5b259e4a3ad27dbe7.md) | 196 | `result-track:acafb7e5b259e4a3ad27dbe7e95dd2e15e6ed12285c5dd798db29c2c30f578b9` |
| 20 | `theorem` | [affineGauge_three_phase_energy_chain](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineGauge/Variant7413216080e939c6be7173fb5351b576a4adbd9fb653492c7457556ff1bb92d5.lean/declarations/affinegauge-three-phase-energy-chain--9736fc42b241f6d8f417bd17.md) | 210 | `result-track:9736fc42b241f6d8f417bd17afed911b3109b83edb2003b39d2f51ad2dca0b96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
