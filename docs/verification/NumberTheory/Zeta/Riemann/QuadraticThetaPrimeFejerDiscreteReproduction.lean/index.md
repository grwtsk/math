# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerDiscreteReproduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15588965a26a6e07d50bcf6328860880aadea11f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15588965a26a6e07d50bcf6328860880aadea11f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentHarmonic`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentHarmonic.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonAliasingFejerCutoffRegime](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/nonaliasingfejercutoffregime--f4038bfbcc4dfd1b6030e8c3.md) | 15 | `declaration-track:f4038bfbcc4dfd1b6030e8c308015940f6fe1f113029344989158129d7821985` |
| 2 | `theorem` | [triangularFrequency_nonzero_mod_octavePeriod](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/triangularfrequency-nonzero-mod-octaveperiod--4fa1088365026546aac0f68c.md) | 21 | `result-track:4fa1088365026546aac0f68c75d098650a1868ce8c432e8893a50df7bfe69fa6` |
| 3 | `theorem` | [symmetricTriangularWeight_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/symmetrictriangularweight-zero--a64b52e2ee42950e7a35e812.md) | 40 | `result-track:a64b52e2ee42950e7a35e8128400b527315a9dae3282542c585f1d59f1b6cdf0` |
| 4 | `def` | [PeriodFourXSampledKernelMassOneClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/periodfourxsampledkernelmassoneclaim--8e0731ed20fd31404cd7621f.md) | 49 | `declaration-track:8e0731ed20fd31404cd7621f8d15e2336ec5134f206a2e2e0cfd198113067e12` |
| 5 | `def` | [PeriodFourXSampledKernelNonnegativeClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/periodfourxsampledkernelnonnegativeclaim--9c8a0dc440301dd3a2efaaa0.md) | 59 | `declaration-track:9c8a0dc440301dd3a2efaaa04f256bac20d56f81c340823233e760067568a349` |
| 6 | `def` | [NonAliasingPrimePrefixFejerFirstMomentComparisonAtCutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/nonaliasingprimeprefixfejerfirstmomentcomparisonatcutoff--30ef15aca3c634d073a1ad35.md) | 68 | `declaration-track:30ef15aca3c634d073a1ad35cce201ba02ffd82be14f4d931ccbfc950018f987` |
| 7 | `structure` | [NonAliasingFejerDiscreteReproductionData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/nonaliasingfejerdiscretereproductiondata--919d5697f89a3ed6ae8ea202.md) | 76 | `declaration-track:919d5697f89a3ed6ae8ea2021ade50c1c7900c69afb3b9085d6538b36dc89b96` |
| 8 | `structure` | [NonAliasingFejerSharpStepAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerDiscreteReproduction.lean/declarations/nonaliasingfejersharpstepaccepted--c7c787402f4f24b5c0152022.md) | 82 | `declaration-track:c7c787402f4f24b5c0152022e30a5521de817c6d342c183ee934c6b638dc91a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
