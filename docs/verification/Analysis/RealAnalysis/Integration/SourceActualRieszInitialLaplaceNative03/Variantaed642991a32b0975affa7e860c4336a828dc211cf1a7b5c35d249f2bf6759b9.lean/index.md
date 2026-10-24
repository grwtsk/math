# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative03.Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f62dbd16ba49afad2ca876950dd5da5fa10d2d0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f62dbd16ba49afad2ca876950dd5da5fa10d2d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realrampantiderivative--49811ee104a647c5764c9304.md) | 28 | `declaration-track:49811ee104a647c5764c930465c12902bace5601dd29f34f1a1a3030722dc494` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realrampantiderivative-hasderivat--abdb505d0f66bdf8f1c5542d.md) | 31 | `result-track:abdb505d0f66bdf8f1c5542d5ffb6befe8ec29689f4c4f902333c52a32202461` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realrampantiderivative-tendsto--e03e7502b842d12da03b9011.md) | 41 | `result-track:e03e7502b842d12da03b9011614d37977eb86c60b712262bcbadfd3c264e9561` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realramp-tail-integrable--73833a9ec79f77bc3eeb6809.md) | 55 | `result-track:73833a9ec79f77bc3eeb6809f1ffefe7e0223232bd14cc0b700f9d5b1823d69d` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realramp-tail-integral--4307d1eaf64efe8360c5e4d4.md) | 63 | `result-track:4307d1eaf64efe8360c5e4d49761365694cd11601ddf26c99da4b78a13203f8a` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/zeroon-lower-integrable--6a35f26e510779ab4d1fd6cc.md) | 70 | `result-track:6a35f26e510779ab4d1fd6cc4f3a44471c99ceb6b0a56797400a92098e7c5cb5` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realramp-integrable--d70cc59f99435d5b27b04a79.md) | 76 | `result-track:d70cc59f99435d5b27b04a79c188b9e2adfd0394f7f8265ed5bc30bffb7ce273` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/realramp-integral--901acaa98170073614077fbf.md) | 86 | `result-track:901acaa98170073614077fbfb54a70459dcd01c64752f1737ed2ce5e1117d65b` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/complexramp-norm--b935d0c9524d25de2cc9683d.md) | 104 | `result-track:b935d0c9524d25de2cc9683d279590270e3085432714f115e246b49261bb4d8b` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualsinglerieszramp-integrable--9f83e5404196429e72c2177c.md) | 113 | `result-track:9f83e5404196429e72c2177c5295050a2164e9e450cdebd8684101bb6ca92992` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualsinglerieszramp-integral-norm--23135258cd333c496b87c210.md) | 123 | `result-track:23135258cd333c496b87c210c8b8d213d597b52d565763334ce4a3fdf6338b58` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/complexrampantiderivative--966562e7d117d814c3146787.md) | 129 | `declaration-track:966562e7d117d814c314678732df49cbc026047caa533d5af8355efc3d265603` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/complexrampantiderivative-hasderivat--c3773e053e17aa8c23c5956d.md) | 132 | `result-track:c3773e053e17aa8c23c5956d20baaee685764ede6f10ce43e804e831cd16fd69` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/complex-exp-monomial-zero--a38e155286124990971bf320.md) | 143 | `result-track:a38e155286124990971bf320e9ab2310bdca6c4951501b4b94dfaa01575a58ba` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/complexrampantiderivative-tendsto--b4ea23b4822a9438addb2a01.md) | 157 | `result-track:b4ea23b4822a9438addb2a01af8063cf493d03e13be4220d206b2223842c6a01` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualsinglerieszramp-integral--8b0b2a3ae8e69d3e9e2b4aa8.md) | 171 | `result-track:8b0b2a3ae8e69d3e9e2b4aa87a94a8fd70a93ff50a430840257d74feaca319cf` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualrieszlaplaceatom--d3a258a011bbac07e7c80409.md) | 204 | `declaration-track:d3a258a011bbac07e7c80409d4ce14a0a4e47e194e03645d4ead1b70b121450b` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualmangoldtrieszlaplace--5e5c87483d0803f15ed8293f.md) | 209 | `declaration-track:5e5c87483d0803f15ed8293ffb0c0f958bdc4c60394860bc105a35f3f21c8c30` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/atom-factor--234b9ae49cfe50ba14592c10.md) | 213 | `result-track:234b9ae49cfe50ba14592c1002cc6c8d225319f91503c33896ebd502e3cc7777` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualrieszlaplaceatom-integrable--eeb477f8a038473edc732d35.md) | 222 | `result-track:eeb477f8a038473edc732d3524e0d39c0d9ecf253b14c0589532cb8f7af874ec` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualrieszlaplaceatom-integral-norm--539334f1237fdcf9ba7263d9.md) | 232 | `result-track:539334f1237fdcf9ba7263d946151951c3c8f928a6507a5c1557af2f44cb2abc` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--b3b04a2e3e91fa3ba04638f8.md) | 262 | `result-track:b3b04a2e3e91fa3ba04638f89617b6280e8ab77dc93b63813aa2ac0b4784d83d` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean/declarations/actualrieszlaplaceatoms-tsum--ea64264d27a89b0070c39354.md) | 272 | `result-track:ea64264d27a89b0070c393541baddf26c18f9fa9e1aedb296385838313203e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
