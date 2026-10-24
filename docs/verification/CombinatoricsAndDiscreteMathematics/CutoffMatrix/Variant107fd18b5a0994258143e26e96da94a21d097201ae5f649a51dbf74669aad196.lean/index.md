# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CutoffMatrix.Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e1617d120960ea70b426fc2102589a2f1bab1b8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e1617d120960ea70b426fc2102589a2f1bab1b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCutoffMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/productcutoffmatrix--09abbfdfba84d47cf9a7107c.md) | 29 | `declaration-track:09abbfdfba84d47cf9a7107c433f3a6a41acefd656f3e264988fb7df93b4083e` |
| 2 | `def` | [productFiberIncrementMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/productfiberincrementmatrix--1d85f548426e169c893ccf91.md) | 37 | `declaration-track:1d85f548426e169c893ccf91a75b06e9c0fa04046bead65eede1befbadd68809` |
| 3 | `theorem` | [productCutoffMatrix_zero_of_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/productcutoffmatrix-zero-of-positive--1569034b4e169fd1074761e2.md) | 46 | `result-track:1569034b4e169fd1074761e29d9d0acd686a869bb09c71aef8822e7772c21924` |
| 4 | `theorem` | [productCutoffMatrix_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/productcutoffmatrix-succ--80ab65fbc3d7b9f255d24788.md) | 60 | `result-track:80ab65fbc3d7b9f255d24788cea9c91d5eecc3786519f956be2ff8fcf48ba3d0` |
| 5 | `theorem` | [productCutoffMatrix_eq_sum_productFiberIncrements](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/productcutoffmatrix-eq-sum-productfiberincrements--9c98c97f1b262c5ddde44eab.md) | 81 | `result-track:9c98c97f1b262c5ddde44eab26ccca70a952fec3a02d4015918aaabdc7d7fb9d` |
| 6 | `theorem` | [bilinearMatrixPairing_productCutoff_eq_sum_increments](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/declarations/bilinearmatrixpairing-productcutoff-eq-sum-increments--5015540fc528bf1c5a4201d8.md) | 99 | `result-track:5015540fc528bf1c5a4201d840d3eaac28e9ab92468a3aa7d7dabbd87baf8b18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
