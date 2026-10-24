# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLineBoundsAudit.Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f16bc7b788c7d762e47413c0965490c6277e777",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f16bc7b788c7d762e47413c0965490c6277e777`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean.json)

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
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/sourcepolynomial-leading-error--8a7de9bf1e1f60101ddc012c.md) | 21 | `result-track:8a7de9bf1e1f60101ddc012c9fbf4c87aa2b18a9ecf92ea407a97caf87380b06` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/sourcetailgap-pos--477c97aa58c94f896ea0459a.md) | 43 | `result-track:477c97aa58c94f896ea0459aaf7de00676ce1e53bac74966b7b1c6fae69c3eca` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/sourceendpoint-tail-lower--932e80cd36c51fc8043088ea.md) | 48 | `result-track:932e80cd36c51fc8043088ea1a596e32e041bf55f29f1e17fb2f5bacb8edfad6` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/reducedw-closedformula--8fc50ad159a5bade4033754f.md) | 96 | `result-track:8fc50ad159a5bade4033754f3ec882854c63f5553bb4b19f6d4b94422beab838` |
| 5 | `theorem` | [norm_add_half_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/norm-add-half-ge--63bf445984ef975324472518.md) | 116 | `result-track:63bf445984ef97532447251811a2ae273580ee026d9aae863104d57bf70776f6` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/reducedw-tail-lower--aedcb105e0835e2d81f1c250.md) | 126 | `result-track:aedcb105e0835e2d81f1c25067eb29cbddce01f8cc189c44c7a4822f872ef764` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/reducedw-inverse-tail-bound--32302ce6e73c85f30d2e8c10.md) | 164 | `result-track:32302ce6e73c85f30d2e8c107b45c070b148722a8a05d03913d80722bdb7a763` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/reducedw-inverse-uniform-bound--ba072325eeab12a5a249d9d2.md) | 181 | `result-track:ba072325eeab12a5a249d9d2fe5bf59901e16c164d3cc0f4f84ac5f9954c0aef` |
| 9 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/quotientintegral--8e7392fefec6f8bde48c0810.md) | 228 | `declaration-track:8e7392fefec6f8bde48c081063bfe93aa405d1026e72b8063594f0b4e94be018` |
| 10 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/quotient-integrand-integrable--f512e34821b93aa3699f1fbc.md) | 233 | `result-track:f512e34821b93aa3699f1fbc3030a6e6a82f48c2082d967ae819a8d583434ae1` |
| 11 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/quotientintegral-continuous--f08f3ac33de99ced656aac44.md) | 239 | `result-track:f08f3ac33de99ced656aac4403f0865f52ecc047402587826fea054fe5950990` |
| 12 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/correctedquotient-eq-integral-of-ne--6ee434c02aa5d2c64ea039a7.md) | 281 | `result-track:6ee434c02aa5d2c64ea039a7211f233fa3dee8ba0895d57ca7cc931b44eb229e` |
| 13 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/correctedquotient-eq-integral--0f5cc52e24f12d5051389b18.md) | 288 | `result-track:0f5cc52e24f12d5051389b182976d1f853c6b4e02e5d640d37f2e3e3c4adafb3` |
| 14 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--fae208d35078c523b4875607.md) | 307 | `result-track:fae208d35078c523b4875607ccfbaaba2235e11c0becdcbdf35f8945aefaa9cd` |
| 15 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/mobiusreciprocalsum-floor-abs-le--43eb20af5272a7db0333e8b5.md) | 320 | `result-track:43eb20af5272a7db0333e8b5fe9718ee04480d4b05f04a525dc556c79b360505` |
| 16 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/quotient-integrand-norm-le--435a7769906121261b3da0bc.md) | 326 | `result-track:435a7769906121261b3da0bc5cca422620bb4e93bdd8e6c2bff564d8e6aa6a21` |
| 17 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/inverse-sqrt-integrable--c3c3d077c922dab4b04f3656.md) | 360 | `result-track:c3c3d077c922dab4b04f3656ad9fdb1c09e4ebe62c55c1805a357b8687552612` |
| 18 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/integral-inverse-sqrt--39cb5aed4fbf3425d08069ed.md) | 367 | `result-track:39cb5aed4fbf3425d08069edb9a540e5af75c7bb6e64d320f40ea72add3c1229` |
| 19 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/correctedquotient-norm-le--8889229a2965646ac38344cd.md) | 386 | `result-track:8889229a2965646ac38344cd9bb9629137fd2eccfb97a421704b22cdf6d816b6` |
| 20 | `theorem` | [one_add_norm_le_twice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/one-add-norm-le-twice--0b2c15d6869130ab905ad218.md) | 422 | `result-track:0b2c15d6869130ab905ad218cc7d8e4d42560ab643e82d6579580587754393a6` |
| 21 | `theorem` | [candidate_parameter_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/candidate-parameter-decay--4cbce50870298ade0bbf204a.md) | 434 | `result-track:4cbce50870298ade0bbf204aea7385e6274efdd6644497a7c97260d147b95d0a` |
| 22 | `theorem` | [candidate_vertical_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/candidate-vertical-decay--24dc6325c638d9b7c2b864df.md) | 501 | `result-track:24dc6325c638d9b7c2b864df1470aeca1e9532accf8c06b9ab1e518f5a68e905` |
| 23 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/scaled-cauchy-integrable-integral--1caa6624c046699b44929ab7.md) | 514 | `result-track:1caa6624c046699b44929ab7d8ab4876229e24e078645d56eca3f15947d00a81` |
| 24 | `theorem` | [candidate_square_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/candidate-square-majorant--7159e6c9f55f14498dad58f5.md) | 523 | `result-track:7159e6c9f55f14498dad58f5186fbf454f62499a7fbce7788179ab0a7accd76e` |
| 25 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/declarations/candidate-line-square-integrable-bound--7c696e3909dd3876a0c1631f.md) | 546 | `result-track:7c696e3909dd3876a0c1631fbe0628be2b6f276641d3944832c54fffe558e1c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
