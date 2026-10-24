# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attention.Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dee35a77b5b7cc4f8ef7470805b3c5a5bb7e3cb9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Softmax` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Transformer` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.MatrixNetwork` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSqrtDim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/invsqrtdim--066b8ef69f92fb7a6d9ad4e2.md) | 59 | `declaration-track:066b8ef69f92fb7a6d9ad4e2094458b160f39c10792a38ac5b172af58055ed9e` |
| 2 | `def` | [attentionWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/attentionweights--c59fa37540befd72dd82b636.md) | 87 | `declaration-track:c59fa37540befd72dd82b6360823a36b669aa1f5202bf2ed5c15bf80d959dc27` |
| 3 | `def` | [applyAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/applyattention--3d07e6b569300ba92f0f792a.md) | 112 | `declaration-track:3d07e6b569300ba92f0f792ab3846302f9d33951d7ce716bde01f6e4be733ef0` |
| 4 | `def` | [scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/scaleddotproductattention--0dcfa0eb763d753d4f285dcc.md) | 138 | `declaration-track:0dcfa0eb763d753d4f285dcc35dde47e7a81d18875a4bf7482fc5ff41116f9ef` |
| 5 | `structure` | [MultiHeadAttentionParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/multiheadattentionparams--3662377f2f7adffff1be0b6d.md) | 149 | `declaration-track:3662377f2f7adffff1be0b6d1cb41d9f6b5f1960ec9e469c376810f8cd1254b2` |
| 6 | `def` | [linearProject](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/linearproject--1488e5d97c1f8ae67ba3de4c.md) | 172 | `declaration-track:1488e5d97c1f8ae67ba3de4cd37a05a2c1fc4e0d0dae70eed39ecd60d35b880d` |
| 7 | `def` | [singleHead](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/singlehead--3e0180b57b3074b9c6c4a5db.md) | 187 | `declaration-track:3e0180b57b3074b9c6c4a5db1e7fc225b7033aeb8eac24fb2eeea91649a61b43` |
| 8 | `def` | [concatVectors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/concatvectors--777fcd4aac47164c834acd86.md) | 197 | `declaration-track:777fcd4aac47164c834acd8608ecba1a1106603a6a76e44b0f490d2d02c7db1c` |
| 9 | `def` | [multiHeadAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/multiheadattention--56261ded33e49e9bd094ecf6.md) | 205 | `declaration-track:56261ded33e49e9bd094ecf613e42003d9c7e3879affaa92a8a6b88cfbf745ca` |
| 10 | `def` | [Real.scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/real-scaleddotproductattention--430ee519c30702c2a75557e1.md) | 233 | `declaration-track:430ee519c30702c2a75557e1346d57fd4e50e6f0a4c94528297a840ad218a59d` |
| 11 | `theorem` | [mem_attentionWeights](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/mem-attentionweights--b4074f014a56ae023f8d36a3.md) | 256 | `result-track:b4074f014a56ae023f8d36a322a71c2fe4c5b3f1068e310027e4cfe8c8c93abd` |
| 12 | `theorem` | [mem_scaledDotProductAttention](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/mem-scaleddotproductattention--a39b2a9ed33f17f61ae69b87.md) | 277 | `result-track:a39b2a9ed33f17f61ae69b87a04eec6361bd49744ab0f18c7e873753aa956546` |
| 13 | `structure` | [TransformerEncoderLayer](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/transformerencoderlayer--05003da028d3d3ed70841c87.md) | 296 | `declaration-track:05003da028d3d3ed70841c8738a5c42059bc9a18090167b3b8826034cf6969a7` |
| 14 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/forward--ca750ed8d23cf189f8d7fd9b.md) | 315 | `declaration-track:ca750ed8d23cf189f8d7fd9b9be8b40801be8d1ab29115629a4eb46bbcfedb4e` |
| 15 | `def` | [TransformerEncoder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/transformerencoder--1de8ac26c5371d3079bb92a4.md) | 334 | `declaration-track:1de8ac26c5371d3079bb92a4c4c1fb225b3ecfc1ea446b1774cc6bf9cb4f38fa` |
| 16 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attention/Variant930a5b1d30b49ded27bc9dd7fa33a1c8a97048062a474465fcc7229c02b7e10d.lean/declarations/forward--0ea933cc6c9149f507b594ad.md) | 339 | `declaration-track:0ea933cc6c9149f507b594ad8be2034ccbe5bbe3bc43c27fda5af70f5807f0dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
