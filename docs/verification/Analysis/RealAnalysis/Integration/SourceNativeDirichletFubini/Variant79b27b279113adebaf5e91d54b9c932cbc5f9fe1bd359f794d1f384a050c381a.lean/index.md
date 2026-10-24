# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceNativeDirichletFubini.Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ba5914f877134ce9f1293110f707401f9495e4d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ba5914f877134ce9f1293110f707401f9495e4d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeReadout` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPhase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletphase--8573267226d0b87d46600dfd.md) | 28 | `declaration-track:8573267226d0b87d46600dfde473d3e00dc7c5edab25df60b31e46a56bcff3cc` |
| 2 | `def` | [dirichletSourceTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletsourceterm--a9905c5c6360ea509b537cf3.md) | 32 | `declaration-track:a9905c5c6360ea509b537cf3998e943228407a1154072319cd961d833446f7c5` |
| 3 | `theorem` | [dirichletPhase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletphase-norm--8f2c83ee378dc6c2ff901465.md) | 37 | `result-track:8f2c83ee378dc6c2ff901465b8da63d43d3465f4e9a943a8e73a0a86bcce4078` |
| 4 | `theorem` | [mangoldt_term_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/mangoldt-term-phase--e24667e836117a6196e47fdc.md) | 45 | `result-track:e24667e836117a6196e47fdca914df4481fa1181b0b64b90b1403cc2d536ae7d` |
| 5 | `theorem` | [dirichletSourceTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletsourceterm-integrable--d84605cc87dd886a87619c21.md) | 66 | `result-track:d84605cc87dd886a87619c21a747790c9634fe1d7bfdde5d1a03977ae55e5dbf` |
| 6 | `theorem` | [dirichletSourceTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletsourceterm-integral-norm--ca0ef94ad515ea73d85f2fd2.md) | 77 | `result-track:ca0ef94ad515ea73d85f2fd27ebd90343822fb574ddf0c3ad9490fcbc1afd664` |
| 7 | `theorem` | [dirichletSourceTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletsourceterm-norm-integrals-summable--a59fbf7518cb63b6a0d75f00.md) | 86 | `result-track:a59fbf7518cb63b6a0d75f0098af2ba56dc1859160add42c162d9ae91baf318f` |
| 8 | `theorem` | [angularIntegrand_eq_dirichlet_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/angularintegrand-eq-dirichlet-tsum--94df613cb304ddda26576e81.md) | 92 | `result-track:94df613cb304ddda26576e8158bef1e5d2afdef713a962ab9595bae5a672daa9` |
| 9 | `theorem` | [angularContour_eq_dirichlet_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/angularcontour-eq-dirichlet-integral-tsum--8a8fb2b34957f5efe43a58e0.md) | 106 | `result-track:8a8fb2b34957f5efe43a58e02e369586fc6db81c162e1ec23f52595a486c569a` |
| 10 | `theorem` | [mangoldt_term_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/mangoldt-term-two--ad7f60abba691033b0705b10.md) | 115 | `result-track:ad7f60abba691033b0705b10a7a5ecbcf242b63b88505192dd7c81c0c00fd2d2` |
| 11 | `theorem` | [dirichletSourceTerm_scalar_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/dirichletsourceterm-scalar-integral--6e90a834b327329ffae194df.md) | 125 | `result-track:6e90a834b327329ffae194dfef37983e2f85e9d6bced182646a81f56923a87ad` |
| 12 | `theorem` | [inverted_coefficient_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/inverted-coefficient-eq-source--ac58d9fd97d7bfb8782c4e4a.md) | 139 | `result-track:ac58d9fd97d7bfb8782c4e4a10560db1ca0111bc764611ae59bb7e63d2a3abe0` |
| 13 | `theorem` | [source_coefficient_zero_outside_inventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/source-coefficient-zero-outside-inventory--328a74ba84f96c2315f572ca.md) | 163 | `result-track:328a74ba84f96c2315f572caa331fd2500df38a5c87e7827d2717e9a428179ad` |
| 14 | `theorem` | [angularContour_eq_closedPrimeMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/angularcontour-eq-closedprimemoment--b0730294d728250635e2f02d.md) | 181 | `result-track:b0730294d728250635e2f02df74f453e421dc0ff35cf14132af7cbf8a4f39bc2` |
| 15 | `theorem` | [closedPrimeMoment_sub_head_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/closedprimemoment-sub-head-norm-bound--2ef8e6f977581c749ebbb6e8.md) | 198 | `result-track:2ef8e6f977581c749ebbb6e8f6dd00781b74673eedea680482943c66ca8ae3dd` |
| 16 | `theorem` | [closedPrimeMoment_growing_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant79b27b279113adebaf5e91d54b9c932cbc5f9fe1bd359f794d1f384a050c381a.lean/declarations/closedprimemoment-growing-tail-bound--72e7f6b83a978792e2dacbad.md) | 205 | `result-track:72e7f6b83a978792e2dacbadbff5b809610a9ed3f38b4cc645aa84ec944d0044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
