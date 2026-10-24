# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerPeriodCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37a36ad73a23a7011596aea2d948c05e3aeda521",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37a36ad73a23a7011596aea2d948c05e3aeda521`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeCanonicalFejerPrefixOperator`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeCanonicalFejerPrefixOperator.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signedSampledTriangularKernel_add_period](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/signedsampledtriangularkernel-add-period--93daf87b0bf3de3922b4486f.md) | 13 | `result-track:93daf87b0bf3de3922b4486f7aa82e4c660f9cba6fe468fe1052ec09df387954` |
| 2 | `theorem` | [canonicalFejerPrefixWeight_add_scale](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/canonicalfejerprefixweight-add-scale--1d0d5f322f4a0e16a4763453.md) | 32 | `result-track:1d0d5f322f4a0e16a476345387c880c9eb3acf70045d86f919edc0522d8540a6` |
| 3 | `def` | [signedSampledTriangularKernelAtPeriod](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/signedsampledtriangularkernelatperiod--7c15cde142812680831bc1b7.md) | 49 | `declaration-track:7c15cde142812680831bc1b7f9596a9fcbf76f46df23e35ba898d634a3853451` |
| 4 | `def` | [sampledTriangularKernelAtPeriod](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/sampledtriangularkernelatperiod--86bccbf0cc2af4373577adb7.md) | 56 | `declaration-track:86bccbf0cc2af4373577adb778b967049d82e39352493618e249ee4a3ff51224` |
| 5 | `def` | [fejerOctavePeriod](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/fejeroctaveperiod--0fe1b2c0177c98b3e3c30b62.md) | 63 | `declaration-track:0fe1b2c0177c98b3e3c30b62f669d44aa3856e631302b82b01b1ed4ab475d0bd` |
| 6 | `def` | [nonAliasingFejerPrefixWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingfejerprefixweight--e4f9c614eab79701d117a83a.md) | 66 | `declaration-track:e4f9c614eab79701d117a83ad90350197535b96abc084df9e6aa8ab2153c4851` |
| 7 | `def` | [nonAliasingFejerPrimeMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingfejerprimemass--1047bf80db92e72e38ace39e.md) | 74 | `declaration-track:1047bf80db92e72e38ace39e3db8c667ec2d8bd131a6546c7fdf82976bd6f842` |
| 8 | `def` | [nonAliasingFejerCountingMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingfejercountingmass--f654ab23593580528e94e019.md) | 80 | `declaration-track:f654ab23593580528e94e019239864cd8101ce86d6d75f5bdd560f58a48a8d75` |
| 9 | `def` | [nonAliasingPrimePrefixFejerOperator](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingprimeprefixfejeroperator--1d4c95250b6fc86c2fadfb26.md) | 86 | `declaration-track:1d4c95250b6fc86c2fadfb26800e276da054ad874bea3ab27b0f0e9499499046` |
| 10 | `theorem` | [octave_difference_inside_corrected_half_period](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/octave-difference-inside-corrected-half-period--0babee101cb60172ab950a19.md) | 94 | `result-track:0babee101cb60172ab950a19546b649e98086c1496ab08f2ebb5b605b2ccb9b4` |
| 11 | `theorem` | [sampledTriangularKernelAtOctavePeriod_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/sampledtriangularkernelatoctaveperiod-le--321573e3c1c69009edb31d1f.md) | 104 | `result-track:321573e3c1c69009edb31d1f9901d13a0856bf2a8a4cde88edd12d5560d87506` |
| 12 | `def` | [NonAliasingPrimePrefixFejerDiscrepancyRepresentation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingprimeprefixfejerdiscrepancyrepresentation--df20674cf6153c243e478a34.md) | 145 | `declaration-track:df20674cf6153c243e478a3463f8e8d38aee8a7d8554ba9a0e7fa8fcef5642e4` |
| 13 | `theorem` | [nonAliasingPrimePrefixFejerDiscrepancyRepresentation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingprimeprefixfejerdiscrepancyrepresentation--8910587da24e70942e991957.md) | 153 | `result-track:8910587da24e70942e991957885ce8119bf0eb424d2f1a2e3458190489478ccd` |
| 14 | `def` | [nonAliasingFejerTailBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingfejertailbudget--db43b4f919db933652ad87bb.md) | 159 | `declaration-track:db43b4f919db933652ad87bbc9efb7ec55cff1383231f9764c2cb0e50f9f3da9` |
| 15 | `def` | [NonAliasingPrimePrefixFejerTailComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/declarations/nonaliasingprimeprefixfejertailcomparison--03f408020cd15270941e7e58.md) | 168 | `declaration-track:03f408020cd15270941e7e58508112f3ddb7d8a62f3373cd02b944ee6417f10a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
