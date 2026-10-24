# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb009aa3df346991f70779a0bc22b2a761877571",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb009aa3df346991f70779a0bc22b2a761877571`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenGramForm`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenGramForm.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenResidualComplex](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenresidualcomplex--ac7d2c6248d9ca754a69355a.md) | 42 | `declaration-track:ac7d2c6248d9ca754a69355a4fd1b0101bbafe16c0eb9505b5313112375d5f1e` |
| 2 | `theorem` | [greenResidualComplex_memLp_Ioc](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenresidualcomplex-memlp-ioc--f98265eb3453a1895a992c9a.md) | 45 | `result-track:f98265eb3453a1895a992c9a880749fc8f26e9a0f5b0c4046e194b9c3dae006a` |
| 3 | `def` | [greenResidualFourierCoeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenresidualfouriercoeff--646c1952c0db15fbab1ec0b6.md) | 66 | `declaration-track:646c1952c0db15fbab1ec0b6dfc103946e4719e4fe3483a56ba7f6d32248e8d5` |
| 4 | `theorem` | [greenResidualComplex_interval_norm_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenresidualcomplex-interval-norm-sq--961f2b1293ace44820b0beeb.md) | 70 | `result-track:961f2b1293ace44820b0beeb32b0f24794f2684237af1cbd80e1ae65d950eb0f` |
| 5 | `theorem` | [greenResidualFourier_parseval_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenresidualfourier-parseval-hassum--3615d1a335c0de6a8c254850.md) | 80 | `result-track:3615d1a335c0de6a8c2548508936822d7b5a04550556c3e10146579bc5ddb38c` |
| 6 | `def` | [greenFourierShellEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfouriershellenergy--26d05025b2878435c01eb7a1.md) | 92 | `declaration-track:26d05025b2878435c01eb7a10a5d69e50c0f75a49fe46be3b0e22022ae389f3e` |
| 7 | `theorem` | [greenFourierShellEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfouriershellenergy-nonnegative--4793194025dc1b17bd76c16a.md) | 96 | `result-track:4793194025dc1b17bd76c16a87e34ed676f22b34e02b8d340f69564652390daf` |
| 8 | `theorem` | [greenFourierShellEnergy_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfouriershellenergy-hassum--1552d7338b263cca25b2d4e8.md) | 102 | `result-track:1552d7338b263cca25b2d4e8e3ed771dd61feedd73b86a856efc1696bf86626c` |
| 9 | `def` | [greenFourierHeadEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfourierheadenergy--cb2ecc7471b10cd99221cbbe.md) | 107 | `declaration-track:cb2ecc7471b10cd99221cbbebf561be445bf44f6d21abd343d0c1695ae22fe7c` |
| 10 | `theorem` | [greenFourierHeadEnergy_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfourierheadenergy-nonnegative--4ad9c26d4f90e16cb0dc0eb2.md) | 110 | `result-track:4ad9c26d4f90e16cb0dc0eb283cf1f728b100c377dabddf6cf27dc8d90f94b62` |
| 11 | `theorem` | [greenFourierHeadEnergy_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfourierheadenergy-mono--3790edfd222f7fad8d4d6928.md) | 117 | `result-track:3790edfd222f7fad8d4d69287bbd1b419951c54a4d2fdbff5b843f9f7cf43869` |
| 12 | `theorem` | [greenFourierHeadEnergy_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfourierheadenergy-tendsto--16716f2b73bc7c5bf4bb902c.md) | 126 | `result-track:16716f2b73bc7c5bf4bb902c7cefca2385192a4b84f94a305744813eb5f597f3` |
| 13 | `theorem` | [greenFourierHeadEnergy_le_greenEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/greenfourierheadenergy-le-greenenergy--05e8d199b4dbed8a0e9e5d07.md) | 131 | `result-track:05e8d199b4dbed8a0e9e5d070eacf0d6a0a73fc77e3074c33b7da6d99bef20d4` |
| 14 | `def` | [fullGreenFourierStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/fullgreenfourierstage--f9b8a32d74c7b13b09af48f9.md) | 141 | `declaration-track:f9b8a32d74c7b13b09af48f9903b9a4e47e1208c28897942608ccd1104ef765a` |
| 15 | `theorem` | [fullGreenFourierStage_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/fullgreenfourierstage-nonnegative--5e27afc696f066f05a074d35.md) | 144 | `result-track:5e27afc696f066f05a074d3518ce485ee5eea5c8d31bf329d8e420fb07947509` |
| 16 | `theorem` | [fullGreenFourierStage_mono](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/fullgreenfourierstage-mono--f3e1fbb030a53fd3580254c1.md) | 150 | `result-track:f3e1fbb030a53fd3580254c10f3d39b172ad72aa5695f02832918d9d502b541e` |
| 17 | `theorem` | [fullGreenFourierStage_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/fullgreenfourierstage-tendsto--79c8df2929b9403eb4c91ca4.md) | 157 | `result-track:79c8df2929b9403eb4c91ca42eda4f69b6b103eb0981ef912714c743bc89d1f9` |
| 18 | `theorem` | [fullGreenFourierStage_le_augmentedEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierFrame.lean/declarations/fullgreenfourierstage-le-augmentedenergy--dfb9e215470c7ea8958f0f90.md) | 172 | `result-track:dfb9e215470c7ea8958f0f90c6c7414c2a6305490e361255915cb436b266e0bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
