# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingL2Core.Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mollify](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify--55a9834dde6f725c8f17285c.md) | 26 | `declaration-track:55a9834dde6f725c8f17285cdd54b3c171e0fdda09bfdb5a1d45d2710cb5b4c6` |
| 2 | `theorem` | [mollify_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-integrand-integrable--a0cbda3f31d7603bfa351e29.md) | 30 | `result-track:a0cbda3f31d7603bfa351e293751afb3cf21dec5012bf93336a7d82b62fc5aad` |
| 3 | `theorem` | [mollify_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-contdiff--f9842ba0a3cd08870290ae0e.md) | 37 | `result-track:f9842ba0a3cd08870290ae0ee6683aefc9dc966b6e1bcd789210d513299ce347` |
| 4 | `theorem` | [mollify_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-continuous--1768bd0903ffb29aa402fdf9.md) | 43 | `result-track:1768bd0903ffb29aa402fdf970b3620877d2aca465834f4eb00c037ba36ab15c` |
| 5 | `theorem` | [mollify_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-hascompactsupport--d8c86025e3e2727f8af3971a.md) | 48 | `result-track:d8c86025e3e2727f8af3971a3ddca89b983066ded992478258401e9c1fefe517` |
| 6 | `theorem` | [continuous_compact_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/continuous-compact-memlp-two--2953ededc6a59904b3fc11ab.md) | 54 | `result-track:2953ededc6a59904b3fc11abd16e200ffa72992f6602a3e343745d9b23dec085` |
| 7 | `theorem` | [mollify_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-memlp-two--55fab0d48b35441fcce66429.md) | 59 | `result-track:55fab0d48b35441fcce66429505d148dabfa8bc7c699cf411eb6b69bbb42b2d4` |
| 8 | `theorem` | [error_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/error-memlp-two--2c75ad7795fc9f668dc422a9.md) | 65 | `result-track:2c75ad7795fc9f668dc422a9fd93f83e282da96b57bb444a32c2b88c46b51ed0` |
| 9 | `theorem` | [error_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/error-square-integrable--cd1cd3a3b97eeeda72a9ea24.md) | 70 | `result-track:cd1cd3a3b97eeeda72a9ea246da44ca8abd4122a637f3566f6edaf6ded60d836` |
| 10 | `theorem` | [mollify_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-norm-le--d4119eea1b6e6547be722879.md) | 76 | `result-track:d4119eea1b6e6547be722879a93020d7007b4fb1fca94f64fc5525b8ce1767a4` |
| 11 | `theorem` | [mollify_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-support-subset--b2583cb289d2ecb4b9ddb99c.md) | 89 | `result-track:b2583cb289d2ecb4b9ddb99c7980c290606b968e724eeeedde95fddb7403e9a4` |
| 12 | `theorem` | [error_support_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/error-support-subset-common--4be30db8e46e0b306cac0914.md) | 100 | `result-track:4be30db8e46e0b306cac091428c7272efcfd1a0006531e9c4fd21963b37f2e8b` |
| 13 | `theorem` | [mollify_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-tendsto--e911800cf5ee8f6d76b935fa.md) | 118 | `result-track:e911800cf5ee8f6d76b935fa1e446839c412d88af39f46411ef94df29bf7c05f` |
| 14 | `theorem` | [mollify_integral_sq_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/declarations/mollify-integral-sq-tendsto-zero--3456c0dbecc46fb22ee49bfc.md) | 126 | `result-track:3456c0dbecc46fb22ee49bfc3b1ede316eba6eec32e634ea7c94e47606a20d9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
