# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3e65d59d1786d06411b0ea8c40c10f32d93a836",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3e65d59d1786d06411b0ea8c40c10f32d93a836`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.TruthTable` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fourier.IntFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-intfunction--650050e974650c9a3fd8f4aa.md) | 6 | `declaration-track:650050e974650c9a3fd8f4aa2e4bf1240008cfd4871062be92cb5335950b8fe5` |
| 2 | `abbrev` | [Fourier.SignedFunction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-signedfunction--b9856e9e85db147118be1377.md) | 10 | `declaration-track:b9856e9e85db147118be1377280098cdaeac2e65798cd6f813f608286a107dc7` |
| 3 | `structure` | [Fourier.Dyadic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-dyadic--4e0540fb1669f18a3ba5d1a0.md) | 14 | `declaration-track:4e0540fb1669f18a3ba5d1a07360caea6a268e7efbba47ef383ecfe0d73d856e` |
| 4 | `def` | [Fourier.Dyadic.denominator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-dyadic-denominator--26bb302333bc388c7400a98e.md) | 20 | `declaration-track:26bb302333bc388c7400a98e070989e1eba3b53df0276d5d26cae00bb18cd33d` |
| 5 | `def` | [Fourier.signedOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-signedoutput--410e430257eeef252a87e4e6.md) | 24 | `declaration-track:410e430257eeef252a87e4e6490232ef1cdc6deaf49b62102da0cd3cdf7b431e` |
| 6 | `def` | [Fourier.zeroOneOutput](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-zerooneoutput--588a1f1a8d5279976a6c0849.md) | 29 | `declaration-track:588a1f1a8d5279976a6c08497a8804413b8e6616f6f2841b6eff8db2ad517ba7` |
| 7 | `def` | [Fourier.character](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-character--6aa2e3313f0254e043a66028.md) | 39 | `declaration-track:6aa2e3313f0254e043a66028f4ae488edd72c6bf11f25e1ad8c33f9aa1dcd5ad` |
| 8 | `def` | [Fourier.coefficientNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-coefficientnumerator--ba71a69a7e4bf7ed78a6dd11.md) | 57 | `declaration-track:ba71a69a7e4bf7ed78a6dd1195388308b631ea7411962fad270869b32a5ad93e` |
| 9 | `def` | [Fourier.coefficient](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-coefficient--c310870d9fbc00972e6b484b.md) | 66 | `declaration-track:c310870d9fbc00972e6b484bd3f349a63bb160ae12a9d3415865bfeace49b4d5` |
| 10 | `def` | [Fourier.subsets](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-subsets--9eb14bc01179c2463a2d2b77.md) | 74 | `declaration-track:9eb14bc01179c2463a2d2b7723db8c8d256364c97d345f9e9769efc34e2f88f2` |
| 11 | `def` | [Fourier.synthesisNumeratorAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-synthesisnumeratorat--985c495a3187ff5f646ebde1.md) | 79 | `declaration-track:985c495a3187ff5f646ebde19d313ac5cca4104c0f483800e14e63faaf01c2a1` |
| 12 | `def` | [Fourier.synthesisAt](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-synthesisat--c7a7919a31cc4ae410251997.md) | 88 | `declaration-track:c7a7919a31cc4ae410251997898a3f37125b0a83fa8fd5373b32c6eb185157ab` |
| 13 | `def` | [Fourier.workflow](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantd9761f8ad7a61325ca9a3e2850447da9f4f5713f884dea470c713dca14c10f83.lean/declarations/fourier-workflow--cdde666adaf9faeb43a154bf.md) | 96 | `declaration-track:cdde666adaf9faeb43a154bf03b2685b9f6e67382cd0727d9b07af93955fb30d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
