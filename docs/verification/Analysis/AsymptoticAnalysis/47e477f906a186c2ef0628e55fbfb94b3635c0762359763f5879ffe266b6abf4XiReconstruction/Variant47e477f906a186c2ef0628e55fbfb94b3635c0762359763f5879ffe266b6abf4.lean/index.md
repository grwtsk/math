# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction.Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f2e8211cc6f4b4c3df463f75a668f56b7e017b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f2e8211cc6f4b4c3df463f75a668f56b7e017b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_iteratedDeriv_odd](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/xi-iteratedderiv-odd--feec28ae61282e5e369556c8.md) | 14 | `result-track:feec28ae61282e5e369556c8a5a446d1c19d313e40bd344118ec368330c4e555` |
| 2 | `theorem` | [xi_iteratedDeriv_even_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/xi-iteratedderiv-even-real--0284e1d1c8c32ea827449f3d.md) | 22 | `result-track:0284e1d1c8c32ea827449f3df4d9c1771b38ccaf0aecff3fb2ebe125b4352a1b` |
| 3 | `theorem` | [even_taylor_term](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/even-taylor-term--e020153ad797e0ee8d965d6a.md) | 28 | `result-track:e020153ad797e0ee8d965d6ae0016300ffadb2033f42bbd9194fa63c5f992e09` |
| 4 | `theorem` | [hasSum_centered_even](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/hassum-centered-even--8f6997f46eafe1630ad45a18.md) | 35 | `result-track:8f6997f46eafe1630ad45a186707fc8a45abf66e21974fe7bcb14e6ab7949fa0` |
| 5 | `theorem` | [summable_centered](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/summable-centered--4a0a3bb10ca768af6a821e94.md) | 51 | `result-track:4a0a3bb10ca768af6a821e948bf56cf5c2af5b5b231c68a2037e195292c90fb5` |
| 6 | `theorem` | [centeredSeries_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/centeredseries-sq--e093f044bc017967447ade05.md) | 56 | `result-track:e093f044bc017967447ade055069930718227ce0c441cd1ada7721dc42a2fd97` |
| 7 | `theorem` | [centeredSeries_radius](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/centeredseries-radius--7f9c45a56236ef07914863a7.md) | 59 | `result-track:7f9c45a56236ef07914863a786e49211a9f7d7d093bb76d0f73021d91001f3ec` |
| 8 | `theorem` | [differentiable_centeredSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/differentiable-centeredseries--887bc7f40ee95c58f6e347b1.md) | 67 | `result-track:887bc7f40ee95c58f6e347b1b61ff0b6710a0c013cd6be4b517833dda7637839` |
| 9 | `theorem` | [taylorDescent](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/taylordescent--a2043c18ca87e65a234972e1.md) | 76 | `result-track:a2043c18ca87e65a234972e1ad29c7b086679d25ba50b9140f2c641c23de8d05` |
| 10 | `def` | [spectralXi](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/spectralxi--a008b69cc4d3ef06360e67db.md) | 80 | `declaration-track:a008b69cc4d3ef06360e67dba6b8de169b44b103ccc65bd530b073d2e388170b` |
| 11 | `def` | [spectralSection](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/spectralsection--4c04565f2f1f8fdd377f711b.md) | 83 | `declaration-track:4c04565f2f1f8fdd377f711bfa3535535522a05d647263e1b3920a5b0111e71d` |
| 12 | `theorem` | [centeredSeries_spectral](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/centeredseries-spectral--117dffb3dba0b3cd62c6dafa.md) | 86 | `result-track:117dffb3dba0b3cd62c6dafa316e50017679b6c3d1fbbaade2ad6d0edf52862a` |
| 13 | `theorem` | [spectralXi_zero_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/spectralxi-zero-ne--1dd936afc12690b0e322fdbe.md) | 90 | `result-track:1dd936afc12690b0e322fdbe87be36da406d85ee12c35ac7b810f46ce8620f6d` |
| 14 | `theorem` | [spectralSection_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/spectralsection-uniform--c8abf2ca824f77b27c98afc6.md) | 96 | `result-track:c8abf2ca824f77b27c98afc615cacde5504ea94f69ae45747a1e514c4faec16e` |
| 15 | `theorem` | [spectralSection_locallyUniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Variant47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4.lean/declarations/spectralsection-locallyuniform--5255639a64094025a01dd539.md) | 117 | `result-track:5255639a64094025a01dd53930076016840eac070a619a487341bf900a5736dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
