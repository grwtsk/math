# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21b00403c2cb935d0c22d47923ad3d67b0c19906",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21b00403c2cb935d0c22d47923ad3d67b0c19906`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_subfield_of_mul_eq_one_of_mem_subfield_right](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/declarations/mem-subfield-of-mul-eq-one-of-mem-subfield-right--843e126e5bcfcbbe30cf2e91.md) | 29 | `result-track:843e126e5bcfcbbe30cf2e913ac19a2dac2b25499e065bb1384e35e3bed14d25` |
| 2 | `lemma` | [mem_subfield_of_mul_eq_one_of_mem_subfield_left](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantea7b8b40a1af97a34ba7ce236a86eb46fca809915690a130f7949da22db713bc.lean/declarations/mem-subfield-of-mul-eq-one-of-mem-subfield-left--125bcba4c7300280f5afa1ed.md) | 51 | `result-track:125bcba4c7300280f5afa1edaff7e6ed3a01f5077f2f13403eda7a58e90551a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
