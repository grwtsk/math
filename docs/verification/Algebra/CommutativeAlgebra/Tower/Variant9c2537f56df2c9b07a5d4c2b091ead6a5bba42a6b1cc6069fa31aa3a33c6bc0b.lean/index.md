# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Tower.Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d69afdfc8799e96f6feb3315a740a544e9d8182",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d69afdfc8799e96f6feb3315a740a544e9d8182`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/aeval-map-algebramap--d3daf042450fe64012c0c518.md) | 43 | `result-track:d3daf042450fe64012c0c51807aab3490dd75025e24c68d1b7d08ee84738b1f3` |
| 2 | `lemma` | [eval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/eval-map-algebramap--e39d3c2956d3f20971d7faa8.md) | 47 | `result-track:e39d3c2956d3f20971d7faa86ee18151d7670b58379cb80abaf3300eeb36dbd9` |
| 3 | `theorem` | [aeval_algebraMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/aeval-algebramap-apply--7c27b5afc713f6e3fca4caab.md) | 59 | `result-track:7c27b5afc713f6e3fca4caabca361743fa58c313942221f897e951c22e88cfe6` |
| 4 | `theorem` | [aeval_algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/aeval-algebramap-eq-zero-iff--7809803450c7ec13db539ada.md) | 64 | `result-track:7809803450c7ec13db539adaa3f957ef340446293e5925679d977986ca50205e` |
| 5 | `theorem` | [aeval_algebraMap_eq_zero_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/aeval-algebramap-eq-zero-iff-of-injective--9050f952f7cbe494f9ec19e7.md) | 71 | `result-track:9050f952f7cbe494f9ec19e72cbfaac5d19a4620616f715d328992bc5a2d9f8a` |
| 6 | `theorem` | [aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant9c2537f56df2c9b07a5d4c2b091ead6a5bba42a6b1cc6069fa31aa3a33c6bc0b.lean/declarations/aeval-coe--6327f52ab9c3f33bdb52a388.md) | 88 | `result-track:6327f52ab9c3f33bdb52a388fd46b884ac846cb44230cbbda53b304d66cd4b00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
