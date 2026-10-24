# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4da2b82bcf448e61696d7c1f87424b02332028f5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionMainModel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4da2b82bcf448e61696d7c1f87424b02332028f5`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionMainModel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionMainModel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition`](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Totient` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachIntegerExponentialKernel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachintegerexponentialkernel--3e0cc94a09358618d593f4d9.md) | 43 | `declaration-track:3e0cc94a09358618d593f4d90c6847c173ab10497fe668fc770bca1a25196867` |
| 2 | `def` | [goldbachPrimeLogTotal](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprimelogtotal--c120cdc8ccee3a9c562afca9.md) | 47 | `declaration-track:c120cdc8ccee3a9c562afca919a976d0cbd862b29bf060b588ded403360851e1` |
| 3 | `def` | [goldbachCoprimeResidueMain](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachcoprimeresiduemain--ec3f9decf9bc924c8ebf4e9a.md) | 52 | `declaration-track:ec3f9decf9bc924c8ebf4e9a1a8b8355364515556abc7f2f8a014572896fe2ea` |
| 4 | `def` | [goldbachResidueProgressionDiscrepancy](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachresidueprogressiondiscrepancy--b11d5cd66d3e33ff3e75e0b5.md) | 62 | `declaration-track:b11d5cd66d3e33ff3e75e0b5627a361f71affa399cb544596b63677bb6b051a4` |
| 5 | `def` | [goldbachCoprimePhaseSum](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachcoprimephasesum--e645c1f5b0ffd48840c0d825.md) | 68 | `declaration-track:e645c1f5b0ffd48840c0d825640dc6372cacef0d73d51fff277db3d5f287d2ae` |
| 6 | `def` | [goldbachNormalizedRamanujanCoefficient](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachnormalizedramanujancoefficient--0285687db1049c6a80fefea6.md) | 73 | `declaration-track:0285687db1049c6a80fefea6d2af39a9c8b234eb28cc8b9c9ca10bcc9a242eb8` |
| 7 | `def` | [goldbachProgressionExponentialModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressionexponentialmodel--ff14f895608dfc3c667106f8.md) | 80 | `declaration-track:ff14f895608dfc3c667106f8e54c6933991b22f8a4fe694d050965072f1eda34` |
| 8 | `def` | [goldbachProgressionExponentialDiscrepancy](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressionexponentialdiscrepancy--72b5be8a100918a2f57b9a8d.md) | 86 | `declaration-track:72b5be8a100918a2f57b9a8d2270b7bd24ea3f073dd5db35f3deeafcd57bfbb9` |
| 9 | `def` | [goldbachProgressionCircleKernel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressioncirclekernel--08acc236d83fda190ce74ca3.md) | 94 | `declaration-track:08acc236d83fda190ce74ca3d99ee86848841d962609ded9da7a33f1d49ccc60` |
| 10 | `def` | [goldbachProgressionCircleModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressioncirclemodel--744e13f556946701041db03f.md) | 104 | `declaration-track:744e13f556946701041db03f8e7fbde8c405e717488a726fed01c8e58d243b6f` |
| 11 | `def` | [goldbachCenteredProgressionCircleResidual](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachcenteredprogressioncircleresidual--d0621186b257332bb21cec2e.md) | 111 | `declaration-track:d0621186b257332bb21cec2eb0bc0eb7c20493da0668341d64bf46f49bf58f69` |
| 12 | `def` | [goldbachProgressionCircleResidual](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressioncircleresidual--fa5e9877346a56a1ffd1997f.md) | 117 | `declaration-track:fa5e9877346a56a1ffd1997f5961464ccd51f9a1cc84857aa2d6dbed2bc80ce2` |
| 13 | `theorem` | [goldbachResidueClassPrimeSum_eq_main_add_discrepancy](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachresidueclassprimesum-eq-main-add-discrepancy--224f8fb6e30152e41e616223.md) | 124 | `result-track:224f8fb6e30152e41e61622331b10c8651733c5d3e3e5b749ea8472ea4e30ddb` |
| 14 | `theorem` | [goldbachPhaseWeightedResidueMain_eq_progressionModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachphaseweightedresiduemain-eq-progressionmodel--384c33d5e6a8e412e53bc08e.md) | 134 | `result-track:384c33d5e6a8e412e53bc08e826a1b5e0e0d7470e498bd56dcf19ee00bf53cf1` |
| 15 | `theorem` | [goldbachResidueClassExponentialKernel_eq_progression_add_discrepancy](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachresidueclassexponentialkernel-eq-progression-add-discrepancy--a64db0e28e61b436e1b6a103.md) | 153 | `result-track:a64db0e28e61b436e1b6a103e12850caff8178f41253e87f8ac011847ea001d4` |
| 16 | `theorem` | [goldbachProgressionExponentialDiscrepancy_eq_sub](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressionexponentialdiscrepancy-eq-sub--5d5b83f1f0c0a8e17a7fd016.md) | 166 | `result-track:5d5b83f1f0c0a8e17a7fd01634108b09eeaf31b14146484734731262e81ebdbf` |
| 17 | `theorem` | [goldbachCenteredProgressionCircleResidual_factor](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachcenteredprogressioncircleresidual-factor--57d79f90116d0d2bfec164ae.md) | 179 | `result-track:57d79f90116d0d2bfec164ae671c7881ccb26cad7efd9c8b57c21bd673f60e21` |
| 18 | `theorem` | [goldbachCircleIntegrand_eq_progressionModel_add_residual](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachcircleintegrand-eq-progressionmodel-add-residual--bfe23aba321714ffb785d06c.md) | 196 | `result-track:bfe23aba321714ffb785d06c2c78d9d7d919e18c50dea0744cc6c9cf910a9a46` |
| 19 | `theorem` | [goldbachProgressionCircleResidual_eq_centered](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressioncircleresidual-eq-centered--d0f489d16b319ea2d01d52bd.md) | 207 | `result-track:d0f489d16b319ea2d01d52bd545a98dcc9f10a6bfd7aec500aaa823403df465d` |
| 20 | `theorem` | [goldbachProgressionCircleResidual_at_center](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionMainModel.lean/declarations/goldbachprogressioncircleresidual-at-center--31d05cbcebf690426fa53079.md) | 225 | `result-track:31d05cbcebf690426fa530799b722b40e845fe4326c48b0230c5a06f4a56297c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
