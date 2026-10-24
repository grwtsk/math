# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticBridge.Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "444798cff8cfd1f4fd8508e39c1a45998b25635e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `444798cff8cfd1f4fd8508e39c1a45998b25635e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.SemanticReceipt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.TensorNetwork.Recovery` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BridgeDependencyDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/bridgedependencydomain--ef62b1f832b4adab4db05096.md) | 19 | `declaration-track:ef62b1f832b4adab4db050969190803ffe7332bb8947c06160f4796f563c42f6` |
| 2 | `structure` | [BridgeDependency](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/bridgedependency--26dd23df938d3d65abf9269f.md) | 25 | `declaration-track:26dd23df938d3d65abf9269fe2e5a0a33cc79a5b5fcfb89745a63b099a67722b` |
| 3 | `inductive` | [TensorDerivedSEAProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/tensorderivedseaproof--64a37db25d1c6e12a61a27b1.md) | 31 | `declaration-track:64a37db25d1c6e12a61a27b1b7e07857dd8a4a117b303de12b966b5fe9eea622` |
| 4 | `theorem` | [no_tensor_derived_sea_proof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/no-tensor-derived-sea-proof--8e11f4be7fcd55eee39ac138.md) | 33 | `result-track:8e11f4be7fcd55eee39ac1387db7234cfb89fee9be1f24358ccbe8989fe58c46` |
| 5 | `structure` | [SEAContextBridgeCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/seacontextbridgecertificate--e2286251051886a0f49bf131.md) | 38 | `declaration-track:e2286251051886a0f49bf131df0d8f4144c1cae38cc3aa867f54a26902bb16b1` |
| 6 | `def` | [CertifiedSEAContextBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/certifiedseacontextbridge--d336f1696045f7ada6f5396e.md) | 67 | `declaration-track:d336f1696045f7ada6f5396e369fdf65a703fddfb071fb0e58bc0b99ce1fed9e` |
| 7 | `theorem` | [SEAContextBridgeCertificate.certified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/seacontextbridgecertificate-certified--9241cec350b9fb263e4bcf11.md) | 84 | `result-track:9241cec350b9fb263e4bcf11218fa6d49b12683bb26adcf404115126be949e37` |
| 8 | `theorem` | [gauge_change_preserves_sea_result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/gauge-change-preserves-sea-result--f60f4194b46f8fc1aab3d7cb.md) | 102 | `result-track:f60f4194b46f8fc1aab3d7cb0697ef8704afeaa20128f002d0650a1a9c41e4f5` |
| 9 | `theorem` | [anchor_rebirth_preserves_sea_receipt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SemanticBridge/Variant7766752ef2f3579b39b4f1afeb17443e23ce10562d3e2c13a52a559157334f68.lean/declarations/anchor-rebirth-preserves-sea-receipt--7be0f26361197023721c15d8.md) | 110 | `result-track:7be0f26361197023721c15d868f36e05af5b612f444d7fa191db739cb42ca2f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
