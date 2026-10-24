# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetLiteralCheck.Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dce0b92991bff676f72625ad849dbc88cf45d21",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dce0b92991bff676f72625ad849dbc88cf45d21`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/quotientintegral--0f72fa7e4e953a68ea7c5dd4.md) | 17 | `declaration-track:0f72fa7e4e953a68ea7c5dd474bef6193d0b9c3bfaf2e0655765e7ce5bf194b9` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/quotient-integrand-integrable--f48d5748b97a228f971035b4.md) | 22 | `result-track:f48d5748b97a228f971035b4506489334343c0ae9e3397ac05a9fb8c831493e6` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/quotientintegral-continuous--60c8ba064e0b7874f085addf.md) | 28 | `result-track:60c8ba064e0b7874f085addff2ae479a1b46dace9e877d44677f5b63773bca0f` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/correctedquotient-eq-integral-of-ne--f89993eb5248b8981689b056.md) | 70 | `result-track:f89993eb5248b8981689b05663031848cf139be6f97c206c4899b9800bae6608` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/correctedquotient-eq-integral--00ddccae430beb0282515927.md) | 77 | `result-track:00ddccae430beb0282515927557721a4cb8f9c5514dd47daac8bda5603804d78` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--1f6fb1c3e1791dec94e1b04a.md) | 96 | `result-track:1f6fb1c3e1791dec94e1b04a8c6ae2d0efc068ce2ffa28045d37ce7486af9c9b` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/mobiusreciprocalsum-floor-abs-le--6595e738daf0b5681d7a94a4.md) | 109 | `result-track:6595e738daf0b5681d7a94a4f65621b4faa02741d298d4ddb772ad8cddc7e130` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/quotient-integrand-norm-le--9c4dd5f62c35d902dab27dc3.md) | 115 | `result-track:9c4dd5f62c35d902dab27dc366523ecf985971dde7b1e8774d9f1c77180d4c5f` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/inverse-sqrt-integrable--7e2fc5ad1d1792dd6698cd88.md) | 149 | `result-track:7e2fc5ad1d1792dd6698cd88dd5d47dffe04da9abe0d970a04c498202785de37` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/integral-inverse-sqrt--b8610d10e0ca6a00907914d6.md) | 156 | `result-track:b8610d10e0ca6a00907914d63f1ad78e22d50ebec594ab43b7a98111e63b94a5` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/correctedquotient-norm-le--3dbccedc22c83ce75f95f6a0.md) | 175 | `result-track:3dbccedc22c83ce75f95f6a0bca85471a26e1049d4a7d545bffa8d19e0f52f25` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--fc61f8d5ab571f4dbab9f3c9.md) | 206 | `declaration-track:fc61f8d5ab571f4dbab9f3c959d7cf73b25dd7a504e670df800c5ab7c0b5772b` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--da3060a71aec87b0171ddfcf.md) | 209 | `declaration-track:da3060a71aec87b0171ddfcf5cb0da681a3a4f5003a0132b47deb5a7c5486e95` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--5bfa1ba3f3c05c390a905a0e.md) | 213 | `declaration-track:5bfa1ba3f3c05c390a905a0e557f9d70a680e441949c05356b715ff77b51ff9c` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--a838322405eeb203bb67cb6c.md) | 214 | `declaration-track:a838322405eeb203bb67cb6cd686e6526be35bd9f4d439032620a178cae1ee90` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--1b718ab584d6a0208d75c87b.md) | 218 | `declaration-track:1b718ab584d6a0208d75c87b87822baee379e0f7c7d9f14b4f22124f50bf112f` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--2b5615a5546a2723d0712c18.md) | 220 | `declaration-track:2b5615a5546a2723d0712c18e1e7d338196eaaf3af5f662755d45f02849899c2` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--ec19271583a7f7377f4d7c84.md) | 222 | `declaration-track:ec19271583a7f7377f4d7c8464fd4fb548bbc7ee9337211f26a6cd365bb74021` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--ee572ae41f0f7a01bcdec5ad.md) | 226 | `declaration-track:ee572ae41f0f7a01bcdec5ad81114e8dd7eadb18b6c33959c97e55e56d48aaa7` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant9ffa75f7360a6b333d7686eaf4693cbe80deaa988ae9bf34bedfafccf8bbf300.lean/declarations/example--abc88cc53ea1d6b87e487019.md) | 229 | `declaration-track:abc88cc53ea1d6b87e48701918718ee4efa8d5d3edacfaa0e79c2dbed016ccb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
