# Verification target: GRWTSK.Algebra.LinearAlgebra.Fold.Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b789edfeff36b6c181bf7488162b72d90c6794f1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b789edfeff36b6c181bf7488162b72d90c6794f1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldr](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr--7e08fdfe5c67144ee8b78b7c.md) | 55 | `declaration-track:7e08fdfe5c67144ee8b78b7c7da343743a39db4fcbfb5946b09e452428cb4566` |
| 2 | `theorem` | [foldr_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr--ec3fd148b1fcb0ddb808644f.md) | 60 | `result-track:ec3fd148b1fcb0ddb808644fe68cb5fc63ab7d0773cb9bfbc7c4e5c8ad334d3f` |
| 3 | `theorem` | [foldr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-algebramap--4ac44eb11f50e27fb25e019c.md) | 64 | `result-track:4ac44eb11f50e27fb25e019c13e91a1ff9b601220ce286ed01885a1f68b8fcc9` |
| 4 | `theorem` | [foldr_one](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-one--bc41dd081850d4e31e159054.md) | 69 | `result-track:bc41dd081850d4e31e1590547ab770b31efe2d4a39a0905652076e01446b9931` |
| 5 | `theorem` | [foldr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-mul--88daff5bdd72013a047f7181.md) | 73 | `result-track:88daff5bdd72013a047f718191532d674214a510f9b54cafedcd69da4a227c4b` |
| 6 | `theorem` | [foldr_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-prod-map--af512dc49ab1e6df980ca1ed.md) | 78 | `result-track:af512dc49ab1e6df980ca1edf5b58f5aaf3cde293ee39af411b9c45c9c10a12a` |
| 7 | `def` | [foldl](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl--b17634d5f11b9ad13f3d99ed.md) | 92 | `declaration-track:b17634d5f11b9ad13f3d99edbed445b72db8d3d2ebbb2be4b257c19518073c5b` |
| 8 | `theorem` | [foldl_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl-reverse--0779f2fd6f676f1717d81d0b.md) | 97 | `result-track:0779f2fd6f676f1717d81d0b0e5b48ed57cca32aaee637024b230697e8688ffb` |
| 9 | `theorem` | [foldr_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-reverse--dd3d1417e37e1137625e0a2b.md) | 102 | `result-track:dd3d1417e37e1137625e0a2bd6571bba1ccdd5b8c6af4d682a7ca98e279fa0a5` |
| 10 | `theorem` | [foldl_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl--5d1fc3f6f1f6f58852b9e972.md) | 107 | `result-track:5d1fc3f6f1f6f58852b9e972870b757bedfedd980ad2dc004b82a7bc111e1600` |
| 11 | `theorem` | [foldl_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl-algebramap--abb469696c7b25cdef871065.md) | 111 | `result-track:abb469696c7b25cdef8710658d43fcbad499a025dadaa0f36646436e3c4a648d` |
| 12 | `theorem` | [foldl_one](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl-one--01f9bc192bc4b1bcd0fddbff.md) | 116 | `result-track:01f9bc192bc4b1bcd0fddbff71550bfdc807d67bc1db91b2ace2791e618cc495` |
| 13 | `theorem` | [foldl_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl-mul--ecbd55798708858f5ee3bfc1.md) | 120 | `result-track:ecbd55798708858f5ee3bfc1dab8e459ebeffb56a33740c60b685342bf692045` |
| 14 | `theorem` | [foldl_prod_map_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldl-prod-map--2ffe7c43882000b3d6d45378.md) | 125 | `result-track:2ffe7c43882000b3d6d45378ff4dbcc90702c7b42ac96f8f9acb9cb542615657` |
| 15 | `theorem` | [right_induction](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/right-induction--fd68cba2f98f6ba12ed1c8bf.md) | 132 | `result-track:fd68cba2f98f6ba12ed1c8bfff7a523671d04989b483aaf3582eb6e75d7098be` |
| 16 | `theorem` | [left_induction](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/left-induction--b75f7ee03e87be21c08047a9.md) | 152 | `result-track:b75f7ee03e87be21c08047a916babc64cae7e41a3906869077bfe037badf1ac6` |
| 17 | `def` | [foldr'Aux](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-aux--ad1496260fe3bf27a2388486.md) | 165 | `declaration-track:ad1496260fe3bf27a2388486fdfc2021422e23238cf8d8126bc19a05cd58ab08` |
| 18 | `theorem` | [foldr'Aux_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-aux-apply-apply--febc9bb9cf5387471d12d3a4.md) | 179 | `result-track:febc9bb9cf5387471d12d3a4bcdee2763963b4915ce5f261cf075181a51ef3e9` |
| 19 | `theorem` | [foldr'Aux_foldr'Aux](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-aux-foldr-aux--24fda84e0269db9ceddb3c41.md) | 183 | `result-track:24fda84e0269db9ceddb3c41f9c5c2492610aebd5ddb9eb0b17a3a912643b8f7` |
| 20 | `def` | [foldr'](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr--67708887f4c6dca6ea5238be.md) | 194 | `declaration-track:67708887f4c6dca6ea5238bea6e1390bd866be33522a6112beb04c9c81be6772` |
| 21 | `theorem` | [foldr'_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-algebramap--8aea67da981e0c30f446d10a.md) | 198 | `result-track:8aea67da981e0c30f446d10a8b687fa055fb112652b46d4f73d9d26ade64e1c5` |
| 22 | `theorem` | [foldr'_ι](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr--796d8b7164f5a2ad63406d14.md) | 203 | `result-track:796d8b7164f5a2ad63406d14969466c8d2e11a105af0582ecf45b61cca756a0d` |
| 23 | `theorem` | [foldr'_ι_mul](../../../../../mathematics/Algebra/LinearAlgebra/Fold/Variant66691e5a0d2d828be1cd9c22c11be6c0ea821e1aa10feb55cbfe71605d397fd7.lean/declarations/foldr-mul--00c5a938af16f06fe1340bf2.md) | 208 | `result-track:00c5a938af16f06fe1340bf27703560fc740e3db47f07acf53855c2c6ac48711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
