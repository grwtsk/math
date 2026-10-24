# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8c770d299b6d25fb8322e08e67837bf67d9af8f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8c770d299b6d25fb8322e08e67837bf67d9af8f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/framerowspace--518854d85971c7a5b516746d.md) | 25 | `declaration-track:518854d85971c7a5b516746d9b9dd60c591dd9e814bdfde87ff353fcaa907880` |
| 2 | `theorem` | [mem_frameRowSpace_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/mem-framerowspace-iff--5d342919239463ae0ced684e.md) | 29 | `result-track:5d342919239463ae0ced684e3af9c3d8e2a407c2fb1ef6d18b70c275b3d3996d` |
| 3 | `theorem` | [row_mem_frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/row-mem-framerowspace--dfb1945e2a2af94f01b81817.md) | 35 | `result-track:dfb1945e2a2af94f01b8181780e5a088aed9663770fc7c1d1d1b4b13aa619653` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/framerowspace-mul-left-le--449bb72388b26e8c969b7d83.md) | 40 | `result-track:449bb72388b26e8c969b7d831f57cc904426f7cfb523f04d291ef41ebd12ddb6` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/framerowspace-mul-left-eq--ebb6b6b6de8564c3410f7380.md) | 50 | `result-track:ebb6b6b6de8564c3410f73800be04e3569a8c8de2ef8a793e890a6dc71947a81` |
| 6 | `def` | [pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize--d2d43ed047427bc225efe6dc.md) | 61 | `declaration-track:d2d43ed047427bc225efe6dc4b802bd0a241c0b2b011a932b2fe1d212bb175a0` |
| 7 | `theorem` | [pivotNormalize_pivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize-pivot--fc4e5f4c21d617645fe10826.md) | 66 | `result-track:fc4e5f4c21d617645fe10826c6080cdd2b5de13aa620c9273b7b0919d097ad78` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivot-mul-pivotnormalize--cb8afa2cdb90cafc3e0fcefa.md) | 73 | `result-track:cb8afa2cdb90cafc3e0fcefa65f1ef0b8111e7c56368e78c95623d8b65f4a83c` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/framerowspace-pivotnormalize--65d7ac31c682da4524cc1e60.md) | 79 | `result-track:65d7ac31c682da4524cc1e607f71c74921fa718416a8f8fe6ed93700c2d0fe76` |
| 10 | `theorem` | [det_pivotInverse](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/det-pivotinverse--59165799bb920f4d54fe25eb.md) | 89 | `result-track:59165799bb920f4d54fe25eb945614df75747d6c8568748fabfd6a2fe3fbe4af` |
| 11 | `theorem` | [columnMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/columnminor-pivotnormalize--af6c1365d8d95fab37f88fef.md) | 100 | `result-track:af6c1365d8d95fab37f88fef0ec3b85d1f93e0a425dd8c94a1ed04087d94eb4c` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/columnminor-pivotnormalize-ne-zero--63b6db6f869a22138bd92a68.md) | 107 | `result-track:63b6db6f869a22138bd92a6838c871612dc9638a7eddcffcda25cbb7b76a1fcb` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/orderedminor-pivotnormalize--23a65454bfce1db15941e549.md) | 114 | `result-track:23a65454bfce1db15941e54959874b805681807ce6addb95ce20d719f4c6696b` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/allorderedminorsnonneg-pivotnormalize-iff--12471b4cc72a0071d0b08fef.md) | 120 | `result-track:12471b4cc72a0071d0b08feff11be1302335759a4e0866ce423acb9e5d04d189` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/allorderedminorspos-pivotnormalize-iff--49e00bb391825f83b91bc1cf.md) | 129 | `result-track:49e00bb391825f83b91bc1cfd3eb51c6b57b73cdd0979ca1934ae1034486387b` |
| 16 | `theorem` | [vecMul_columnSubmatrix](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/vecmul-columnsubmatrix--ef0d924bb653a9255ab18421.md) | 138 | `result-track:ef0d924bb653a9255ab184215f4a1ad9ba27c58506b4ff5c8532486ebefddc58` |
| 17 | `theorem` | [normalized_coefficients_readback](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/normalized-coefficients-readback--cd7be7530dba6295d3e8e53d.md) | 143 | `result-track:cd7be7530dba6295d3e8e53db31e68dbce547ecff6e2d02dd8adde78ce5ea957` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/normalized-eq-of-framerowspace-eq--3ada5624c58416cf5a93e165.md) | 149 | `result-track:3ada5624c58416cf5a93e165233b3ea02e6a7a34ac7abd175bf619b7ed78271a` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize-eq-iff-rowspace--d499ad6651d1fc1110d39982.md) | 170 | `result-track:d499ad6651d1fc1110d39982e79d4e6df5e11a5502bce639c8963795566b1fa9` |
| 20 | `theorem` | [existsUnique_pivotNormalized](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/existsunique-pivotnormalized--181dfa93c2e29845a2b78e36.md) | 184 | `result-track:181dfa93c2e29845a2b78e36ce46711f37997921eff0fa64173a010c9d4a3014` |
| 21 | `theorem` | [pivotNormalize_fixed](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize-fixed--f047fd26009053c8c9989279.md) | 196 | `result-track:f047fd26009053c8c9989279c62d2f943f1f546415641f45c0ab04d1cee8086d` |
| 22 | `theorem` | [pivotNormalize_transition](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize-transition--50191040c0324ea29d220752.md) | 201 | `result-track:50191040c0324ea29d220752967bb80a363819f90a7851f13a40acfa66bc6b94` |
| 23 | `theorem` | [pivotNormalize_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/pivotnormalize-cocycle--78c2be4864ea5fcaca0c9511.md) | 209 | `result-track:78c2be4864ea5fcaca0c95119cdd3110fb2bbe35e20c43d3b97d3e3def98ca31` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/rank-eq-of-columnminor-ne-zero--9a983b8866acd55d59e6a643.md) | 216 | `result-track:9a983b8866acd55d59e6a64324e4d99df752b894b1178f3221c1af26ad8db963` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/declarations/finrank-framerowspace-of-columnminor-ne-zero--a844ebedd2392d3311c0feda.md) | 226 | `result-track:a844ebedd2392d3311c0feda318bbf4eacb40638cf496673049725f21aaed2ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
