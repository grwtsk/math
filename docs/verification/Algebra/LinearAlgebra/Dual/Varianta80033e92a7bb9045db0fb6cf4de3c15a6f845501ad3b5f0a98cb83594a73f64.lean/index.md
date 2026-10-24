# Verification target: GRWTSK.Algebra.LinearAlgebra.Dual.Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28d212c6b6db64a7a65a3102691c5cd1ab5341fe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28d212c6b6db64a7a65a3102691c5cd1ab5341fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualProd](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/dualprod--d3eae97df8178dfcd9eb25e3.md) | 36 | `declaration-track:d3eae97df8178dfcd9eb25e382e46d6d89199f0453b9fa7a2b08d8d5a0d4dcee` |
| 2 | `theorem` | [isSymm_dualProd](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/issymm-dualprod--5292d0fd54dfd2f172d17914.md) | 40 | `result-track:5292d0fd54dfd2f172d17914a53d07b5141b93c8ed2a72bfe0cd7ec66d72dc5c` |
| 3 | `theorem` | [separatingLeft_dualProd](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/separatingleft-dualprod--b48a30b7f87a0112bfdf6d12.md) | 48 | `result-track:b48a30b7f87a0112bfdf6d12617ba010f12f9163bdfcc6e2a9667fc391ed8987` |
| 4 | `def` | [dualProd](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/dualprod--eb971677aaf525753f9ef35e.md) | 84 | `declaration-track:eb971677aaf525753f9ef35e7a60572fa2abcf43c390c69438ba4a40d9fee4ff` |
| 5 | `theorem` | [_root_.LinearMap.dualProd.toQuadraticForm](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/root-linearmap-dualprod-toquadraticform--892425fe0db7685004ee8cf0.md) | 96 | `result-track:892425fe0db7685004ee8cf011d62cfc61c917e35e6fa8a033aa92e5f295ad76` |
| 6 | `def` | [dualProdIsometry](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/dualprodisometry--d323e2ac39888eb649ffed53.md) | 104 | `declaration-track:d323e2ac39888eb649ffed5384e8f40366b7bd762755789752446ff5a37b6b31` |
| 7 | `def` | [dualProdProdIsometry](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/dualprodprodisometry--bb299e2cc093a65ef46098b5.md) | 110 | `declaration-track:bb299e2cc093a65ef46098b54e055ca32ae78ce8dc25dd2e8125762daa196795` |
| 8 | `def` | [toDualProd](../../../../../mathematics/Algebra/LinearAlgebra/Dual/Varianta80033e92a7bb9045db0fb6cf4de3c15a6f845501ad3b5f0a98cb83594a73f64.lean/declarations/todualprod--6ebb3ffc2d213b2d54942a96.md) | 131 | `declaration-track:6ebb3ffc2d213b2d54942a960888c0bab4b14baad71bffb8f0bb67125820564c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
