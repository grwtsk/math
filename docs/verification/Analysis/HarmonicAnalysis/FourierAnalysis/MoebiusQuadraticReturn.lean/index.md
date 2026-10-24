# Verification target: GRWTSK.Analysis.Fourier.MoebiusQuadraticReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da`.

Source path: `GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/MoebiusQuadraticReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ReciprocalZetaQuadraticKernel.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.QuadraticKernelTruncation`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/QuadraticKernelTruncation.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini`](../../../../../mathematics/Analysis/MeasureTheory/Integral/QuadraticFourierFubini__SourceOccurrenced40958953f14c75a88bfea0e.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.AngularFrequencyParseval`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Fourier.Inversion` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSource](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource--902940c237a14b84c144fe73.md) | 21 | `declaration-track:902940c237a14b84c144fe731adbda1394ab7c26f8b7cbe75e0b8e2ef3a3d8cd` |
| 2 | `theorem` | [completedPickup_zero_of_nonpositive](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/completedpickup-zero-of-nonpositive--3799f0ddb82dbe82c0bf407f.md) | 24 | `result-track:3799f0ddb82dbe82c0bf407f077280a1e54d94672be5c10d9d4d10fcfb8e148c` |
| 3 | `theorem` | [completedPickup_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/completedpickup-continuous--272c9af9342e6c57e1ad6f2e.md) | 38 | `result-track:272c9af9342e6c57e1ad6f2e5d5f41c776f848358f53d6c88a4df64efaf9c948` |
| 4 | `theorem` | [weightedSource_continuous](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-continuous--1ac176c05de029d98662f565.md) | 42 | `result-track:1ac176c05de029d98662f5655ed0834d9c9a860e03fa1961e27aa8242e289f9f` |
| 5 | `theorem` | [weightedSource_zero_of_nonpositive](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-zero-of-nonpositive--5d931f9d3bda419be9a89177.md) | 45 | `result-track:5d931f9d3bda419be9a8917797fe4786f3bdba4ca85a9035beaab6a54559f878` |
| 6 | `theorem` | [weightedSource_integrable](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-integrable--8a0d99a4b08811065110ffbc.md) | 49 | `result-track:8a0d99a4b08811065110ffbc56a75e72ec39701696f0be62bee7950593bff783` |
| 7 | `theorem` | [weightedSource_rawFourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-rawfourier--751a6274626b1a338fe57c8f.md) | 63 | `result-track:751a6274626b1a338fe57c8fe36ae391c34e4e4ede86a41e9024c630e10b69ad` |
| 8 | `theorem` | [weightedSource_fourier](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-fourier--493d8dbbc4765af4a73903e1.md) | 89 | `result-track:493d8dbbc4765af4a73903e1a120e8f70a299e945d52828befb0de6c9986e209` |
| 9 | `theorem` | [weightedSource_inversion](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-inversion--4f524754568e10fe6bea857a.md) | 95 | `result-track:4f524754568e10fe6bea857a7b41e09e509ad5d62052408acca3b89eb767e009` |
| 10 | `theorem` | [spectralIntegral_eq_weightedSource](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/spectralintegral-eq-weightedsource--5eda344c50f8e15f555084a0.md) | 133 | `result-track:5eda344c50f8e15f555084a0bc64023555ab80c664e86f8e9293e892facce501` |
| 11 | `theorem` | [weightedSource_star](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-star--2ba8fdece3951a7ebfe64974.md) | 147 | `result-track:2ba8fdece3951a7ebfe64974f553cce04949cef3ddf3130c0eca8876ccf04393` |
| 12 | `theorem` | [weightedSource_square_return](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/weightedsource-square-return--5629b77682edc94e25d67b36.md) | 157 | `result-track:5629b77682edc94e25d67b3651be07df25942d019d03998b5aed65b057e7e71d` |
| 13 | `theorem` | [actual_weightedSource_inversion](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/actual-weightedsource-inversion--7c139ab5ed483d4f0cdf8513.md) | 184 | `result-track:7c139ab5ed483d4f0cdf85130ea636a486bfa5f34582e55c882ddd216e536bab` |
| 14 | `theorem` | [kernelEnergy_eq_actual_energy](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/kernelenergy-eq-actual-energy--d6b1528878d594f0607eec4f.md) | 191 | `result-track:d6b1528878d594f0607eec4ffbb52656dd66ab64f4f23acb5c2be5f92f6257b2` |
| 15 | `theorem` | [actual_identification](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/actual-identification--d49981c43b5c19860e0c9bb3.md) | 216 | `result-track:d49981c43b5c19860e0c9bb3c38e9df30510985a7893a647f6034ad532f31c44` |
| 16 | `theorem` | [literal_P04_of_concrete_budgets](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/literal-p04-of-concrete-budgets--a874ab8dbf8c5dc054f61f55.md) | 227 | `result-track:a874ab8dbf8c5dc054f61f55c7ac6e1f7390bbe2f399cc9972fb01fb6d941400` |
| 17 | `theorem` | [literal_RH_of_concrete_budgets](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/MoebiusQuadraticReturn.lean/declarations/literal-rh-of-concrete-budgets--a3cdc170f9cb9b20fcbc1d24.md) | 235 | `result-track:a3cdc170f9cb9b20fcbc1d248f99bb380d9c1870a7aa61601b7e26740f841650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
