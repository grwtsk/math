# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Fourier.Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d918a742a66d8ffe42105e5d16b8ad8d377050c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d918a742a66d8ffe42105e5d16b8ad8d377050c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Sobolev` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/instance--795fc9b95d12e5966c438c6a.md) | 32 | `declaration-track:795fc9b95d12e5966c438c6acfaf7d35607ac331d2ed46ef9b80a54e2348569f` |
| 2 | `theorem` | [nnnorm_eq_of_mem_circle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/nnnorm-eq-of-mem-circle--c5a7c14c595ee6458a37a81e.md) | 37 | `result-track:c5a7c14c595ee6458a37a81e975928f9380026337af47f44621cf8ccda7c68de` |
| 3 | `theorem` | [nnnorm_circle_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/nnnorm-circle-smul--9dc2b93b76565ab9739c5db2.md) | 40 | `result-track:9dc2b93b76565ab9739c5db2f0f4014c5913744eeef6ce537c8063a15a0b42cc` |
| 4 | `def` | [e](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/e--c8f824e439badf926f418809.md) | 43 | `declaration-track:c8f824e439badf926f418809ef8744342e8eff059667cee55dc6bcbf1644d21f` |
| 5 | `lemma` | [e_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/e-apply--3e54e248f23ff31cf193086a.md) | 48 | `result-track:3e54e248f23ff31cf193086a71ea98317c808f78519d54a69add1ebf6a3fbcd9` |
| 6 | `theorem` | [hasDerivAt_e](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/hasderivat-e--c1acf81ee9a4370e5b5ddfff.md) | 50 | `result-track:c1acf81ee9a4370e5b5ddfff257f43bcc28b81762634aaf2cbf1dbe538586354` |
| 7 | `lemma` | [fourierIntegral_deriv_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/fourierintegral-deriv-aux2--0c9a4a7a83849b9265677583.md) | 57 | `result-track:0c9a4a7a83849b926567758328c1b89ed85bfbfd0cdad7e600d3f6af5a9936e8` |
| 8 | `lemma` | [F_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/f-neg--75ef93303e69607eb7ca5365.md) | 61 | `result-track:75ef93303e69607eb7ca5365c41acc436797aad687fe6046a8152af6656a498b` |
| 9 | `lemma` | [F_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/f-add--f1c84d7ecf720d51f4f5cc1b.md) | 64 | `result-track:f1c84d7ecf720d51f4f5cc1b0cf9d820dd8dbf3f2253b43a1b90981f6957f2a0` |
| 10 | `lemma` | [F_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/f-sub--ecb4069fd0b0177b6b1ff0ea.md) | 70 | `result-track:ecb4069fd0b0177b6b1ff0eae1417ba9d5b514e375036ecec8af95c0caa3f8b5` |
| 11 | `lemma` | [F_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/f-mul--afa136a45d8a01be948ded01.md) | 74 | `result-track:afa136a45d8a01be948ded014eb3dcf57bc654a122a9816d5a6c8f73a4bc3bfd` |
| 12 | `theorem` | [fourierIntegral_self_add_deriv_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/fourierintegral-self-add-deriv-deriv--3775ef405601a7ad69d33525.md) | 80 | `result-track:3775ef405601a7ad69d335256ee63352447984061977c4375b3577097ba8ea76` |
| 13 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/deriv-ofreal--ba3a5917e7217e668b41abf2.md) | 90 | `result-track:ba3a5917e7217e668b41abf2bf40c7f8f7649e6154a7e65e6df9fcfe85046952` |
| 14 | `lemma` | [tendsto_intervalIntegral_zero_of_uniform_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/tendsto-intervalintegral-zero-of-uniform-norm-bound--dba3116953fdc90128e8b55f.md) | 95 | `result-track:dba3116953fdc90128e8b55f32c62c4c23e5e4f5b58c183768fcf0daeaf2671f` |
| 15 | `lemma` | [tendsto_const_mul_log_add_two_div_add_two_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/tendsto-const-mul-log-add-two-div-add-two-attop--537017db5e98cf98fb35e369.md) | 106 | `result-track:537017db5e98cf98fb35e369181700dbaf4eb5716158d29f85342bc36543386b` |
| 16 | `lemma` | [norm_fourier_le_integral_deriv_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/norm-fourier-le-integral-deriv-div--38cfd08f7319c5c4a2da754f.md) | 119 | `result-track:38cfd08f7319c5c4a2da754f85c996fa31d93c5386ac8b0d47e2ff63c8456f41` |
| 17 | `lemma` | [norm_oscillatory_integral_le_integral_deriv_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/norm-oscillatory-integral-le-integral-deriv-div--07d9024b01ff6e81fe9317a6.md) | 148 | `result-track:07d9024b01ff6e81fe9317a6161df33cb53633f90a428fad3caa21af509fa21b` |
| 18 | `lemma` | [norm_oscillatory_integral_le_integral_deriv_div_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Fourier/Variant7572e3419bec208ad11eb84c32a06d155d0a95c361a03c3e69fa1df40ccef433.lean/declarations/norm-oscillatory-integral-le-integral-deriv-div-abs--4d68ef823cb0407e946c792f.md) | 180 | `result-track:4d68ef823cb0407e946c792f310acb64c073b7605068a1f57e39f717ff767797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
