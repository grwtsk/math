# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Transcendental.Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d31c73c039751c28228898e55dd432fc57789db",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d31c73c039751c28228898e55dd432fc57789db`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Reflection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.MvPolynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [algebraicIndependent_unique_type_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-unique-type-iff--2a7ff57a9cbacc158eaeb70a.md) | 45 | `result-track:2a7ff57a9cbacc158eaeb70a9094a07c8b5a0f20ea7bf32237f3706b32f47856` |
| 2 | `theorem` | [algebraicIndependent_singleton_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-singleton-iff--7092aa2aeeeb3035e208418d.md) | 54 | `result-track:7092aa2aeeeb3035e208418d0f94626103272429cbe74ffa21cee890678a20ee` |
| 3 | `theorem` | [algebraicIndependent_iff_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-iff-transcendental--65711aac6c90edc14fa40807.md) | 61 | `result-track:65711aac6c90edc14fa4080767ecc0a0b5bdca7e9b1ee0775e4fcf0d4eabd9d0` |
| 4 | `theorem` | [transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/transcendental--9c473ed0a20c5b297ceff140.md) | 71 | `result-track:9c473ed0a20c5b297ceff14071d497db7f0f1f74fccec579ad7c5ba60dcd20f5` |
| 5 | `theorem` | [isEmpty_of_isAlgebraic](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/isempty-of-isalgebraic--777f49558c7c0f2a08fac6aa.md) | 77 | `result-track:777f49558c7c0f2a08fac6aacba42d35ab00477d2f6ce1e6c90492bc591b55d5` |
| 6 | `theorem` | [trdeg_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/trdeg-eq-zero--5ef9dcc559ae70aa5a1c8a27.md) | 84 | `result-track:5ef9dcc559ae70aa5a1c8a27831ff28e341804e3e9d8e3c3eca8fe8562cae38b` |
| 7 | `theorem` | [trdeg_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/trdeg-pos--1dd6bb01d2c8ad69d5f7b9aa.md) | 88 | `result-track:1dd6bb01d2c8ad69d5f7b9aa4687fdb2ecafedf556e817aee25c932329c26b8a` |
| 8 | `theorem` | [trdeg_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/trdeg-eq-zero-iff--e9db08446263d57913a617a1.md) | 93 | `result-track:e9db08446263d57913a617a11faff66d7dbaa6ea1e39f6c393dd99da666c1245` |
| 9 | `theorem` | [trdeg_ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/trdeg-ne-zero-iff--3687820cc1e85ff74c83eaf7.md) | 100 | `result-track:3687820cc1e85ff74c83eaf7759bcd89a7bf3369249efd3ecd8cfa00203df7d4` |
| 10 | `theorem` | [AlgebraicIndependent.option_iff_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-option-iff-transcendental--31e1c71138ed9ea68668b006.md) | 105 | `result-track:31e1c71138ed9ea68668b00687fcf6f4b75cf937644c72f244f6c014af33e8f7` |
| 11 | `theorem` | [AlgebraicIndependent.option_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-option-iff--39b8c22509114615de7bacbb.md) | 114 | `result-track:39b8c22509114615de7bacbb751d5c3ebc7b0db908f08f09fd7b49b35977f19e` |
| 12 | `theorem` | [AlgebraicIndepOn.insert_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindepon-insert-iff--c0b9a4042800b852ff6a6be6.md) | 120 | `result-track:c0b9a4042800b852ff6a6be6b6c966cd219766f06f2762429bd19402750059ca` |
| 13 | `theorem` | [AlgebraicIndepOn.insert](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindepon-insert--9fb45962831ba20c05cf33a5.md) | 129 | `result-track:9fb45962831ba20c05cf33a5890b78e9182c61fb40d3b3cd25705412e1979cfd` |
| 14 | `theorem` | [algebraicIndependent_of_set_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-of-set-of-finite--aa324e9f7a66ca942c35025e.md) | 136 | `result-track:aa324e9f7a66ca942c35025ed0c212be9bd5319e8c05156b65623ba079d320cf` |
| 15 | `theorem` | [algebraicIndependent_of_finite_type'](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-of-finite-type--79d908875e519066112e34e9.md) | 155 | `result-track:79d908875e519066112e34e9f3b6ab81e1f61d42f11d797aa87190afb512a9c2` |
| 16 | `theorem` | [algebraicIndependent_of_finite'](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-of-finite--c18bbef8ac481546bc9d1403.md) | 164 | `result-track:c18bbef8ac481546bc9d1403caff5807e15f4932b38057d6d73dab4b573c4d93` |
| 17 | `theorem` | [sumElim_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/sumelim-iff--78e5cd46c565c9579819dc1d.md) | 175 | `result-track:78e5cd46c565c9579819dc1d00bd9f8393cdcce9aad652628333254ea0a74cf1` |
| 18 | `theorem` | [iff_adjoin_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/iff-adjoin-image--3c2bd0e707a8dd2192a1649a.md) | 184 | `result-track:3c2bd0e707a8dd2192a1649a1db305a867235b47dbfa10b065d43ca4c76eadc9` |
| 19 | `theorem` | [iff_adjoin_image_compl](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/iff-adjoin-image-compl--04ab943ff3ad451c3af6d5bf.md) | 192 | `result-track:04ab943ff3ad451c3af6d5bff665e2f2390bf67539d25fb81071ee8a475dc35c` |
| 20 | `theorem` | [iff_transcendental_adjoin_image](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/iff-transcendental-adjoin-image--ca1d9d6a6f13282220bc0df7.md) | 197 | `result-track:ca1d9d6a6f13282220bc0df740bb65061ec288e69cf9594c71349acfa4b6c7e4` |
| 21 | `theorem` | [sumElim](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/sumelim--e1650c6ac20d97b2dc6783f8.md) | 206 | `result-track:e1650c6ac20d97b2dc6783f830b7fa0048925c377d9b37592502b8256fe57dae` |
| 22 | `theorem` | [sumElim_of_tower](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/sumelim-of-tower--a0dd337dabad4d2828965315.md) | 210 | `result-track:a0dd337dabad4d282896531517fb78dd5ab92e08695a5063846bc9f62095d6f5` |
| 23 | `theorem` | [sumElim_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/sumelim-comp--e057d6311aff2277d7620f30.md) | 221 | `result-track:e057d6311aff2277d7620f30716ca23e8a5264e472f95e8fbea6a6ceb7f7b8dc` |
| 24 | `theorem` | [adjoin_of_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/adjoin-of-disjoint--8bea19b7715ade3712a59e1f.md) | 226 | `result-track:8bea19b7715ade3712a59e1f0f7b79b6c1e1afdae916bf478357163da5260a65` |
| 25 | `theorem` | [adjoin_iff_disjoint](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/adjoin-iff-disjoint--74e3666e85e9e0a81394f5d2.md) | 230 | `result-track:74e3666e85e9e0a81394f5d289051046d3750c29dbfa7c9006636b42f3e5e3b5` |
| 26 | `theorem` | [transcendental_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/transcendental-adjoin--55a59a477d729fc7c337f964.md) | 237 | `result-track:55a59a477d729fc7c337f9640590c77db63f7f1dc087dcf28450a86b4df0709d` |
| 27 | `theorem` | [transcendental_adjoin_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/transcendental-adjoin-iff--d5b2c9b832668516aa7fb4c8.md) | 242 | `result-track:d5b2c9b832668516aa7fb4c8433c371b5d00b67ecbacbebed0de81c33a911c68` |
| 28 | `theorem` | [lift_trdeg_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/lift-trdeg-add-le--4525f5b4ee740c8ef4071e5f.md) | 251 | `result-track:4525f5b4ee740c8ef4071e5f710e9fc3a3adeb4a0f64af12ebaa685d82435b01` |
| 29 | `theorem` | [trdeg_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/trdeg-add-le--2449ff4d6f3e40fc84a9ab85.md) | 261 | `result-track:2449ff4d6f3e40fc84a9ab8508f901d8864516f178e3c2a3488139a5126a96de` |
| 30 | `theorem` | [MvPolynomial.algebraicIndependent_polynomial_aeval_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/mvpolynomial-algebraicindependent-polynomial-aeval-x--b183d68b0b4257f1927f61ef.md) | 269 | `result-track:b183d68b0b4257f1927f61efd983015363a2fb0cf93abea623e26158d36b8150` |
| 31 | `theorem` | [AlgebraicIndependent.polynomial_aeval_of_transcendental](../../../../../mathematics/Algebra/CommutativeAlgebra/Transcendental/Variantc546524602a3878999dab2dce061287072858da2d4a19c4401908d6b3199fcc2.lean/declarations/algebraicindependent-polynomial-aeval-of-transcendental--b2b2d45ae918d59341476181.md) | 285 | `result-track:b2b2d45ae918d59341476181bba2b3b679ab91d9a576cb9806580b76b6dfac8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
