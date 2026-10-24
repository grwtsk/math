# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Degree.Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37a4a94306cf2ba71d8c16c4ca35c738fe4cec0a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37a4a94306cf2ba71d8c16c4ca35c738fe4cec0a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Coeff` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval₂_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-eq-sum-range--a916d166bf85930f99da7345.md) | 40 | `result-track:a916d166bf85930f99da734542a6f0f43ac15888a996f78a04aaf80591d050bd` |
| 2 | `theorem` | [eval₂_eq_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-eq-sum-range--e8ab970ee4646020c87fd17b.md) | 45 | `result-track:e8ab970ee4646020c87fd17b2c8c53f4e0622fce657ed1cdd2bd9ef3721c1b7b` |
| 3 | `theorem` | [eval_eq_sum_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-eq-sum-range--14465a1bba8cd77ad6a8a93e.md) | 59 | `result-track:14465a1bba8cd77ad6a8a93e4f8e3906e6ccc4c2af745db012993838a0e59533` |
| 4 | `theorem` | [eval_eq_sum_range'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-eq-sum-range--68fd135301850658233f2a28.md) | 63 | `result-track:68fd135301850658233f2a289d4abbb4e34b39816f5da4973e1b4eb3be8a84bc` |
| 5 | `theorem` | [eval_monomial_one_add_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-monomial-one-add-sub--d3ae07100cdcb6006d58b9e9.md) | 70 | `result-track:d3ae07100cdcb6006d58b9e9ea78d6f89cdf1774344eb92b5cd89f03e6562198` |
| 6 | `theorem` | [coeff_comp_degree_mul_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/coeff-comp-degree-mul-degree--0fa9d5d517f807f30d4f5ff4.md) | 86 | `result-track:0fa9d5d517f807f30d4f5ff409a669e8e9ffe761f696b4fe642673edba1afd17` |
| 7 | `lemma` | [comp_C_mul_X_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/comp-c-mul-x-coeff--de97c02467bdc2df9edeed3a.md) | 102 | `result-track:de97c02467bdc2df9edeed3a009680bec7c440c04280fef127205eaaaba77500` |
| 8 | `lemma` | [comp_C_mul_X_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/comp-c-mul-x-eq-zero-iff--b2b9613c2d2f14b2ec7d58e1.md) | 111 | `result-track:b2b9613c2d2f14b2ec7d58e18013d2a8e63d9f2941727307e0d9cdf3fbc7193f` |
| 9 | `def` | [mapEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/mapequiv--38b2f1b97b7700b1b397bb38.md) | 126 | `declaration-track:38b2f1b97b7700b1b397bb38d21bd989ad7ae36e396aef8941aa7f412356d2a2` |
| 10 | `theorem` | [map_monic_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/map-monic-eq-zero-iff--61c3477de36fc50a71038498.md) | 130 | `result-track:61c3477de36fc50a71038498083a88fe5360670ba172504c998033ee230de42e` |
| 11 | `theorem` | [map_monic_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/map-monic-ne-zero--0a2fc5b6e3b614edc7afc294.md) | 139 | `result-track:0a2fc5b6e3b614edc7afc29460b7f29441d1b6e8cfc3c4bf61e73cf7b064ea54` |
| 12 | `lemma` | [degree_map_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/degree-map-le--b529bd3ee431ab5b176afee7.md) | 142 | `result-track:b529bd3ee431ab5b176afee77ab2a7a0a200bd0361f274de489615a2fcb3ca1a` |
| 13 | `lemma` | [natDegree_map_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/natdegree-map-le--d57b8fe4d324c25121309acb.md) | 147 | `result-track:d57b8fe4d324c25121309acb330512f8eb452f582fe50535a64392159daae1e9` |
| 14 | `lemma` | [degree_map_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/degree-map-lt--74fed560b5c83a54befe5e7f.md) | 149 | `result-track:74fed560b5c83a54befe5e7f4d6306d2ab3cd2df8d1f9290469091c71a598b82` |
| 15 | `lemma` | [natDegree_map_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/natdegree-map-lt--f2fa6bf6e3c631da6058f327.md) | 155 | `result-track:f2fa6bf6e3c631da6058f327dbe1e966134749fb61257af0cbe9c797c0cc70fc` |
| 16 | `lemma` | [natDegree_map_lt'](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/natdegree-map-lt--6fa4e42781596175ee0661ae.md) | 160 | `result-track:6fa4e42781596175ee0661ae541aee0d6cc527f0fffb16cc1e836d4439cb992e` |
| 17 | `theorem` | [degree_map_eq_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/degree-map-eq-of-leadingcoeff-ne-zero--a5ed23a2178f1aa677c24f9a.md) | 166 | `result-track:a5ed23a2178f1aa677c24f9ab961da6cf2e9ff20ece6f2ddf15670960fd61d18` |
| 18 | `theorem` | [natDegree_map_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/natdegree-map-of-leadingcoeff-ne-zero--a981162da8b1e93115e282cd.md) | 176 | `result-track:a981162da8b1e93115e282cdab0765b26a7e53c4886208555868c4c98284c3ab` |
| 19 | `theorem` | [leadingCoeff_map_of_leadingCoeff_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/leadingcoeff-map-of-leadingcoeff-ne-zero--b957c317471814713baad82e.md) | 180 | `result-track:b957c317471814713baad82e42b341247db1e2ab721e3d88d3efa6b8e5ee66bc` |
| 20 | `theorem` | [eval₂_comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/eval-comp--42c1df1de51ce171a265b3dc.md) | 197 | `result-track:42c1df1de51ce171a265b3dc138b1a2383980bcdcccddc7b8832c53e5088eadd` |
| 21 | `theorem` | [iterate_comp_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/iterate-comp-eval--19778994629bcb6585f4bb7e.md) | 201 | `result-track:19778994629bcb6585f4bb7e7864c50a83b4a7f65dc231e2076333a9b431cbf4` |
| 22 | `theorem` | [iterate_comp_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/iterate-comp-eval--a5f826dcf0b227acd2271e27.md) | 214 | `result-track:a5f826dcf0b227acd2271e27f289ccd884207c96f60897d33832c1cb4690552c` |
| 23 | `lemma` | [isUnit_of_isUnit_leadingCoeff_of_isUnit_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variantfc14471ae15ea63370b020d16c2614b32d3051840dcb08e52997630a8bfb3875.lean/declarations/isunit-of-isunit-leadingcoeff-of-isunit-map--5145eb1f73361b43cd4100d6.md) | 227 | `result-track:5145eb1f73361b43cd4100d6b26c4e48682d4267c486323519f55ce37d198cb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
