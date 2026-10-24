# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6854ebb704c2fe51ed9f6f88c7a413ab1d29b95b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6854ebb704c2fe51ed9f6f88c7a413ab1d29b95b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tensordistrib--c236e054512b93b22b3a4f56.md) | 44 | `declaration-track:c236e054512b93b22b3a4f56caa55d8c58609488bb45da12c7b901fc895ec5da` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tensordistrib-tmul--e416d7712c3b4bb389ca9ea0.md) | 57 | `result-track:e416d7712c3b4bb389ca9ea0145f3cd37856209286cd74f35f024de6c46c0cca` |
| 3 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tmul--71c295e68cb72aeef3c63cd0.md) | 65 | `declaration-track:71c295e68cb72aeef3c63cd044a1f91da652ae3de7d8c3e3cfe9003ee15032b0` |
| 4 | `theorem` | [associated_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/associated-tmul--e1db6e51c26c5463ccee5b0c.md) | 69 | `result-track:e1db6e51c26c5463ccee5b0c58ded92c9aab41229efcab41920a1ea07d8118b1` |
| 5 | `def` | [tensorDistrib](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tensordistrib--5fc738461cc5e997171f0223.md) | 88 | `declaration-track:5fc738461cc5e997171f0223d7f4b4184d6aea71829b04111749676e18373207` |
| 6 | `theorem` | [tensorDistrib_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tensordistrib-tmul--6a9e76bb0d16092d03800c43.md) | 95 | `result-track:6a9e76bb0d16092d03800c4307bfad7783f18959a259f0a23e5081686ee598fe` |
| 7 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/tmul--e7253e2a03d7864389a16d3a.md) | 103 | `declaration-track:e7253e2a03d7864389a16d3ad30b2a9f1daa2782f16d476a2c3bb2e76e6d1a8e` |
| 8 | `theorem` | [associated_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/associated-tmul--242ace4e77f3921bf4efcdd1.md) | 107 | `result-track:242ace4e77f3921bf4efcdd1042ca91cf78e1a706b24c2b05e7cfb16fe99d114` |
| 9 | `theorem` | [polarBilin_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/polarbilin-tmul--8597501b866721bcfdbb0a90.md) | 113 | `result-track:8597501b866721bcfdbb0a90288aa1b726114511363f36da5eec3e05b6ba8ac4` |
| 10 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/basechange--9bded08d9b5c1e73175e1cb6.md) | 123 | `declaration-track:9bded08d9b5c1e73175e1cb6bba6293918f1a49c1b4ab63371d08da2f81ca11b` |
| 11 | `theorem` | [baseChange_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/basechange-tmul--6132a5e815e45dc23adf1ccc.md) | 127 | `result-track:6132a5e815e45dc23adf1ccc252c416f21f999dd5be65996a13aa5a4fa9de746` |
| 12 | `theorem` | [associated_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/associated-basechange--88e747440ddb5f92aecc28a8.md) | 131 | `result-track:88e747440ddb5f92aecc28a846145590dfa0f58366103b82049d48ea800d0ffc` |
| 13 | `theorem` | [polarBilin_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/polarbilin-basechange--fc008e74c82081d9a2b52a87.md) | 137 | `result-track:fc008e74c82081d9a2b52a8779c6874c3ddaaa59fc82cbf9692e40e450a2f357` |
| 14 | `theorem` | [baseChange_ext](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant7c6de3189683f87cb52f5b51d2cfca2f4e7ecf85356c5bf8063f35cf22a0ff9e.lean/declarations/basechange-ext--b6b1255743ed3b30b55e48df.md) | 153 | `result-track:b6b1255743ed3b30b55e48df723b0681ee21a1ee0eac3fc03dcf8efcc9ffdddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
