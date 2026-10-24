# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c6cd31fecc4e13fcec5cb79850b41c9f90dd39e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c6cd31fecc4e13fcec5cb79850b41c9f90dd39e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_Iic_eq_lintegral_Iio_add_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/lintegral-iic-eq-lintegral-iio-add-icc--1aa79403a9e6d569e2415a2c.md) | 38 | `result-track:1aa79403a9e6d569e2415a2c81739d9053955de082c7c52c93e3366411ea7e9a` |
| 2 | `def` | [gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdfreal--a2367dbce8c8c61d65f05b93.md) | 51 | `declaration-track:a2367dbce8c8c61d65f05b938ee057bbf38ab911fdc5bbf25f45fb32f901eef3` |
| 3 | `def` | [gammaPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdf--aa71d50db5c5c749ceba8370.md) | 56 | `declaration-track:aa71d50db5c5c749ceba8370027f5a972c389fbd2f0ed6756f321be8efe379a8` |
| 4 | `lemma` | [gammaPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdf-eq--78430ceba2b48e07b0291b83.md) | 59 | `result-track:78430ceba2b48e07b0291b832ef486364b28a851d23afe78fc55dbd5dd026cb2` |
| 5 | `lemma` | [gammaPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdf-of-neg--28c3857875cf219a57f3ec5d.md) | 64 | `result-track:28c3857875cf219a57f3ec5da81536773fd1ad0594a291674ffbff26213bebf9` |
| 6 | `lemma` | [gammaPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdf-of-nonneg--e63a462b0eea410b0e7d5027.md) | 67 | `result-track:e63a462b0eea410b0e7d5027c37a07d5a4eb23e8576447a01d1f2bdcc818c818` |
| 7 | `lemma` | [lintegral_gammaPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/lintegral-gammapdf-of-nonpos--25116bdaad61b1591e160c9f.md) | 72 | `result-track:25116bdaad61b1591e160c9f30d0d8e462f765dcaa9ac109230914f432b110f2` |
| 8 | `lemma` | [measurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/measurable-gammapdfreal--685268025f66d419a2b856af.md) | 82 | `result-track:685268025f66d419a2b856af7fa9b6bb96e62d129463db1cecef1b6b4d153ddf` |
| 9 | `lemma` | [stronglyMeasurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/stronglymeasurable-gammapdfreal--ff9cba32e2cd26d75969991c.md) | 88 | `result-track:ff9cba32e2cd26d75969991ccf963259e4c4f33d2f3265f4a4fc2bb08c90636d` |
| 10 | `lemma` | [gammaPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdfreal-pos--14574cda72daa4cbbf19adf2.md) | 93 | `result-track:14574cda72daa4cbbf19adf24dfe6cf94d5d4325d908dd9d84c2b9bd847321ed` |
| 11 | `lemma` | [gammaPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammapdfreal-nonneg--af741cca6b272d2f948327f9.md) | 99 | `result-track:af741cca6b272d2f948327f9a1ab3baf1829d70dfee54181794d39692c450d3d` |
| 12 | `lemma` | [lintegral_gammaPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/lintegral-gammapdf-eq-one--815430a04e53ffcd0aaf4324.md) | 108 | `result-track:815430a04e53ffcd0aaf4324cd93214dddc7bc44a4b4494e049157a56c80e15b` |
| 13 | `def` | [gammaMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammameasure--c02c2d399ad5a5db0a41dafc.md) | 134 | `declaration-track:c02c2d399ad5a5db0a41dafc59b5f70019df51bfad34ba211a0f019612c08edf` |
| 14 | `lemma` | [isProbabilityMeasureGamma](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/isprobabilitymeasuregamma--2917b6a1246c90a90d814a02.md) | 137 | `result-track:2917b6a1246c90a90d814a02e0d0b654ddb0d45dada41153c835d86fd4bedf00` |
| 15 | `def` | [gammaCDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammacdfreal--c7c5db1cda5037f2151daff5.md) | 145 | `declaration-track:c7c5db1cda5037f2151daff571879ad6607d7a77bbf8db9992459c2ed0792ad1` |
| 16 | `lemma` | [gammaCDFReal_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammacdfreal-eq-integral--f1a04418b8c472f383c75607.md) | 148 | `result-track:f1a04418b8c472f383c756070dd6dab6ecd6a426c87e7b9c974de6c6b37d76e8` |
| 17 | `lemma` | [gammaCDFReal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant6916f85f69e13a4c69ecf9825bd39eafa9dcb42d1499b4554779645caa318058.lean/declarations/gammacdfreal-eq-lintegral--112979a42b4f148185ba86fb.md) | 157 | `result-track:112979a42b4f148185ba86fb9b224bddf800b392a18f69a8bb95d76cf5de86ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
