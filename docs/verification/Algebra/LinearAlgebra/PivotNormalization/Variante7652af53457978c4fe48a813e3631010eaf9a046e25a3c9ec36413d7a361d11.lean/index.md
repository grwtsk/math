# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02e65aa6a444d1c9812daf74a50541da0cf65dfa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02e65aa6a444d1c9812daf74a50541da0cf65dfa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/framerowspace--2eee05155d9d5b2bfdc95dd7.md) | 33 | `declaration-track:2eee05155d9d5b2bfdc95dd775998b0abf0207069f56f7265115743e6d78cacc` |
| 2 | `theorem` | [mem_frameRowSpace_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/mem-framerowspace-iff--16f63c68da65266a85d23227.md) | 37 | `result-track:16f63c68da65266a85d232278cfb04bd7f58623208b7e68c35767ae3c710f812` |
| 3 | `theorem` | [row_mem_frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/row-mem-framerowspace--847b8ad42865dc63373451cd.md) | 43 | `result-track:847b8ad42865dc63373451cdb3df979fff100ccde4aebb8eff803b2a16b1a69d` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/framerowspace-mul-left-le--bd0b227174b92c25d0ae0e14.md) | 48 | `result-track:bd0b227174b92c25d0ae0e14fbc4c118719210748c1a4bff25fa54d7f24d2bd8` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/framerowspace-mul-left-eq--43a92a1f7a0fe402cd02d227.md) | 58 | `result-track:43a92a1f7a0fe402cd02d227edf43b8cd0655f0ba534735a1a2bbcb7a4ae5f61` |
| 6 | `def` | [pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize--ca8c28bfb9f4f640e70f8947.md) | 69 | `declaration-track:ca8c28bfb9f4f640e70f89477655f0cb98f0103f082a33c00300d629e31b91c1` |
| 7 | `theorem` | [pivotNormalize_pivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize-pivot--1e8ebcbcfca8112e47a67cfd.md) | 74 | `result-track:1e8ebcbcfca8112e47a67cfd501bc4de1639b456a36fb74acb29dc2713363237` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivot-mul-pivotnormalize--38ad2e5ba5f13a2aa7a6e27d.md) | 81 | `result-track:38ad2e5ba5f13a2aa7a6e27d7c55b60e0c676c3814244a19edaf1c629f58873e` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/framerowspace-pivotnormalize--b5731db5ddef3b8d06b6a600.md) | 87 | `result-track:b5731db5ddef3b8d06b6a600a9645d29aa2d13cb875b9cb5966000295363939a` |
| 10 | `theorem` | [det_pivotInverse](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/det-pivotinverse--0374f6e52af7ca4aca4ed339.md) | 97 | `result-track:0374f6e52af7ca4aca4ed339faed1811147a2d0a5045ea8cc4ca5c16ec0e837a` |
| 11 | `theorem` | [columnMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/columnminor-pivotnormalize--3dedf25646bd2160cc992777.md) | 108 | `result-track:3dedf25646bd2160cc99277776607a7c78efda5133fc313bd6c34161fb0fa066` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/columnminor-pivotnormalize-ne-zero--e7994923ae8be2e0ead35d46.md) | 115 | `result-track:e7994923ae8be2e0ead35d462e391df35d055b541de86380711ca259372a5848` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/orderedminor-pivotnormalize--a630cfca6b923ca1a3a05e02.md) | 122 | `result-track:a630cfca6b923ca1a3a05e0236dd463d65efcab54da052477d2a608d5482af28` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/allorderedminorsnonneg-pivotnormalize-iff--dccdc622473b1ff0e5a52a50.md) | 128 | `result-track:dccdc622473b1ff0e5a52a50d94786d4624d8e6f181dd1c0f50cb995cdab7ea9` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/allorderedminorspos-pivotnormalize-iff--f6f64af662d0a99ca4702cfb.md) | 137 | `result-track:f6f64af662d0a99ca4702cfbe4efc001d85075d30726570104316509a5659b5f` |
| 16 | `theorem` | [vecMul_columnSubmatrix](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/vecmul-columnsubmatrix--7129c767d6453ce229b1c1d6.md) | 146 | `result-track:7129c767d6453ce229b1c1d6da0c80b7b77fb3e75dd4c1feb9d7998cdb9d61d8` |
| 17 | `theorem` | [normalized_coefficients_readback](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/normalized-coefficients-readback--c0c813a8cc0a9112f8060c84.md) | 151 | `result-track:c0c813a8cc0a9112f8060c8451f788f4d510f2e98372575df58a1b98600f9db1` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/normalized-eq-of-framerowspace-eq--6e62e1041b1df389b8a3667c.md) | 157 | `result-track:6e62e1041b1df389b8a3667cd35d9475d1671e80faef59d0a12c16d08f563178` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize-eq-iff-rowspace--d65efbb53e81c5899e5a4675.md) | 178 | `result-track:d65efbb53e81c5899e5a467565484849e9f5eec1b976a7abd011525af468ce2f` |
| 20 | `theorem` | [existsUnique_pivotNormalized](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/existsunique-pivotnormalized--01475e262d4622fe8aba1e8f.md) | 192 | `result-track:01475e262d4622fe8aba1e8fea9ac6a32c8f835ccd7a34bf7ce28e5a84557004` |
| 21 | `theorem` | [pivotNormalize_fixed](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize-fixed--955075e60253bc8a08110240.md) | 204 | `result-track:955075e60253bc8a0811024004789b3fcbf22c89f9d6339bf15989d1fc3e9a09` |
| 22 | `theorem` | [pivotNormalize_transition](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize-transition--857c5e838ecf0f9e1b062e76.md) | 209 | `result-track:857c5e838ecf0f9e1b062e76e604b58a2d79f71e256135808e00758e07e3a242` |
| 23 | `theorem` | [pivotNormalize_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/pivotnormalize-cocycle--2f183e2fafad1255e1614d14.md) | 217 | `result-track:2f183e2fafad1255e1614d14b1b9f5a5ae0a3b94fde746fbc8a2dbdec6b1f6ba` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/rank-eq-of-columnminor-ne-zero--c6738fac7b4e5c5a1aa369e4.md) | 224 | `result-track:c6738fac7b4e5c5a1aa369e46f747a6144cf817f695c4e9d0bc40380a8c7a129` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variante7652af53457978c4fe48a813e3631010eaf9a046e25a3c9ec36413d7a361d11.lean/declarations/finrank-framerowspace-of-columnminor-ne-zero--2a3e01d9a736959e688549cc.md) | 234 | `result-track:2a3e01d9a736959e688549cc2c07580ea1627909443f0794e8ab9504961544e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
