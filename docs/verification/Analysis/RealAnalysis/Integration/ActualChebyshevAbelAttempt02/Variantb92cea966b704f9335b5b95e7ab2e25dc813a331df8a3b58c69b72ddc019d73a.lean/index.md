# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualChebyshevAbelAttempt02.Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccddc1edd5c8338a7d4cdddaf6404af304da79b1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccddc1edd5c8338a7d4cdddaf6404af304da79b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTMoment` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/inverse-hasderivat--335406d4045f8c865362b693.md) | 26 | `result-track:335406d4045f8c865362b6938c7ad8c78739e0af1ac298586ee20bd920519e68` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/inverse-derivative-integrable--2e5f4609c50b0752efb5eef7.md) | 31 | `result-track:2e5f4609c50b0752efb5eef722ffe94769e1a0ad15079e5dec4789e7e144a9a8` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/weightedmangoldt-sum-icc--3b877ed49b9bed91004d3d57.md) | 44 | `result-track:3b877ed49b9bed91004d3d57b6675921cb40c7ed228481cd68278f59c18d4bd9` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/weightedmangoldt-eq-psi-add-integral--00686b742b102164870ce496.md) | 51 | `result-track:00686b742b102164870ce49660f84abc9d83ab56fe84fd390544ae1598a88ee0` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/psi-integral-log-dictionary--529c02b0fef20e0e699aaa71.md) | 72 | `result-track:529c02b0fef20e0e699aaa71c9d50e512123022c152ef2e2c229a9c6323ba011` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral--8286a3cde8ca76123041396d.md) | 90 | `result-track:8286a3cde8ca76123041396d708a84a5b922c278748131899aab3a39733a0d12` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror--13f9771f9df7fb7b12ad27e8.md) | 101 | `result-track:13f9771f9df7fb7b12ad27e832c0b8f727d8451688f76fc3d7c6c4103bbb856d` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt02/Variantb92cea966b704f9335b5b95e7ab2e25dc813a331df8a3b58c69b72ddc019d73a.lean/declarations/mangoldtlogerror-centered-eq-interval--0d7968882f8abab7860d4272.md) | 117 | `result-track:0d7968882f8abab7860d427267d13fa0b9429b65a7b219b4c9ab2beecc68401e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
