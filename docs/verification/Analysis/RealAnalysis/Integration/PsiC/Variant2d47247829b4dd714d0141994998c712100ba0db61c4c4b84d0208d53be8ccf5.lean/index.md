# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PsiC.Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8942815d10d4b5f6e37bba5fb2264ca25fc626f7",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8942815d10d4b5f6e37bba5fb2264ca25fc626f7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiC](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psic--6f131251e42e9ae378eb3a2a.md) | 28 | `declaration-track:6f131251e42e9ae378eb3a2a4a995c6b38639a27de0e89d0cac604d3306cb02e` |
| 2 | `lemma` | [psiC_eq_psiA](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psic-eq-psia--833a410d935fa4f60ab49ca3.md) | 31 | `result-track:833a410d935fa4f60ab49ca3f0130a8bf4e63c654388e0deb2c08d5a2e30dec0` |
| 3 | `theorem` | [psi_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-nonneg--50bfa2fce24e2cae018aeff8.md) | 34 | `result-track:50bfa2fce24e2cae018aeff8370660bf92e30b5989a851265e84db20beb51b4b` |
| 4 | `theorem` | [psi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-even--823b0db958b38f1b12ef78ed.md) | 43 | `result-track:823b0db958b38f1b12ef78ed5048f6247c669074a4c01683ea9e3700ec80dfaa` |
| 5 | `theorem` | [psi_le_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-le-l--0addb0a9ded66c7c42db9493.md) | 46 | `result-track:0addb0a9ded66c7c42db9493481352ae2df644e385d547f98f2df024c39dfa2d` |
| 6 | `theorem` | [psi_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-mul-abs-le--c15b58092c764d91a9e4e002.md) | 53 | `result-track:c15b58092c764d91a9e4e00204c628f2d7d18b3bbabca53ad13d3f863774f2c3` |
| 7 | `theorem` | [psi_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-mul-sq-le--1b1e239e9cd308075dffe05d.md) | 62 | `result-track:1b1e239e9cd308075dffe05da62ca956c4537fff0c8a97303f956aa06529e920` |
| 8 | `theorem` | [psi_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-abs--e29b376c32c8b7d577b892fa.md) | 75 | `result-track:e29b376c32c8b7d577b892fa0065368aa72c3b00b3c11fd0519c2d28644bfe90` |
| 9 | `theorem` | [psi_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-measurable--796e77adc6bc86b6909eb76c.md) | 79 | `result-track:796e77adc6bc86b6909eb76c196403a3ac85b9d785890d126c242724d39435bc` |
| 10 | `theorem` | [psi_le_rpow_neg_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-le-rpow-neg-two--c323a6752f458ebeefa5cb8c.md) | 93 | `result-track:c323a6752f458ebeefa5cb8c98dabd56f7fa3bab00137b9c145d76121252cbfc` |
| 11 | `def` | [psiMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psimaj--79d615a8416384a7ee3b726b.md) | 101 | `declaration-track:79d615a8416384a7ee3b726b4a9c8c47f5fb4369764e90cec626f5c66230f5de` |
| 12 | `theorem` | [psiMaj_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psimaj-integrable--a889f96748b5756d5f354369.md) | 106 | `result-track:a889f96748b5756d5f3543697fe1822d8aec39ea3f7386337b8846c4a8b2be5d` |
| 13 | `theorem` | [psi_le_psiMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-le-psimaj--f655da6baa47e18e4c87642f.md) | 115 | `result-track:f655da6baa47e18e4c87642f46c951601bae79b5718b80fa93043b5a8f547cb3` |
| 14 | `theorem` | [psiints_consts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psiints-consts--a841303b9a2529434ac396cd.md) | 149 | `result-track:a841303b9a2529434ac396cdfcdcd7f996c96a99fc34ec9806e525f2ac2c1b0d` |
| 15 | `theorem` | [indicator_psi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/indicator-psi-le--802247ccc6e3580df5c904f8.md) | 161 | `result-track:802247ccc6e3580df5c904f883d62751d567b2db00d0b89b56d475396184cc55` |
| 16 | `theorem` | [integral_psi_Ioi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-psi-ioi-le--537ac3f1b3ceeb8700a20d06.md) | 203 | `result-track:537ac3f1b3ceeb8700a20d06c7174c252b86ceafef6e74a8316cbdd378fd6129` |
| 17 | `theorem` | [integral_psi_sq_mul_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-psi-sq-mul-abs-le--644cebea9a1d56a8658eccf8.md) | 259 | `result-track:644cebea9a1d56a8658eccf8a4602ef549c6f2a1c297084b419401707903300f` |
| 18 | `theorem` | [integral_psi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-psi-sq-le--47b989080c8457279c38ff36.md) | 366 | `result-track:47b989080c8457279c38ff367f0afe3ebe86fd2babecdc6caf8eb21653f189bc` |
| 19 | `theorem` | [psi_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-integrable--2796f36db5a908ccca33b613.md) | 429 | `result-track:2796f36db5a908ccca33b6134d765be2450f04a12855195abcc9c46d7fea9a71` |
| 20 | `theorem` | [psi_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-sq-integrable--11b3ca091c70f33c0041203e.md) | 437 | `result-track:11b3ca091c70f33c0041203e43a839fd3f32a96f9895696b89f1de4b215f14f5` |
| 21 | `theorem` | [psi_sq_mul_abs_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/psi-sq-mul-abs-integrable--1873b7f21abfd51219ce9199.md) | 447 | `result-track:1873b7f21abfd51219ce919966b52c812b73ad4e822cd26cbe441230b405a69a` |
| 22 | `theorem` | [integral_sq_mul_abs_le_of_le_psi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-sq-mul-abs-le-of-le-psi--f434a0aa347df1f33910e90c.md) | 461 | `result-track:f434a0aa347df1f33910e90c522413b829259a775e325b18b9f72db93993f006` |
| 23 | `def` | [momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/mommaj--4411182e0f1a25207d2b200d.md) | 473 | `declaration-track:4411182e0f1a25207d2b200dc8daa8904aeae6a91c0566060591c4ec42b1f1fc` |
| 24 | `theorem` | [momMaj_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/mommaj-integrable--62a06f7f0aba46ebbe334d39.md) | 478 | `result-track:62a06f7f0aba46ebbe334d399c76db0d867459a548c8a93224a4d7e920e93084` |
| 25 | `theorem` | [integral_momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-mommaj--572bcfdef6b3512f6b76e046.md) | 487 | `result-track:572bcfdef6b3512f6b76e046682c70ffe898dcbfe42ff475a7abaffdac26a2c5` |
| 26 | `theorem` | [sq_mul_sq_le_momMaj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/sq-mul-sq-le-mommaj--5c6fa91e7d451edfa49ee485.md) | 524 | `result-track:5c6fa91e7d451edfa49ee485bb5dcf1fa9ff354e5d687dbadf9f104306d13bdc` |
| 27 | `theorem` | [integrable_sq_mul_sq_of_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integrable-sq-mul-sq-of-bounds--c91fcf93ba6047ea14839d45.md) | 563 | `result-track:c91fcf93ba6047ea14839d450f2a6d4132f8af8fc951adfd9d0127d17a7aa469` |
| 28 | `theorem` | [integral_sq_mul_sq_le_of_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PsiC/Variant2d47247829b4dd714d0141994998c712100ba0db61c4c4b84d0208d53be8ccf5.lean/declarations/integral-sq-mul-sq-le-of-bounds--fff709a4795d46f09fbb83f6.md) | 570 | `result-track:fff709a4795d46f09fbb83f6da6dfe4eca0d7feb14092154fad21632a153c5c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
