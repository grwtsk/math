# Verification target: GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b1bc9b94d15beb3cb56d35a83947f51ab06065b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b1bc9b94d15beb3cb56d35a83947f51ab06065b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean.json)

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
| 1 | `def` | [frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/framerowspace--af99e0644e1bbf1d24a0a482.md) | 25 | `declaration-track:af99e0644e1bbf1d24a0a4829742cffa51f251e9442ba60e8656b0c62440940a` |
| 2 | `theorem` | [mem_frameRowSpace_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/mem-framerowspace-iff--e7c55db29202a2d15083f728.md) | 29 | `result-track:e7c55db29202a2d15083f728613f318a3663432baecc93511e4815514640435e` |
| 3 | `theorem` | [row_mem_frameRowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/row-mem-framerowspace--10025668b93881f1140a9b74.md) | 35 | `result-track:10025668b93881f1140a9b74d572b22d006e59fb7ddf63bdca8481070ebb6f83` |
| 4 | `theorem` | [frameRowSpace_mul_left_le](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/framerowspace-mul-left-le--1c9faa0782abbd7ee14abdcf.md) | 40 | `result-track:1c9faa0782abbd7ee14abdcf98bae598d36d0b5b7b4d34e96fed1a6b1c395d05` |
| 5 | `theorem` | [frameRowSpace_mul_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/framerowspace-mul-left-eq--e7eb69f7597068f4ed3d8750.md) | 50 | `result-track:e7eb69f7597068f4ed3d8750fac2331851d6d60f2d4e4f0fae9d034315599260` |
| 6 | `def` | [pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize--d2d2b94c0bbe70b464bff110.md) | 61 | `declaration-track:d2d2b94c0bbe70b464bff11092c8077c77b34f2ee8700d52508a968efbb7f1d4` |
| 7 | `theorem` | [pivotNormalize_pivot](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize-pivot--0888a69e06b4945ed171a6af.md) | 66 | `result-track:0888a69e06b4945ed171a6af35a8ab7873ef932beb1108ac7b550a90d1d2d422` |
| 8 | `theorem` | [pivot_mul_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivot-mul-pivotnormalize--4c1ca1e59d17a5a6e9a9fee8.md) | 73 | `result-track:4c1ca1e59d17a5a6e9a9fee871cb1977abf56251e0680c2faaf938a7d5c9f63f` |
| 9 | `theorem` | [frameRowSpace_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/framerowspace-pivotnormalize--7b434736d6db0dd7235de814.md) | 79 | `result-track:7b434736d6db0dd7235de814e6e82e9b087dfa1e42446383da8174e5cd2840f2` |
| 10 | `theorem` | [det_pivotInverse](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/det-pivotinverse--34c8e2a26099035b731f1ee5.md) | 89 | `result-track:34c8e2a26099035b731f1ee521caae95138f01cbcdd378823b2d2ca0997d73f6` |
| 11 | `theorem` | [columnMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/columnminor-pivotnormalize--c5fdeaadd6f1ba130444e806.md) | 100 | `result-track:c5fdeaadd6f1ba130444e8060fb3b728670db71425fbc521d3ba49cb03430c5f` |
| 12 | `theorem` | [columnMinor_pivotNormalize_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/columnminor-pivotnormalize-ne-zero--0ea4a7cd7940afda0aa6edfb.md) | 107 | `result-track:0ea4a7cd7940afda0aa6edfbf8c8cfe499d743d0de45b8e620a18e3faba9631a` |
| 13 | `theorem` | [orderedMinor_pivotNormalize](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/orderedminor-pivotnormalize--4741ae1573243ad6faee2d18.md) | 114 | `result-track:4741ae1573243ad6faee2d182c9f55dd37080d4ce61d4a9119aa2dfe034e7871` |
| 14 | `theorem` | [allOrderedMinorsNonneg_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/allorderedminorsnonneg-pivotnormalize-iff--c951131375f7d56c7e25af05.md) | 120 | `result-track:c951131375f7d56c7e25af056d1ec1fdb07ffecc5cbc37c92e42836ac7d6442e` |
| 15 | `theorem` | [allOrderedMinorsPos_pivotNormalize_iff](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/allorderedminorspos-pivotnormalize-iff--162e00bd9651d915383604bf.md) | 129 | `result-track:162e00bd9651d915383604bf67370a76488e0deadab607004f4bb47f4ed2fb6a` |
| 16 | `theorem` | [vecMul_columnSubmatrix](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/vecmul-columnsubmatrix--3c901466b48959599f7942ef.md) | 138 | `result-track:3c901466b48959599f7942ef800162b98ca0c07f0d4e2e9f2a7198192839dd19` |
| 17 | `theorem` | [normalized_coefficients_readback](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/normalized-coefficients-readback--fe76c0d1866cf14d00d0bc08.md) | 143 | `result-track:fe76c0d1866cf14d00d0bc08a374ee99aa5120bd88011f73c53c1537fed6fda2` |
| 18 | `theorem` | [normalized_eq_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/normalized-eq-of-framerowspace-eq--c72498db04a0776ec034196d.md) | 149 | `result-track:c72498db04a0776ec034196d34daaa7661edb1a707e5f265005ee1909124a41e` |
| 19 | `theorem` | [pivotNormalize_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize-eq-iff-rowspace--317eb5b37c9d6c79ecf258e8.md) | 170 | `result-track:317eb5b37c9d6c79ecf258e8087454c3a6d5f5568027838d6b2c4fa07d810aa0` |
| 20 | `theorem` | [existsUnique_pivotNormalized](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/existsunique-pivotnormalized--0567ed6f8d0290e60ccaa5bf.md) | 184 | `result-track:0567ed6f8d0290e60ccaa5bf0c88c519fcad13f184abcce416a1eeaf4e7917af` |
| 21 | `theorem` | [pivotNormalize_fixed](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize-fixed--d226b770e39b158b7165bef9.md) | 196 | `result-track:d226b770e39b158b7165bef967ab5304cbde4ec63d43f283e1cbe7ba7622f571` |
| 22 | `theorem` | [pivotNormalize_transition](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize-transition--0644c919e24c8141808eea01.md) | 201 | `result-track:0644c919e24c8141808eea01ca56d3770bf9ba10c878577cbff77e05c02d20c0` |
| 23 | `theorem` | [pivotNormalize_cocycle](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/pivotnormalize-cocycle--671d4a9b6cdf18d3bc4faf58.md) | 209 | `result-track:671d4a9b6cdf18d3bc4faf5806b81ddc1052a07bd83889023bab4f06b5caa328` |
| 24 | `theorem` | [rank_eq_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/rank-eq-of-columnminor-ne-zero--f00415ea23401107947493e4.md) | 216 | `result-track:f00415ea23401107947493e40378bbdfe2d9ca250920d242de5a330b4e61d3d0` |
| 25 | `theorem` | [finrank_frameRowSpace_of_columnMinor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PivotNormalization/Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e.lean/declarations/finrank-framerowspace-of-columnminor-ne-zero--c85550dee7fa1f7c0ff9afbe.md) | 226 | `result-track:c85550dee7fa1f7c0ff9afbe81594c89c43f2f1104dc43bf7819292fcf231c5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
