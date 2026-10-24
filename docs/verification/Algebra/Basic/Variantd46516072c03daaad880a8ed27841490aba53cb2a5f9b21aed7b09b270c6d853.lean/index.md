# Verification target: GRWTSK.Algebra.Basic.Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20e3e6843bb4011eefa8c6bc52f22abc6a469e4c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20e3e6843bb4011eefa8c6bc52f22abc6a469e4c`.

Source path: `GRWTSK/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjoin_prod_le](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-prod-le--9ffd8c5c172112cd292f9ba1.md) | 51 | `result-track:9ffd8c5c172112cd292f9ba107d46a25bb3ad244a08e1152818bb27125897e34` |
| 2 | `theorem` | [adjoin_inl_union_inr_eq_prod](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-inl-union-inr-eq-prod--4f9c0874f6e7f444bd0f15ed.md) | 55 | `result-track:4f9c0874f6e7f444bd0f15ed2c78292d5f03a340aa3986e70d29cf3c46c26d4d` |
| 3 | `theorem` | [adjoin_algebraMap](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-algebramap--83f08ae4b5696dc631e29493.md) | 76 | `result-track:83f08ae4b5696dc631e29493a529b26bbe7b563d133c600b71d22763165927b6` |
| 4 | `theorem` | [adjoin_algebraMap_image_union_eq_adjoin_adjoin](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-algebramap-image-union-eq-adjoin-adjoin--834ce84665384a8d1b422898.md) | 80 | `result-track:834ce84665384a8d1b4228988636a3cd600cb46a9e5cc29fb0ea16318afc5f25` |
| 5 | `theorem` | [adjoin_adjoin_of_tower](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-adjoin-of-tower--d373f0484bce86559a1b36b6.md) | 92 | `result-track:d373f0484bce86559a1b36b63f402a084cb8678267fbcd3fc2149a39f3215bb6` |
| 6 | `theorem` | [Subalgebra.restrictScalars_adjoin](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/subalgebra-restrictscalars-adjoin--16ae2988cd608a5e58597212.md) | 102 | `result-track:16ae2988cd608a5e58597212c8ceb13409efa3a0ca70da8f4cfd518daa067290` |
| 7 | `theorem` | [adjoin_top](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-top--826fbdf4b7c3cedd22452651.md) | 112 | `result-track:826fbdf4b7c3cedd2245265184b099bf9f8a176425399293c4d0e309452e960f` |
| 8 | `theorem` | [adjoin_union_eq_adjoin_adjoin](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-union-eq-adjoin-adjoin--616c0c43d9cf2d7da87305e6.md) | 133 | `result-track:616c0c43d9cf2d7da87305e616d1b083fee17b9b539eaeee0ae27f20d44be3b1` |
| 9 | `theorem` | [pow_smul_mem_of_smul_subset_of_mem_adjoin](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/pow-smul-mem-of-smul-subset-of-mem-adjoin--df90a90b3a5bc0f20e9a6b4a.md) | 139 | `result-track:df90a90b3a5bc0f20e9a6b4a992e2c9c9e58dc7a7b5be17e3a8c694fb8cc70b3` |
| 10 | `theorem` | [pow_smul_mem_adjoin_smul](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/pow-smul-mem-adjoin-smul--1d433ca1e4718624d89969e8.md) | 162 | `result-track:1d433ca1e4718624d89969e8069d87eb3914334afad602d01cf3ee85bf29abed` |
| 11 | `lemma` | [adjoin_nonUnitalSubalgebra_eq_span](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/adjoin-nonunitalsubalgebra-eq-span--ec539713f38bf6bdda08b317.md) | 166 | `result-track:ec539713f38bf6bdda08b3170a5a32c1ccf3368d08a40d7493b35f19768ae13f` |
| 12 | `theorem` | [Subalgebra.adjoin_eq_span_basis](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/subalgebra-adjoin-eq-span-basis--ad94d479b4945683e3a90123.md) | 185 | `result-track:ad94d479b4945683e3a90123452d29affcebff79e6dff3c582770465dd87d30f` |
| 13 | `theorem` | [Algebra.restrictScalars_adjoin](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/algebra-restrictscalars-adjoin--9ffedf4c08b333efffed39de.md) | 191 | `result-track:9ffedf4c08b333efffed39deb11afa862894daee964a769833603a15b9c1956d` |
| 14 | `theorem` | [Algebra.restrictScalars_adjoin_of_algEquiv](../../../../mathematics/Algebra/Basic/Variantd46516072c03daaad880a8ed27841490aba53cb2a5f9b21aed7b09b270c6d853.lean/declarations/algebra-restrictscalars-adjoin-of-algequiv--28cdf6f81e2a2812f8207975.md) | 199 | `result-track:28cdf6f81e2a2812f820797501cbb0ebc652c72528a68ebb5c9f294db946633d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
