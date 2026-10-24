# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullQuadraticOperator.Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a1edfa74e59acbb63af5e65023726b7fee1288a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a1edfa74e59acbb63af5e65023726b7fee1288a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hilbert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/hilbert--f7b2e6dbbb3cac5c5e840773.md) | 31 | `declaration-track:f7b2e6dbbb3cac5c5e8407733d3e07078daacfb3f5fc1afa5fc7d2b0f795c335` |
| 2 | `def` | [sourceFourierVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/sourcefouriervector--f6a0596d7f3cfec63bc6ef68.md) | 34 | `declaration-track:f6a0596d7f3cfec63bc6ef682aab16cca852923526a467d103516932fbf96fab` |
| 3 | `theorem` | [source_fourier_vector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-fourier-vector-norm-sq--93a7e64e110b3eeee40146aa.md) | 38 | `result-track:93a7e64e110b3eeee40146aa48a7b2c13817e49b30969dd35b8a7073881a5f5e` |
| 4 | `theorem` | [source_fourier_vector_mem_lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-fourier-vector-mem-lp--03ea976e05445a158e3cdc2f.md) | 45 | `result-track:03ea976e05445a158e3cdc2f86e739792d549c960812053ccb58fba4ab82eff4` |
| 5 | `def` | [sourceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/sourcevector--8ac7d0d166b266bce41303ff.md) | 54 | `declaration-track:8ac7d0d166b266bce41303ffe2f7cbb90d7c4d21b56c6907ef3b33a3b1181570` |
| 6 | `theorem` | [source_vector_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-vector-ae-eq--540089bbbb6cc9061a40dc60.md) | 58 | `result-track:540089bbbb6cc9061a40dc604eea7942640700030ce98802ff264cb181a6701d` |
| 7 | `theorem` | [source_vector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-vector-norm-sq--4126db81525b25fdf17bf11b.md) | 63 | `result-track:4126db81525b25fdf17bf11bab821f87f4c20859d42426f57efa639f5ea9a923` |
| 8 | `theorem` | [source_vector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-vector-norm--81178bddd8b49987de974c49.md) | 79 | `result-track:81178bddd8b49987de974c491ef3c104e4676e52ded040b69395518117f45f0c` |
| 9 | `def` | [GammaFormDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/gammaformdomain--8f37097fdae47680e4a3e101.md) | 83 | `declaration-track:8f37097fdae47680e4a3e101926a962b4c608281fd8230c26fe43be78be12f87` |
| 10 | `def` | [fullQuadraticForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/fullquadraticform--fb832260a1998e8b30225387.md) | 87 | `declaration-track:fb832260a1998e8b30225387e4f2096d1b69224a69205b379160b1b5d4c7fcf1` |
| 11 | `def` | [fullSesquilinearForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/fullsesquilinearform--7d7a356eab2c5fb8a1bdf150.md) | 91 | `declaration-track:7d7a356eab2c5fb8a1bdf15004e4a1c74531a1b154cb136116639ba774344b6a` |
| 12 | `theorem` | [hilbert_norm_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/hilbert-norm-sq-integrable--25332535bf39f33b2982f1b6.md) | 95 | `result-track:25332535bf39f33b2982f1b613e96f754cc240e471780200f99d6f0aeedc2e67` |
| 13 | `theorem` | [gamma_form_domain_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/gamma-form-domain-zero--d93f1585db35a6057d1659ac.md) | 101 | `result-track:d93f1585db35a6057d1659ac1e586ed1fb2450eeb4313a87b3cb2acf4ccdf430` |
| 14 | `theorem` | [gamma_form_domain_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/gamma-form-domain-smul--eb09fd02f3ed669156538ac3.md) | 105 | `result-track:eb09fd02f3ed669156538ac343328cf2b7ed887b62a667f199e1cce7d44e6f61` |
| 15 | `theorem` | [gamma_form_domain_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/gamma-form-domain-add--47c3458eb3007e634da04979.md) | 113 | `result-track:47c3458eb3007e634da04979c82def0ce2378ca8ef1793c7e10b724b805ab531` |
| 16 | `def` | [gammaFormSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/gammaformspace--bc3a6044df6b7309344563db.md) | 138 | `declaration-track:bc3a6044df6b7309344563db11648a811fa4c2cd5c477de40e9938ab3ff36d02` |
| 17 | `theorem` | [cosine_multiplier_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/cosine-multiplier-abs-le--da63ad0f8c3a315925a2925b.md) | 145 | `result-track:da63ad0f8c3a315925a2925b7daea6455aae5644f6e99bfff15fe92961e26b4e` |
| 18 | `theorem` | [cosine_multiplier_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/cosine-multiplier-continuous--57ff5c2d7bfedce3de72ea2e.md) | 153 | `result-track:57ff5c2d7bfedce3de72ea2e504371a615ecd8cbf0772f2cd99e20c0a5d6e54d` |
| 19 | `theorem` | [spectral_multiplier_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/spectral-multiplier-continuous--5706b250806457446a937f50.md) | 158 | `result-track:5706b250806457446a937f5078ccc0446aa736eb78c611d08c6cbea92c0f7ab4` |
| 20 | `theorem` | [full_absolute_quadratic_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-absolute-quadratic-integrable--2d729929efaa00dece40d164.md) | 162 | `result-track:2d729929efaa00dece40d16456d49eaaea7eb753676bec690f8fbf201f7a27cc` |
| 21 | `theorem` | [full_quadratic_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-quadratic-integrable--f41735f3a4f84e0d1280a5aa.md) | 181 | `result-track:f41735f3a4f84e0d1280a5aaf2216aa2182c8524eeef4c22f12eb8fcc5bdc4d0` |
| 22 | `theorem` | [full_sesquilinear_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-integrable--0f81155402c78d12f211a457.md) | 191 | `result-track:0f81155402c78d12f211a4573c7d587dcd2df045b032b35995130d16871789c1` |
| 23 | `theorem` | [full_sesquilinear_hermitian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-hermitian--694b2adf1caf894dc2afe7cf.md) | 214 | `result-track:694b2adf1caf894dc2afe7cf536ccaa5ed44618a6c26cf68b58c6f51a53ff01e` |
| 24 | `theorem` | [full_sesquilinear_diagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-diagonal--8d7c2093b99805b615b50f17.md) | 223 | `result-track:8d7c2093b99805b615b50f17e0bd902241c07b87d7ed052d5fc16bf552b1f40d` |
| 25 | `theorem` | [full_sesquilinear_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-add-right--7526246ef932e53e08759839.md) | 235 | `result-track:7526246ef932e53e08759839fe446a816ba8c4bcbb286da63aa7db80e14d82cd` |
| 26 | `theorem` | [full_sesquilinear_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-smul-right--ad135785f704132b23a8b9d0.md) | 250 | `result-track:ad135785f704132b23a8b9d036fefd06055bffde911ea2fa134a013995cb44d5` |
| 27 | `theorem` | [full_sesquilinear_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-add-left--f8826e746e1dd3bdccd6d676.md) | 262 | `result-track:f8826e746e1dd3bdccd6d6764888d5f3cd3265a674d477c15114728a7cfbfa5b` |
| 28 | `theorem` | [full_sesquilinear_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/full-sesquilinear-smul-left--fe9749beba093d58d29b8444.md) | 273 | `result-track:fe9749beba093d58d29b8444e9df46b60a82a9b39969018483c1c50ba3684173` |
| 29 | `theorem` | [source_vector_gamma_form_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-vector-gamma-form-domain--165045b153352025a59a5d2e.md) | 281 | `result-track:165045b153352025a59a5d2e31604d2793884bc70b404a530822e731cd9f711d` |
| 30 | `theorem` | [source_quadratic_eq_full_form](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/declarations/source-quadratic-eq-full-form--4ad62e2cd57e983f8434b2f1.md) | 290 | `result-track:4ad62e2cd57e983f8434b2f1b83d9ac93cdae075c5f0cadb699df5c90c549468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
