# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceWeightedMultiplier.Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af5761f6abb3ad38af4d2003ea5921dcf59d4c8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af5761f6abb3ad38af4d2003ea5921dcf59d4c8`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/boundarymultiplier--9e2009995dd1cb52dde2a6ef.md) | 22 | `declaration-track:9e2009995dd1cb52dde2a6ef5dbb2e90c1259ac738883a49f1581c65262e00c2` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/boundarymultiplier-norm-le--a08561a7ea8ab1310332d6bf.md) | 26 | `result-track:a08561a7ea8ab1310332d6bfe1aa858c257189ab2292482f92806f19590aebf1` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/boundarymultiplier-measurable--21bb1bd7d9b05722e20a40cf.md) | 73 | `result-track:21bb1bd7d9b05722e20a40cf7389074c1318d4182c5992fb79257c7fa96a97cf` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencyproduct-memlp--7214aa1c6687e2a968b846ac.md) | 80 | `result-track:7214aa1c6687e2a968b846aca38223ed6f2a47f3175a43aaf9c6df59af597d09` |
| 5 | `def` | [frequencyVector](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencyvector--d209cc931e97c54a94e650bd.md) | 93 | `declaration-track:d209cc931e97c54a94e650bd3957b1feede4c3d52f6b96fc542b42b085e964e6` |
| 6 | `theorem` | [frequencyVector_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencyvector-ae--71b3016ac9621b61975882aa.md) | 98 | `result-track:71b3016ac9621b61975882aad21c283165af2208802e70c597b187625fc33381` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencyvector-norm-le--2b513bdbd1f0b8617fd8f912.md) | 104 | `result-track:2b513bdbd1f0b8617fd8f912c13be5bc1b7a26b438e254840bd7568c43a1eb1f` |
| 8 | `def` | [frequencyMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencymultiplier--88e921246061aed07620305b.md) | 114 | `declaration-track:88e921246061aed07620305bacaa73b11aec9491f82e012dd974bae67c4450fd` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/frequencymultiplier-ae--89b944de5bd74f2da783c797.md) | 143 | `result-track:89b944de5bd74f2da783c797ce4a357a4fe762127344fe8fc600c2dcbc3fd049` |
| 10 | `def` | [sourceMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/sourcemultiplier--b03ee9a5b9688b8c355966bc.md) | 150 | `declaration-track:b03ee9a5b9688b8c355966bc0054607aaa950f1dd87cf576e6728308a2bcd593` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/sourcemultiplier-fourier-ae--04f19d3615308398a55b80ef.md) | 155 | `result-track:04f19d3615308398a55b80efbfbecc0055bd952c475188ab10e3478faa3bfe60` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplier/Variantd849d31aa77d2c71700b3c34a4e238a273fd8138d5f611f7be961221db0bf9ff.lean/declarations/sourcemultiplier-norm-le--bb4f5683b7b484c19c8632d0.md) | 164 | `result-track:bb4f5683b7b484c19c8632d0a5d4987e28bee9f96716488bd66c81fda631ac59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
