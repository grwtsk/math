# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.XiReconstruction.Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a5a6b645892e9eb25c19137cf8f72530fdb9e1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a5a6b645892e9eb25c19137cf8f72530fdb9e1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_iteratedDeriv_odd](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/xi-iteratedderiv-odd--ae4463b774af10b85b92df1b.md) | 33 | `result-track:ae4463b774af10b85b92df1b45d4bc4ee5e9bb687e1701df02e897d3f65f3c54` |
| 2 | `theorem` | [xi_iteratedDeriv_even_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/xi-iteratedderiv-even-real--c1660f6744876016597a41a4.md) | 42 | `result-track:c1660f6744876016597a41a4fee91889a432f56890d18005bea679e890c64861` |
| 3 | `theorem` | [even_taylor_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/even-taylor-term--787d1159c1ae4ae9ae8b6069.md) | 49 | `result-track:787d1159c1ae4ae9ae8b60695aec62f1f3653bfd4cc677afa843858735d79de5` |
| 4 | `theorem` | [hasSum_centered_even](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/hassum-centered-even--a4be4f25f6a7fd7d702be332.md) | 57 | `result-track:a4be4f25f6a7fd7d702be33299f60c7e92b6760998f524097716654147646f0e` |
| 5 | `theorem` | [summable_centered](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/summable-centered--6bdf6ef85dbd69c5d206554b.md) | 74 | `result-track:6bdf6ef85dbd69c5d206554b439eb0551fadf1c1db74fcf3628ea942f25bdba2` |
| 6 | `theorem` | [centeredSeries_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/centeredseries-sq--dbca0d4e76b20ee894fd1c2c.md) | 80 | `result-track:dbca0d4e76b20ee894fd1c2c7b53ce5660683b7d0c56216077f811f0cbcdda58` |
| 7 | `theorem` | [centeredSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/centeredseries-radius--74cc1d719a57b9f6685db2d8.md) | 84 | `result-track:74cc1d719a57b9f6685db2d8edf63d9f53b96a9c0d205237b5545c320fc3aae7` |
| 8 | `theorem` | [differentiable_centeredSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/differentiable-centeredseries--4c58b042ca5077c36eda30b3.md) | 93 | `result-track:4c58b042ca5077c36eda30b3604f7da7cb39eb0cd2f2a00771cf334189baa40a` |
| 9 | `theorem` | [taylorDescent](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/taylordescent--f6659035c1acd461c5fc9477.md) | 103 | `result-track:f6659035c1acd461c5fc94774e7e68d0a974bd85fe98c80c6da4760ffec7ad48` |
| 10 | `def` | [spectralXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/spectralxi--b197059ecd2b351e319cadbe.md) | 107 | `declaration-track:b197059ecd2b351e319cadbee9683703563dbdf43a3f11363a95699b5284ffd1` |
| 11 | `def` | [spectralSection](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/spectralsection--d50011d08ffa224537927e99.md) | 110 | `declaration-track:d50011d08ffa224537927e992fda47cf7fa7dfb801a58fa5ccd7557d417eac7d` |
| 12 | `theorem` | [centeredSeries_spectral](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/centeredseries-spectral--6165fdb8d863c5a713319fc5.md) | 114 | `result-track:6165fdb8d863c5a713319fc5f777201442a4bb130d37eb809fe8c1cab01b1d9a` |
| 13 | `theorem` | [spectralXi_zero_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/spectralxi-zero-ne--66889a7d74e079d5e0a19598.md) | 119 | `result-track:66889a7d74e079d5e0a19598dd3f69a2d3a6572040000a069dc84d97281c3192` |
| 14 | `theorem` | [spectralSection_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/spectralsection-uniform--027c696f521baa59af5bbf5e.md) | 126 | `result-track:027c696f521baa59af5bbf5e8ed676f10fe2339600746a437b0d71510d41d5fc` |
| 15 | `theorem` | [spectralSection_locallyUniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/declarations/spectralsection-locallyuniform--633c56740844150788b36fb8.md) | 148 | `result-track:633c56740844150788b36fb8bf3410a059b6339d5b9c585691c2cfff2d2a6b29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
