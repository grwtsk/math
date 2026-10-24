# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3a8285a6c23e1efe44e9c6a559ac41294664d1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3a8285a6c23e1efe44e9c6a559ac41294664d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean.json)

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
| 1 | `def` | [frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/framerowspace--ed6f50fbdef6aeb825613e09.md) | 33 | `declaration-track:ed6f50fbdef6aeb825613e0906ae0cadd9084a22429f162515a7eb0c8f59c989` |
| 2 | `theorem` | [mem_frameRowSpace_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/mem-framerowspace-iff--2791566e5980b4c64bb9ced5.md) | 37 | `result-track:2791566e5980b4c64bb9ced5f55e399d6326c294eed224d30b30cda2177fc498` |
| 3 | `theorem` | [row_mem_frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/row-mem-framerowspace--94be81dee00a78c69c37e6e1.md) | 43 | `result-track:94be81dee00a78c69c37e6e1f91fa7c37eb63e26c2e3d8c60cadce2626bbd55c` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/framerowspace-mul-left-le--b859b1a687f6072128b37df5.md) | 48 | `result-track:b859b1a687f6072128b37df584ff9a319c60764b8b6661dfdac29566bab75b36` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/framerowspace-mul-left-eq--26436496feb445ece8416b0d.md) | 58 | `result-track:26436496feb445ece8416b0da1feb45e538041c419543330f5b61e5d75aa6eb5` |
| 6 | `def` | [pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize--7f21c2be78e65bb5f5c2cc5e.md) | 69 | `declaration-track:7f21c2be78e65bb5f5c2cc5eb0d59739f5b55662172e86bced50db02149e5543` |
| 7 | `theorem` | [pivotNormalize_pivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize-pivot--19c6a4321fcdbbc4f8db1377.md) | 74 | `result-track:19c6a4321fcdbbc4f8db13770e10cbec67196e01caea061aa42f58f5057a510b` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivot-mul-pivotnormalize--65b2b107c161af03bf45d9a3.md) | 81 | `result-track:65b2b107c161af03bf45d9a3ed8820466dcb3309361ebf82c0818b21e823a17e` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/framerowspace-pivotnormalize--6ef00270c4a6e24359465098.md) | 87 | `result-track:6ef00270c4a6e243594650984a01d3b3a009fd9dc921a170119f0fd005b4e48c` |
| 10 | `theorem` | [det_pivotInverse](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/det-pivotinverse--8b18b9a9673781d214cb92d7.md) | 97 | `result-track:8b18b9a9673781d214cb92d755686fc6c24265c1f87459ed34679855b29614b3` |
| 11 | `theorem` | [columnMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/columnminor-pivotnormalize--e3e738bdf499fb87f7cc45af.md) | 108 | `result-track:e3e738bdf499fb87f7cc45af0fcedcbd70b18eb1b10df71ceaa22e8ec8a2b468` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/columnminor-pivotnormalize-ne-zero--9ddad3510dfdb9e49436764f.md) | 115 | `result-track:9ddad3510dfdb9e49436764f6950a0636b29cbdbf9d5cc56f1ed7de03312c521` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/orderedminor-pivotnormalize--2a6b3f89d0f3777a6e2a3849.md) | 122 | `result-track:2a6b3f89d0f3777a6e2a38496b41a5591bef8fc76815552425d035686533cf62` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/allorderedminorsnonneg-pivotnormalize-iff--b225bd8429f4b51f9d24d996.md) | 128 | `result-track:b225bd8429f4b51f9d24d99690179964d75f0d99e156f0468cbcac6d325073f9` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/allorderedminorspos-pivotnormalize-iff--075f8470288d9cb070c42f77.md) | 137 | `result-track:075f8470288d9cb070c42f77672b32d98378079393e80df4a29a7a9dda389e1a` |
| 16 | `theorem` | [vecMul_columnSubmatrix](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/vecmul-columnsubmatrix--0278847775ff8fe72c99307b.md) | 146 | `result-track:0278847775ff8fe72c99307bbc64a0519d6e25bcd13b3d508d2a893ed9f1e245` |
| 17 | `theorem` | [normalized_coefficients_readback](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/normalized-coefficients-readback--ab690317238305aa2807c6e4.md) | 151 | `result-track:ab690317238305aa2807c6e4112c9200a6d5b4eff3cefed7d5d2c7ebfb74182b` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/normalized-eq-of-framerowspace-eq--b831532c47b5c6bbec0e3078.md) | 157 | `result-track:b831532c47b5c6bbec0e307801155c83532d69e117f403a16023d403c950baf5` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize-eq-iff-rowspace--00d0f216310dbf8639e99056.md) | 178 | `result-track:00d0f216310dbf8639e9905672064eaabbc71a42f09de7a77332f1aaf478317e` |
| 20 | `theorem` | [existsUnique_pivotNormalized](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/existsunique-pivotnormalized--75207bb4c7f47dd5c3dfdb9d.md) | 192 | `result-track:75207bb4c7f47dd5c3dfdb9d00e7b6a585df83dac2a7ff5cee127a71a05da56e` |
| 21 | `theorem` | [pivotNormalize_fixed](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize-fixed--4f19abf19eabb2cb31775299.md) | 204 | `result-track:4f19abf19eabb2cb317752996d385b463d29a36640f09327eff918671400de92` |
| 22 | `theorem` | [pivotNormalize_transition](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize-transition--521077af618d90d9d5d0faf0.md) | 209 | `result-track:521077af618d90d9d5d0faf0f2f2a2bed15d5a1f0ed498a01bd06431720b38b7` |
| 23 | `theorem` | [pivotNormalize_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/pivotnormalize-cocycle--fc372781ca74088797654848.md) | 217 | `result-track:fc372781ca74088797654848421add6bc342ae2913fdc6b3460906da40c29a73` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/rank-eq-of-columnminor-ne-zero--b4257fe57ac546fcaf96caa7.md) | 224 | `result-track:b4257fe57ac546fcaf96caa7747f195c6b53e24c7711b9ee089ae80ece61204b` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant17e2b723071f049891fe4e4bf4576034b41f34c3b52afb614c4488d70da9b10c.lean/declarations/finrank-framerowspace-of-columnminor-ne-zero--cd27aea647d7f922e7729217.md) | 234 | `result-track:cd27aea647d7f922e7729217cbea5c82f148eced38f653c4e46f51bcfda8a10b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
