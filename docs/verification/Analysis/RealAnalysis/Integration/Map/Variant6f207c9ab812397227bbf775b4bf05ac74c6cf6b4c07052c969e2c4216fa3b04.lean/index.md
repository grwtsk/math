# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Map.Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88390ad599747b42968567ece49901ab5bfc689b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88390ad599747b42968567ece49901ab5bfc689b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-map--75eb7b3b38c4802b4b72b893.md) | 31 | `result-track:75eb7b3b38c4802b4b72b8930b9c535ce36e6f550bc10077840e7ad97e77e5a3` |
| 2 | `theorem` | [lintegral_map'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-map--44c349d25454b7694772b867.md) | 40 | `result-track:44c349d25454b7694772b8677f9ad52fddbd49e0483950c8c23e45e659766e75` |
| 3 | `theorem` | [lintegral_map_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-map-le--cf88ef4620c702073a368cc2.md) | 53 | `result-track:cf88ef4620c702073a368cc24522e5a38e27b219d0d82ac5f3678712aba076b7` |
| 4 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-comp--cdf445f3d0f35e544397b0dd.md) | 62 | `result-track:cdf445f3d0f35e544397b0dda0f839b0b34dc3989e6a42d8f5a637d6093de634` |
| 5 | `theorem` | [setLIntegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/setlintegral-map--bfac16d08ab3f9c8b6b42b5d.md) | 66 | `result-track:bfac16d08ab3f9c8b6b42b5de23c41b9d0adf6e78b1ee97c7cc24f3c22123ff2` |
| 6 | `theorem` | [lintegral_indicator_const_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-indicator-const-comp--a96061d1401a97c9f6d357bb.md) | 71 | `result-track:a96061d1401a97c9f6d357bb11abe2259e795b2cfede5781b7d4632067a73694` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralMap.Variant201afd256275f7453df53091daa7d5c8ce62eb57b0a6cf6cf0f2bd692084ed5e.MeasurableEmbedding.lintegral_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/root-grwtsk-analysis-realanalysis-integration-lintegralmap-variant201afd--453227bbf643ccbbce784b13.md) | 80 | `result-track:453227bbf643ccbbce784b13a611884c11b380443f7e1f51576035ae0bd9cd02` |
| 8 | `theorem` | [lintegral_map_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-map-equiv--ff531695402e3b40b23f5e23.md) | 95 | `result-track:ff531695402e3b40b23f5e23b9b160ca9c3837dec5f71cf87f737367ba3c9f36` |
| 9 | `theorem` | [lintegral_subtype_comap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-subtype-comap--b8a3b656f7f90f3b5169e56b.md) | 99 | `result-track:b8a3b656f7f90f3b5169e56b70b7dda4afef82fc3f6dbb033689d0682227831f` |
| 10 | `theorem` | [setLIntegral_subtype](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/setlintegral-subtype--983105cd496e8a0388c171d2.md) | 103 | `result-track:983105cd496e8a0388c171d20b98211e56af3525afd2d5f12c2fcbeff73da513` |
| 11 | `theorem` | [lintegral_map_equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-map-equiv--44a7c017d15992b2a736db8c.md) | 114 | `result-track:44a7c017d15992b2a736db8c0c9c59c91885142da0ddbde36f2d71c753d15464` |
| 12 | `theorem` | [lintegral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-comp--5b0b8125d434d52b4e3714db.md) | 120 | `result-track:5b0b8125d434d52b4e3714db61b32fe65d8d0f171952a2d1fe5428bcaccb0036` |
| 13 | `theorem` | [lintegral_comp_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/lintegral-comp-emb--543eabf5d240c2829cb78fe7.md) | 123 | `result-track:543eabf5d240c2829cb78fe795a82a72d8159e82c924dc8c1d3144765d97b294` |
| 14 | `theorem` | [setLIntegral_comp_preimage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/setlintegral-comp-preimage--918addbc5a6b7e18fd9e91ed.md) | 126 | `result-track:918addbc5a6b7e18fd9e91ed5ba54b0a0562954c0a28e9684dc629df5345e353` |
| 15 | `theorem` | [setLIntegral_comp_preimage_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/setlintegral-comp-preimage-emb--4a5e0493f36304978755a893.md) | 131 | `result-track:4a5e0493f36304978755a893f9d91424487f48bf86e82312b7f8b4de70468120` |
| 16 | `theorem` | [setLIntegral_comp_emb](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Map/Variant6f207c9ab812397227bbf775b4bf05ac74c6cf6b4c07052c969e2c4216fa3b04.lean/declarations/setlintegral-comp-emb--61254b4ecbe123696fd305bc.md) | 135 | `result-track:61254b4ecbe123696fd305bc68d0dceea0b7280a02c3ace5ee7c6c7df74a6ff5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
