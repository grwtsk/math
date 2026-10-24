# Verification target: GRWTSK.Algebra.LinearAlgebra.ProvenanceRange.Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934654a4c032b56a81e8fe869610ab2a96bc5264",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934654a4c032b56a81e8fe869610ab2a96bc5264`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_mulVec_mem_range_of_kernel_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/declarations/symmetric-mulvec-mem-range-of-kernel-orthogonal--9e47f04bda7b80789d9575b7.md) | 31 | `result-track:9e47f04bda7b80789d9575b750de13fcbff8c74d073db5e5c27b81e7f77ca897` |
| 2 | `theorem` | [compatible_provenanceMatrix_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/declarations/compatible-provenancematrix-issymm--8ace639c011c7e9fc133fa20.md) | 65 | `result-track:8ace639c011c7e9fc133fa20320545fa5581c2082dfa0bfa7e0ef83f36f16d7e` |
| 3 | `theorem` | [cross_mem_provenance_range](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/declarations/cross-mem-provenance-range--63d96720ec46dcd546f2a81a.md) | 86 | `result-track:63d96720ec46dcd546f2a81a52ff03ccf109340f0bb244ae53b4de4ed032bcdb` |
| 4 | `theorem` | [exists_provenance_solution](../../../../../mathematics/Algebra/LinearAlgebra/ProvenanceRange/Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03.lean/declarations/exists-provenance-solution--d354da5261544facdaa60392.md) | 104 | `result-track:d354da5261544facdaa603923263852377d0d33f9440c5c5c78d952d872974e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
