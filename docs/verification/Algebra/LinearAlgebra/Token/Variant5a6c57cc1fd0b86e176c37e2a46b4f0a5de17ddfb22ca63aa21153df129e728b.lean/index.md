# Verification target: GRWTSK.Algebra.LinearAlgebra.Token.Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7144c2fd126cabefac276ed4235eb3ebf40c6872",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7144c2fd126cabefac276ed4235eb3ebf40c6872`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TokenAlphabet](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/declarations/tokenalphabet--e79a6bdf7ca4b0af18af79a4.md) | 5 | `declaration-track:e79a6bdf7ca4b0af18af79a493ba631e91db0e2caf51fc597ace451f02d74e97` |
| 2 | `structure` | [TokenSequence](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/declarations/tokensequence--f2983bc7eeeeb21217f1780a.md) | 9 | `declaration-track:f2983bc7eeeeb21217f1780a69b94558398808bcf959f8f0b8d8fc45d3ba81d3` |
| 3 | `structure` | [TokenBinaryMatrixEncoding](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/declarations/tokenbinarymatrixencoding--b9069db1e6b097bff44046fc.md) | 13 | `declaration-track:b9069db1e6b097bff44046fc28bfe4090c1c1140b3834046de7db8b179d7547e` |
| 4 | `theorem` | [tokenBinaryMatrixEncoding_boundary](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/declarations/tokenbinarymatrixencoding-boundary--fbcac96d585a128cd7d1653c.md) | 22 | `result-track:fbcac96d585a128cd7d1653c1c700f446a3f95152138341921d5f3a13bb68a9a` |
| 5 | `theorem` | [tokenSequence_length_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant5a6c57cc1fd0b86e176c37e2a46b4f0a5de17ddfb22ca63aa21153df129e728b.lean/declarations/tokensequence-length-nonneg--5e13e410fb79766b414aaab4.md) | 30 | `result-track:5e13e410fb79766b414aaab4ea4be8dfba24fc80d621702c690680ecb96f8a88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
