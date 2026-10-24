# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attention.Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b3d28d81a896b8cc4143835ce6c2799802edf0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b3d28d81a896b8cc4143835ce6c2799802edf0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Softmax` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Transformer` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.MatrixNetwork` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSqrtDim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/invsqrtdim--cfcbee473716b1fb1988d2d5.md) | 67 | `declaration-track:cfcbee473716b1fb1988d2d54b2c5dee5d6fc3d116ef3053bee4f5c85922978b` |
| 2 | `def` | [attentionWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/attentionweights--fb9a8d01206c3704b7f756de.md) | 95 | `declaration-track:fb9a8d01206c3704b7f756defe7962e97349fb5d6725bc53e4846a9bc8c3c185` |
| 3 | `def` | [applyAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/applyattention--0872bb892a81ee66eaa4ebf3.md) | 120 | `declaration-track:0872bb892a81ee66eaa4ebf313f1cc9f2453a2c656fd9249c7cc1fa6fe52f3fd` |
| 4 | `def` | [scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/scaleddotproductattention--4e44295f52e3ee630997dd40.md) | 146 | `declaration-track:4e44295f52e3ee630997dd40918257303b0a8b5b40d219793c049588f916bb02` |
| 5 | `structure` | [MultiHeadAttentionParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/multiheadattentionparams--d314d556be1317d90a18e48d.md) | 157 | `declaration-track:d314d556be1317d90a18e48d63afbede0032365aba9a18eee7ceb3d02de55857` |
| 6 | `def` | [linearProject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/linearproject--a96bf7cd6e1b13535d462eb4.md) | 180 | `declaration-track:a96bf7cd6e1b13535d462eb4802912e27929847a0858d1699d3cbc46c92f0f33` |
| 7 | `def` | [singleHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/singlehead--1f514b2464c9ab1815ac0cec.md) | 195 | `declaration-track:1f514b2464c9ab1815ac0cece2c564315b451862f9eca5fd0d3f58a40f824d81` |
| 8 | `def` | [concatVectors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/concatvectors--7bf5f7c33975dd5b5168ae7c.md) | 205 | `declaration-track:7bf5f7c33975dd5b5168ae7ce5cf2ff8a1d9c0504fca9a2aa992921d25beb491` |
| 9 | `def` | [multiHeadAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/multiheadattention--bbe27715a88e1da094e3995f.md) | 213 | `declaration-track:bbe27715a88e1da094e3995f8df23555f8d00f0c55a8000a37f634cac1c56aae` |
| 10 | `def` | [Real.scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/real-scaleddotproductattention--b82d3e39323b1e91a3dc2f6e.md) | 241 | `declaration-track:b82d3e39323b1e91a3dc2f6eaf7654c716e3604289c652037f86a683e17a404a` |
| 11 | `theorem` | [mem_attentionWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/mem-attentionweights--16f67fe44b7f23f25a04c75d.md) | 264 | `result-track:16f67fe44b7f23f25a04c75de78efe7dc7aba5e9c3d207efdabd17362636d446` |
| 12 | `theorem` | [mem_scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/mem-scaleddotproductattention--610b4b3ef584c03cbac5fffb.md) | 285 | `result-track:610b4b3ef584c03cbac5fffbdeb92cd3740bd937bb41ab404719f1a33aa36a7b` |
| 13 | `structure` | [TransformerEncoderLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/transformerencoderlayer--f93b084e48d7d01718c2d8a9.md) | 304 | `declaration-track:f93b084e48d7d01718c2d8a907a0ea2cda0f69ec495ed4d7c7d782a19077c885` |
| 14 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/forward--844c8f7979e7b8ba31bad8d1.md) | 323 | `declaration-track:844c8f7979e7b8ba31bad8d177c3fcdc949561fb71a129b7c1cc099493ab0de7` |
| 15 | `def` | [TransformerEncoder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/transformerencoder--a8d3524b79e2c4c44b4f0625.md) | 342 | `declaration-track:a8d3524b79e2c4c44b4f0625ba032e72be5f89ce6ea240c451755af4e9d99780` |
| 16 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variantac161b011d9fa3822c70aae5adde87818df7726e6419cb30beecf87fbe4ac712.lean/declarations/forward--3142a67b66c0d89be67d87fc.md) | 347 | `declaration-track:3142a67b66c0d89be67d87fc7a2b5ed970b4861fb1bbafe58b943a05e534371a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
