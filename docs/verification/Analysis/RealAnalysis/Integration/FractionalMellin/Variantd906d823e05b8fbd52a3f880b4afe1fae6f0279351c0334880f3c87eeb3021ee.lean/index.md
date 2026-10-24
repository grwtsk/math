# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FractionalMellin.Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel--dcf3bda33a70bf2345ab2fc3.md) | 22 | `declaration-track:dcf3bda33a70bf2345ab2fc3008708135710b597f4ee4fa72b5cfe5cd53c9658` |
| 2 | `theorem` | [fractionalKernel_below_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-below-one--191f5d681f7ed962c1c786ba.md) | 26 | `result-track:191f5d681f7ed962c1c786ba34e5430124d410af019d35faeb8a73efe06154dd` |
| 3 | `theorem` | [fractionalKernel_integrable_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integrable-tail--80e657d07812947156201ac8.md) | 37 | `result-track:80e657d07812947156201ac8f6c1cf370984cba8ea003a79f4123fdbd37ba8e2` |
| 4 | `theorem` | [fractionalKernel_integrable_near_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integrable-near-zero--6a0d5bbe9c90acb27891ecf0.md) | 53 | `result-track:6a0d5bbe9c90acb27891ecf0359aafd65b7cce7296727f3ff0a4013ca1a87d10` |
| 5 | `theorem` | [fractionalKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integrable--8f7f32a2ba50c612821548b6.md) | 63 | `result-track:8f7f32a2ba50c612821548b639f00623fb5ca7864f94363966ebb2cb418c3e51` |
| 6 | `theorem` | [fractionalKernel_integral_near_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integral-near-zero--63a62f115df0f9f9c64c6a95.md) | 70 | `result-track:63a62f115df0f9f9c64c6a956b93deaca6b594a55c5edc570fef132099816e5a` |
| 7 | `theorem` | [fractionalKernel_integral_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integral-tail--724600a68855eac69883aee7.md) | 88 | `result-track:724600a68855eac69883aee7a88ae92f6ba412fc7a9a619aab7af3d5ec81d72c` |
| 8 | `theorem` | [fractionalKernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-integral--688ce57669017fd31cdc8bff.md) | 121 | `result-track:688ce57669017fd31cdc8bfffffb44dcae958c95035c034904a83cc728ccef6f` |
| 9 | `theorem` | [fractionalKernel_scaled_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-scaled-integrable--661d88fc16291ba7abc1e975.md) | 129 | `result-track:661d88fc16291ba7abc1e975b28a37ba706de5a14d2844fc76b239b6f99e24ad` |
| 10 | `theorem` | [fractionalKernel_scaled_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/declarations/fractionalkernel-scaled-integral--71a68dab8cab8378be536ca4.md) | 145 | `result-track:71a68dab8cab8378be536ca4c5005dc6567c69260371026d62992333e8509a50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
