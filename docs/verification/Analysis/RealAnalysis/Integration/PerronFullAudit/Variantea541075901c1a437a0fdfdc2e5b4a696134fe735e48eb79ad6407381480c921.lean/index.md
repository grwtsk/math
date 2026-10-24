# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PerronFullAudit.Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c08716e6ad2b68397f45d0dbd2735c2ca8ab11c0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/kernelintegrand-integrable-ioi-zero--6d720d5fcc31bbc0dc2ecc8c.md) | 18 | `result-track:6d720d5fcc31bbc0dc2ecc8cc7429a4667432e60acf276af410adb1f827850e8` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/integral-first-moment--c324329a94ddd41881ba6475.md) | 32 | `result-track:c324329a94ddd41881ba6475e77620c467e04110346bf02b1a0e5096e18428ca` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp--114d1b17ab0cb229441106a7.md) | 54 | `declaration-track:114d1b17ab0cb229441106a7a95bde1f67431d837a82fb30addd4b9452295d20` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp-continuous--5dde2e2616d8f74f9ef0ff3f.md) | 58 | `result-track:5dde2e2616d8f74f9ef0ff3fd2fb8109c3e6c5d911f291d8253ddcfb58bb9f1e` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp-eq-indicator--224cc589e0a3f6aae922164e.md) | 63 | `result-track:224cc589e0a3f6aae922164e278d4ccb04267cd0e25f24f1e325d34bfcfba859` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp-integrable--c3806c1f5284aca330bf9499.md) | 71 | `result-track:c3806c1f5284aca330bf9499e8bb45cca0fba2da596af826535c3d521bcd4d21` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp-fourier--7505a8256a0ecc6b62f9e05f.md) | 76 | `result-track:7505a8256a0ecc6b62f9e05f93f9a8b5d4841f3feeae3ece79a869e71344bd6b` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/reciprocal-square-integrable--ca67e74f6c12e9b5f828e8ca.md) | 95 | `result-track:ca67e74f6c12e9b5f828e8ca912247b9fd67a57c8aa6531061eaedbfc3a36304` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/dampedramp-fourier-integrable--ce6891a7645b8d5a68787112.md) | 109 | `result-track:ce6891a7645b8d5a687871121160fa820b908ff44427af1adc1806d829112039` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/perronintegrand--61bbcc8ce590aa81dad35261.md) | 121 | `declaration-track:61bbcc8ce590aa81dad35261d130946b848a4d5ea29205ee4b2fc82afc3f9bf7` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/perronintegrand-integrable--a198aa876e62ed5664c8dbc1.md) | 126 | `result-track:a198aa876e62ed5664c8dbc115f815c70667c4db7af3bed5ed318ba29bf11d8b` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/vertical-ramp-inversion--b5c33c0e2a90dac24e52cac1.md) | 139 | `result-track:b5c33c0e2a90dac24e52cac1ada71a3be77ddaebbcbce2f8277047fff724ddb7` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/elementary-perron-kernel--25816343263fbb7597b471b4.md) | 165 | `result-track:25816343263fbb7597b471b4e7e55e7ab4d14ec0d0f112b997a13d84e24391c3` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/elementary-perron-endpoint--e99bb74775c209479c3d4f5f.md) | 188 | `result-track:e99bb74775c209479c3d4f5f36a131959dd9b9661cf180d747c1266e49123fca` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variantea541075901c1a437a0fdfdc2e5b4a696134fe735e48eb79ad6407381480c921.lean/declarations/elementary-perron-ratio--3658987dc296faa85a89ddab.md) | 193 | `result-track:3658987dc296faa85a89ddab762d151d448a372b558d27fc9ef2e49227ebf129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
