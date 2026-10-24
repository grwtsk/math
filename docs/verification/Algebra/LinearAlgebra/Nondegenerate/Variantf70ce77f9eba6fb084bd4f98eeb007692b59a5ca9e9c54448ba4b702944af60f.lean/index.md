# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25e80b1001b4c972c33eae7666ef97bda53d3eda",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25e80b1001b4c972c33eae7666ef97bda53d3eda`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/nondegenerate--de1401f5a2d6f2d7303a8e60.md) | 26 | `declaration-track:de1401f5a2d6f2d7303a8e603521f27e2d4761cf7fea3292388eec2c4ae9e098` |
| 2 | `lemma` | [nondegenerate_def](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/nondegenerate-def--8091550d3ac9e69fc8615cde.md) | 32 | `result-track:8091550d3ac9e69fc8615cde484c7f0ca8371c02c9a93c561636c51f6e24e707` |
| 3 | `theorem` | [Nondegenerate.eq_zero_of_ortho](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/nondegenerate-eq-zero-of-ortho--097888aa47b447b00bc3fade.md) | 37 | `result-track:097888aa47b447b00bc3fade58a3f669ac410b088945258b2defedf5b89c913c` |
| 4 | `theorem` | [Nondegenerate.exists_not_ortho_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/nondegenerate-exists-not-ortho-of-ne-zero--5aea9ac7069c8ab0f3f00fb1.md) | 42 | `result-track:5aea9ac7069c8ab0f3f00fb1703a693ab77a4e11b1199aefce650988e37c1b5c` |
| 5 | `theorem` | [nondegenerate_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/nondegenerate-of-det-ne-zero--676b1530f624c2bf52442ec1.md) | 52 | `result-track:676b1530f624c2bf52442ec179492eb60e783ac0cbc085f2e939f6500414fd09` |
| 6 | `theorem` | [eq_zero_of_vecMul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/eq-zero-of-vecmul-eq-zero--e795029b037e2a7c0e7f9106.md) | 67 | `result-track:e795029b037e2a7c0e7f9106897c57dbc33f16a9fea95f7050299cf1c936bac9` |
| 7 | `theorem` | [eq_zero_of_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variantf70ce77f9eba6fb084bd4f98eeb007692b59a5ca9e9c54448ba4b702944af60f.lean/declarations/eq-zero-of-mulvec-eq-zero--c1bf2bf571641f86a2a8e9cc.md) | 72 | `result-track:c1bf2bf571641f86a2a8e9cc18f7aaf87fdae45c55de71ded7696673e61881d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
