# Verification target: GRWTSK.LinearAlgebra.TensorProduct.RationalScalarDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc0034b093febfa5715b15bf84b11d6e1ef1edb4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/TensorProduct/RationalScalarDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc0034b093febfa5715b15bf84b11d6e1ef1edb4`.

Source path: `GRWTSK/LinearAlgebra/TensorProduct/RationalScalarDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/TensorProduct/RationalScalarDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarConjugate](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/scalarconjugate--d911e482be8f43407a9eadb2.md) | 37 | `declaration-track:d911e482be8f43407a9eadb202c3502d10def87969e4b7302fa871eac1e4f6f7` |
| 2 | `theorem` | [scalarConjugate_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/scalarconjugate-tmul--236e73a47a69b06a33cfe102.md) | 41 | `result-track:236e73a47a69b06a33cfe1026699897e1d4c7ebf2cecdd641c4543d342e7a4d9` |
| 3 | `theorem` | [scalarConjugate_smul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/scalarconjugate-smul--5df3c153875e2bc08d3358f6.md) | 44 | `result-track:5df3c153875e2bc08d3358f62f732e16785bcc53071a01cab0791057cd53f4a8` |
| 4 | `def` | [tensorTrace](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/tensortrace--b27c694641e73ac4f9e651cc.md) | 53 | `declaration-track:b27c694641e73ac4f9e651cc144c994e62f7b2d64a3cb2fd2c1101a003437637` |
| 5 | `theorem` | [tensorTrace_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/tensortrace-tmul--102740419b8181ee373d8b98.md) | 57 | `result-track:102740419b8181ee373d8b986be43d6d3a4a3f608bdee4be7ab61ed8c84cb6b6` |
| 6 | `def` | [rationalPart](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/rationalpart--e74fed6e1bb2ac1c7c115d5c.md) | 63 | `declaration-track:e74fed6e1bb2ac1c7c115d5c9c7e52570320019d7dfdc26a61fae22d347abb5a` |
| 7 | `theorem` | [mem_rationalPart](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/mem-rationalpart--033fad92fb46b4fb1a4fe1c6.md) | 67 | `result-track:033fad92fb46b4fb1a4fe1c6516998e351f7d476811830dfe345845012bdeff5` |
| 8 | `theorem` | [one_tmul_tensorTrace](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/one-tmul-tensortrace--89c766f8ee36d9b460b012d0.md) | 74 | `result-track:89c766f8ee36d9b460b012d077770bab13d4f338f606f5e501155a071d952841` |
| 9 | `theorem` | [tensorTrace_traceDual_smul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/tensortrace-tracedual-smul--d0a1cef37bd10dc89b4c3af7.md) | 87 | `result-track:d0a1cef37bd10dc89b4c3af7111336f8148d84d3b3fdeda0a662c372487b3736` |
| 10 | `theorem` | [finiteGalois_scalarDescent](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/RationalScalarDescent.lean/declarations/finitegalois-scalardescent--26149643af45d3bf33dc58c2.md) | 109 | `result-track:26149643af45d3bf33dc58c24d3261f73d827371b5af9fe2c2e2a973e3a429e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
