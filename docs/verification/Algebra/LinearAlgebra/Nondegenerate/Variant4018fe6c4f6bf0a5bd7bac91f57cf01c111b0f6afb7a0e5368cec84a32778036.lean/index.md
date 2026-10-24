# Verification target: GRWTSK.Algebra.LinearAlgebra.Nondegenerate.Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeee281477147cb52ecc2b1433abb0e9c1f337b3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeee281477147cb52ecc2b1433abb0e9c1f337b3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nondegenerate](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/nondegenerate--7f8088d828447a67e7768dd0.md) | 34 | `declaration-track:7f8088d828447a67e7768dd0b1835beca8da9d1371904b3c5b0bec008cc6c385` |
| 2 | `lemma` | [nondegenerate_def](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/nondegenerate-def--cfa900fd71d8b5b39813cddc.md) | 40 | `result-track:cfa900fd71d8b5b39813cddc6db97b7a38876dd6e0153a55c26829e854f21885` |
| 3 | `theorem` | [Nondegenerate.eq_zero_of_ortho](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/nondegenerate-eq-zero-of-ortho--e923e476d9d60d8691917b5f.md) | 45 | `result-track:e923e476d9d60d8691917b5f0f6ac89b7ebbffeec3437e849a58f30fd88d1537` |
| 4 | `theorem` | [Nondegenerate.exists_not_ortho_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/nondegenerate-exists-not-ortho-of-ne-zero--e25c5e0355efed3d592e42d0.md) | 50 | `result-track:e25c5e0355efed3d592e42d024dc2859ea467497e66591fc6d69da817c75d7af` |
| 5 | `theorem` | [nondegenerate_of_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/nondegenerate-of-det-ne-zero--41992c9f699a0f2f529ddd15.md) | 60 | `result-track:41992c9f699a0f2f529ddd15620165a8ea37e6df4a5f6a4ef566bb0ad24911af` |
| 6 | `theorem` | [eq_zero_of_vecMul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/eq-zero-of-vecmul-eq-zero--ccb64cb85f63885107604924.md) | 75 | `result-track:ccb64cb85f6388510760492484a3f6420da982aef98ca8d1806bbf662f6a7a05` |
| 7 | `theorem` | [eq_zero_of_mulVec_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/declarations/eq-zero-of-mulvec-eq-zero--d9d11944447a6e3dbdb7f2b4.md) | 80 | `result-track:d9d11944447a6e3dbdb7f2b421097d04fecf12461901a71086dce6f208fe3bea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
