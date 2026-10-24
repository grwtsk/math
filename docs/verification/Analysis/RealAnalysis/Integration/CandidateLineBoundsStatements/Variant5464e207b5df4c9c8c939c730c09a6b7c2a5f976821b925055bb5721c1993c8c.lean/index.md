# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLineBoundsStatements.Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ba947c446260b6aec236b1eab1cca430bbfdd87",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ba947c446260b6aec236b1eab1cca430bbfdd87`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/sourcepolynomial-leading-error--929274c6383c8c8bf6b1e31c.md) | 21 | `result-track:929274c6383c8c8bf6b1e31c13fa4655c4c6b498754163315d30f2c295d2b6c8` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/sourcetailgap-pos--7789e88e178f67d4dbdef61c.md) | 43 | `result-track:7789e88e178f67d4dbdef61c15f07fc1feaf825aea1b35f25b8cceaaa13b310f` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/sourceendpoint-tail-lower--5fe86459e5d126d7fb859e4c.md) | 48 | `result-track:5fe86459e5d126d7fb859e4cd1aca2486ac9e010a06d6ea4f5a290d8c5df9136` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/reducedw-closedformula--6d6b7901d07d169a7b730a06.md) | 96 | `result-track:6d6b7901d07d169a7b730a0661e2f6b51a9b1c97af33cdc19ae6f7f4884b5136` |
| 5 | `theorem` | [norm_add_half_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/norm-add-half-ge--0956ccc2ae703ad78a38ee6f.md) | 116 | `result-track:0956ccc2ae703ad78a38ee6f56d765a4d081eae71524a655a713acbd3849193b` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/reducedw-tail-lower--552f52c04a93730da95cbae1.md) | 126 | `result-track:552f52c04a93730da95cbae120b00e6ec2f1a6737cce47174268194987592c2a` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/reducedw-inverse-tail-bound--90320fe6a68a8721f0a49551.md) | 164 | `result-track:90320fe6a68a8721f0a49551f787991b8d84acad124129a028520386c6addf7f` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/reducedw-inverse-uniform-bound--bba6d558f3a5a058166c5dae.md) | 181 | `result-track:bba6d558f3a5a058166c5daee572a3f87137d74101eb809599e3ee8a396f3be6` |
| 9 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/quotientintegral--05fd32164e80a33860aa0a23.md) | 228 | `declaration-track:05fd32164e80a33860aa0a231768bf9b361cbaddf1ddf09ae1cd1544b281e169` |
| 10 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/quotient-integrand-integrable--d801eda82162bc96c9e005e1.md) | 233 | `result-track:d801eda82162bc96c9e005e14026901666b3bc8309091a5dd4f48624343553f1` |
| 11 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/quotientintegral-continuous--1724ce64af48d1d9f5505917.md) | 239 | `result-track:1724ce64af48d1d9f5505917a901d80f6eadc12e427983a588857dac576ad453` |
| 12 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/correctedquotient-eq-integral-of-ne--83f8f5fef6fce2167f378338.md) | 281 | `result-track:83f8f5fef6fce2167f3783383926f33c50440063e36c4fe4048e10e896d84cdd` |
| 13 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/correctedquotient-eq-integral--4f54ca849fe226fe2a670c4f.md) | 288 | `result-track:4f54ca849fe226fe2a670c4f7d6a49ae1ad416558d0861478867edf22911c658` |
| 14 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--ecd18b0665bd5bc86d5ddbbc.md) | 307 | `result-track:ecd18b0665bd5bc86d5ddbbcfa8c237fdb91f5f28d40220c7ed36707996816ec` |
| 15 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/mobiusreciprocalsum-floor-abs-le--73eee55620ba481ab09260a5.md) | 320 | `result-track:73eee55620ba481ab09260a5e8858caf9c943ba0ef40bd45db1779f96aab5cb1` |
| 16 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/quotient-integrand-norm-le--23adeb6b3aeabaf186836f7f.md) | 326 | `result-track:23adeb6b3aeabaf186836f7fd5085f0af4a69fd5170ba23344e1080ace865643` |
| 17 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/inverse-sqrt-integrable--ba25fc72dac6a31846d3b6f9.md) | 360 | `result-track:ba25fc72dac6a31846d3b6f9ae1636642ed9ea1b65f09b1a7a3180fcbe386945` |
| 18 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/integral-inverse-sqrt--128d095ae6bcbbf1bf36d022.md) | 367 | `result-track:128d095ae6bcbbf1bf36d022241c237953616e0851799f8c07b373800b1c822d` |
| 19 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/correctedquotient-norm-le--b0e171e175e4c6a93e57b9dd.md) | 386 | `result-track:b0e171e175e4c6a93e57b9dd91ffc0267ec76d7e8d74fcefcb2769c084eb18bd` |
| 20 | `theorem` | [one_add_norm_le_twice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/one-add-norm-le-twice--ccc2ddeff449afb970e86f2a.md) | 422 | `result-track:ccc2ddeff449afb970e86f2af47b037536a2458b38fd1e246cb999268d1b2555` |
| 21 | `theorem` | [candidate_parameter_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/candidate-parameter-decay--2c29e773ffd92c02faf4c74a.md) | 434 | `result-track:2c29e773ffd92c02faf4c74a62e34c5c2ba0b25e8db3a73fc00d732f79754db4` |
| 22 | `theorem` | [candidate_vertical_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/candidate-vertical-decay--c46064b2379204ff5afd0e3e.md) | 501 | `result-track:c46064b2379204ff5afd0e3ee4251aaf7a37dde3af5f8b37a384b8ae64a2b753` |
| 23 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/scaled-cauchy-integrable-integral--4f98af91e1daabc79527f680.md) | 514 | `result-track:4f98af91e1daabc79527f680ec3b819166a91f308a6f435ca146a783ef917b52` |
| 24 | `theorem` | [candidate_square_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/candidate-square-majorant--e796c58d6dbb61d3675de7ae.md) | 523 | `result-track:e796c58d6dbb61d3675de7aef5a6b19881c9697929b1d13140c4981f2586ef7b` |
| 25 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/candidate-line-square-integrable-bound--36871477bf6be20131824668.md) | 546 | `result-track:36871477bf6be201318246682f483fcad95108d2c7fd3eabe6f6692f6eaac0bd` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--aca4a3c5e504eea4f5d2570e.md) | 593 | `declaration-track:aca4a3c5e504eea4f5d2570e2a675b224fb2ec6eefb55f78752baabfdd856e98` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--cc6f1642d5dece26b2868ca2.md) | 595 | `declaration-track:cc6f1642d5dece26b2868ca2061abd3a18705b356f1b884cb1fc41d71c3cc80e` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--2b174d4044b9548bfa10862b.md) | 602 | `declaration-track:2b174d4044b9548bfa10862baf3dcf6b8c001ff6d1f7fdb9803c6026a1e2ae93` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--8443f707b2ee16954cf83024.md) | 606 | `declaration-track:8443f707b2ee16954cf830249787e7048732e66b13a2ba30bc42f992289e2703` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--8e04241d897f227f9db59bcb.md) | 614 | `declaration-track:8e04241d897f227f9db59bcbbbe23b524e77c0da8f05cb49a676107b4e7bb112` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/declarations/example--4c23d5490c1502d55ba73bef.md) | 624 | `declaration-track:4c23d5490c1502d55ba73bef11c817ce001477dd7de40f7f198ecf108c0c6f04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
