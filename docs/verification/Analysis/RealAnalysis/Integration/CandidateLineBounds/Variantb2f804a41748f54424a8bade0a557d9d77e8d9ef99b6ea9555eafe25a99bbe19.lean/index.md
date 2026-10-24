# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateLineBounds.Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f15eb3c058119292d773c6a294329204bf5a066",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f15eb3c058119292d773c6a294329204bf5a066`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean.json)

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
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/sourcepolynomial-leading-error--7b1cd979b555eab41bf68e10.md) | 21 | `result-track:7b1cd979b555eab41bf68e10076ba35086f77b18861163009760c093c0ffd1a0` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/sourcetailgap-pos--2994100d28bcc41ac18f0f6b.md) | 43 | `result-track:2994100d28bcc41ac18f0f6b46a37fce1f533a402f5971fadf5cf1c513755556` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/sourceendpoint-tail-lower--5e77f9e391dfe9ea965d843d.md) | 48 | `result-track:5e77f9e391dfe9ea965d843d4381b08dab20000ae7013f88c302e47c2ce9cc1f` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/reducedw-closedformula--66bafbb5eb6a3462f76685b8.md) | 96 | `result-track:66bafbb5eb6a3462f76685b8d074bc5e712dec61e3742ac0df1869cd462e2d8f` |
| 5 | `theorem` | [norm_add_half_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/norm-add-half-ge--716cd77ea509b05f8e78ec38.md) | 116 | `result-track:716cd77ea509b05f8e78ec38611f07b07326fc9b0d10e8ce5f0a909d08c69c2e` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/reducedw-tail-lower--e981fb0e9d0426c5568fae6e.md) | 126 | `result-track:e981fb0e9d0426c5568fae6e79f446d5732d78f2abab9e1515edc498653758b0` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/reducedw-inverse-tail-bound--7a5cf8ae6199caa8b4344d18.md) | 164 | `result-track:7a5cf8ae6199caa8b4344d1814f8a7bfc4d0c07ed0ca20b2338995efadc93278` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/reducedw-inverse-uniform-bound--7da821f7e73fa1e06f36cb90.md) | 181 | `result-track:7da821f7e73fa1e06f36cb90b0d7d1ff3de782686d48029965c19391fc8e44a3` |
| 9 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/quotientintegral--9d098dcabd9cb46d7a56cf79.md) | 228 | `declaration-track:9d098dcabd9cb46d7a56cf792487d18eb5ead3d9945c6ebe7e0c19cb92933013` |
| 10 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/quotient-integrand-integrable--36c00e2e256f07f8d70f3afc.md) | 233 | `result-track:36c00e2e256f07f8d70f3afc50fbb2f4f240a4f31d72e7388d4f7df21448a8f1` |
| 11 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/quotientintegral-continuous--768af731777b83010c51b466.md) | 239 | `result-track:768af731777b83010c51b466463a4b494e7b49e642eb9a8141fdb71bd191e737` |
| 12 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/correctedquotient-eq-integral-of-ne--67a0473ed5014ec2e0a20c8e.md) | 281 | `result-track:67a0473ed5014ec2e0a20c8e1fc468c9d12b1604ac09251f2d8327f776c004f9` |
| 13 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/correctedquotient-eq-integral--66addee1fbaee6344b9cfeaa.md) | 288 | `result-track:66addee1fbaee6344b9cfeaa929759039ce875473e59cfdcc87895b004f83c0e` |
| 14 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--3c459dc8b9585d5bb373f326.md) | 307 | `result-track:3c459dc8b9585d5bb373f326a0c8e457fe7791188c8c103b01d8d8bdb81ec67e` |
| 15 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/mobiusreciprocalsum-floor-abs-le--6a7b4edcdef9fba0cf653abe.md) | 320 | `result-track:6a7b4edcdef9fba0cf653abeedc77b308aba7c47b90f00b7b844bdf2c58b1519` |
| 16 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/quotient-integrand-norm-le--a695b20a87ae8ed15bd096b0.md) | 326 | `result-track:a695b20a87ae8ed15bd096b0409b62c2b439b8c085952eb1e423668f2cd2c444` |
| 17 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/inverse-sqrt-integrable--043e57fd54f864e16df1ee3f.md) | 360 | `result-track:043e57fd54f864e16df1ee3f8fc4db60d586c658193453fcc6829a0f498baee6` |
| 18 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/integral-inverse-sqrt--b272b9101bb825ebc4265b61.md) | 367 | `result-track:b272b9101bb825ebc4265b6175fa02853d1acfab20f89e5b654ee7975462ef0e` |
| 19 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/correctedquotient-norm-le--5f82954150e7283f9ed0e835.md) | 386 | `result-track:5f82954150e7283f9ed0e835edbc607a5ea193880ce9ede1b63dc4071c430580` |
| 20 | `theorem` | [one_add_norm_le_twice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/one-add-norm-le-twice--eae7f59989c0606c2be2f32c.md) | 422 | `result-track:eae7f59989c0606c2be2f32c5dbc0e99147e0b9e811e0d5d7eec261ee1f1e5f7` |
| 21 | `theorem` | [candidate_parameter_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/candidate-parameter-decay--e7b645f58f3373f4b26251c0.md) | 434 | `result-track:e7b645f58f3373f4b26251c0e526577985dd2809a46e070e4aaf1e426f9fe8c5` |
| 22 | `theorem` | [candidate_vertical_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/candidate-vertical-decay--234d039d8f277bd1011b707f.md) | 501 | `result-track:234d039d8f277bd1011b707f0bccc47bc3dd3344c3333f961cb1a31591cb47ec` |
| 23 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/scaled-cauchy-integrable-integral--34284e1f931c282ca85762e6.md) | 514 | `result-track:34284e1f931c282ca85762e6bfdf3479425f9233103b2782915587133854ae3e` |
| 24 | `theorem` | [candidate_square_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/candidate-square-majorant--f6332ec45ac8b9c428231082.md) | 523 | `result-track:f6332ec45ac8b9c42823108276b0dcbf78f964fd9e5f18b19d7c0b20bcb8a83a` |
| 25 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantb2f804a41748f54424a8bade0a557d9d77e8d9ef99b6ea9555eafe25a99bbe19.lean/declarations/candidate-line-square-integrable-bound--50d8aee8c5d9fdbf4d4d3bdf.md) | 546 | `result-track:50d8aee8c5d9fdbf4d4d3bdf385f04cd6655af06df9a10a1390f25b91afc01d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
