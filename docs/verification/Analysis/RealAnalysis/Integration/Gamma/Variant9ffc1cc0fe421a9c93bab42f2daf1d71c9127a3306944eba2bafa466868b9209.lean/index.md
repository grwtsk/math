# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0004e9e7025699b7fe9b112c52bb7336bffcd6a1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0004e9e7025699b7fe9b112c52bb7336bffcd6a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CDF` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_Iic_eq_lintegral_Iio_add_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/lintegral-iic-eq-lintegral-iio-add-icc--dff7647373d07b4e0d850b4a.md) | 30 | `result-track:dff7647373d07b4e0d850b4ad6fb6404e82603f49c4926a461c5294656ce1ee6` |
| 2 | `def` | [gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdfreal--5520d7c9972377d3476f9ecf.md) | 43 | `declaration-track:5520d7c9972377d3476f9ecfd240fec33e3a57d4cf15ec07bc75c0a2b4544b22` |
| 3 | `def` | [gammaPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdf--c0cc57f7173a6578a6950ffa.md) | 48 | `declaration-track:c0cc57f7173a6578a6950ffa3c783e54bfed6f36243a3177295281a13743d46d` |
| 4 | `lemma` | [gammaPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdf-eq--83074110e490d0a344f35abf.md) | 51 | `result-track:83074110e490d0a344f35abf2dc92d5db09b8a78293bae7241c7ddebe7648fac` |
| 5 | `lemma` | [gammaPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdf-of-neg--27a58a7691ada208cce3ec69.md) | 56 | `result-track:27a58a7691ada208cce3ec697e85d342331f0d15bc3337cd3a2cee60c8f0f50f` |
| 6 | `lemma` | [gammaPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdf-of-nonneg--d6160be96903f9b49ada82d0.md) | 59 | `result-track:d6160be96903f9b49ada82d0709fdc1565ccb6b46770a06ec60f826f02c33918` |
| 7 | `lemma` | [lintegral_gammaPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/lintegral-gammapdf-of-nonpos--cb463cbb301c3120b205ec46.md) | 64 | `result-track:cb463cbb301c3120b205ec46387db6908dbc72ca60ac9f05dd7dd53863ef8581` |
| 8 | `lemma` | [measurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/measurable-gammapdfreal--df3d30b6018bdab3afd13770.md) | 74 | `result-track:df3d30b6018bdab3afd13770c9cb20f0ddb280c16d95f8c54cbfeb5e4e439e5b` |
| 9 | `lemma` | [stronglyMeasurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/stronglymeasurable-gammapdfreal--893e8631eeab46a0623efec8.md) | 80 | `result-track:893e8631eeab46a0623efec8f6db1d846bb130f7bb83ad373609c48c93db083e` |
| 10 | `lemma` | [gammaPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdfreal-pos--61e232af716972ef3b1d4f25.md) | 85 | `result-track:61e232af716972ef3b1d4f25de7a0df30ee3f250bd857117b12f24ba51aeb9cd` |
| 11 | `lemma` | [gammaPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammapdfreal-nonneg--3a804937414050c2dd51c36c.md) | 91 | `result-track:3a804937414050c2dd51c36c34e2a4976b60ef07494068ffd7af4696721d581b` |
| 12 | `lemma` | [lintegral_gammaPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/lintegral-gammapdf-eq-one--8bbf44cb6775258dda61972d.md) | 100 | `result-track:8bbf44cb6775258dda61972dfc3eee8acdd5e8b9d36113327bac1c9e4100898b` |
| 13 | `def` | [gammaMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammameasure--eac4a12be96ce31e11ee5337.md) | 126 | `declaration-track:eac4a12be96ce31e11ee533749174d9723e87479294244c0a14d0528f583c15a` |
| 14 | `lemma` | [isProbabilityMeasureGamma](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/isprobabilitymeasuregamma--d3344ee83e191175783cd3d4.md) | 129 | `result-track:d3344ee83e191175783cd3d4b4eeab20f6fb425da167ec11db51333a0370c5ac` |
| 15 | `def` | [gammaCDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammacdfreal--498cb420611351b5af64af39.md) | 137 | `declaration-track:498cb420611351b5af64af39396713ea73c4b732623fe1309fd84fc099cf06a1` |
| 16 | `lemma` | [gammaCDFReal_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammacdfreal-eq-integral--6650ed55d2bc0187412ff142.md) | 140 | `result-track:6650ed55d2bc0187412ff142469b169d5122c67c28c10e225f3a283fba51789c` |
| 17 | `lemma` | [gammaCDFReal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant9ffc1cc0fe421a9c93bab42f2daf1d71c9127a3306944eba2bafa466868b9209.lean/declarations/gammacdfreal-eq-lintegral--39091533038db9c7a50dead6.md) | 149 | `result-track:39091533038db9c7a50dead60c1804665ed6509c3ac756235536144f888802e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
