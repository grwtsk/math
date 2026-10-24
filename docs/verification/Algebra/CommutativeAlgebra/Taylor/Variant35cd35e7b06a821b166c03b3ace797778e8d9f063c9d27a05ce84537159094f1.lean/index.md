# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Taylor.Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9abf95db5c2876cff05b5c5048f8bcd303789c5d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9abf95db5c2876cff05b5c5048f8bcd303789c5d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.HasseDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor--e8af2c11831197326c462a72.md) | 43 | `declaration-track:e8af2c11831197326c462a725858e9e7e0e558fc7ea60e6eec4e1273487c0eb9` |
| 2 | `theorem` | [taylor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-apply--9b63c94ffa90b98bba342f9e.md) | 49 | `result-track:9b63c94ffa90b98bba342f9e424b41258d7035f03070e8144637a66209d8ad26` |
| 3 | `theorem` | [taylor_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-x--50ea704018f4a7fe69769a98.md) | 54 | `result-track:50ea704018f4a7fe69769a98ec32cd2ed132eaabc426e670cb65b25d37b3ee3d` |
| 4 | `theorem` | [taylor_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-c--e220685403146b3105f50cc9.md) | 59 | `result-track:e220685403146b3105f50cc94b929d548b5ced4acf0b6fd9de3cc81221ba6a03` |
| 5 | `theorem` | [taylor_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-zero--a8e5a022bc2f791d882094b7.md) | 64 | `result-track:a8e5a022bc2f791d882094b767b2b7a421086cb6a508f3aa1913bce118dff701` |
| 6 | `theorem` | [taylor_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-zero--e07a220538c7ef0307663caf.md) | 70 | `result-track:e07a220538c7ef0307663caf420c27baa91426bc163b61eae8a77c610922b0d4` |
| 7 | `theorem` | [taylor_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-one--0a679b4625bd246809689a53.md) | 74 | `result-track:0a679b4625bd246809689a53f87d0c25c8e5346acdfcacb11340b9e43b8d5c5b` |
| 8 | `theorem` | [taylor_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-monomial--bdf6d7a0e29fe21efa235bb2.md) | 78 | `result-track:bdf6d7a0e29fe21efa235bb2a8105bed76521a1d366394e188db69f026e10afe` |
| 9 | `theorem` | [taylor_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-coeff--53eda956b3b32337b3856b65.md) | 83 | `result-track:53eda956b3b32337b3856b6551e303756475d33e60ee1b747aeacefa9f0dc439` |
| 10 | `theorem` | [taylor_coeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-coeff-zero--bd0665bfea596484b54dacb1.md) | 96 | `result-track:bd0665bfea596484b54dacb10ba145098f210214cda73b8220e6534672298421` |
| 11 | `theorem` | [taylor_coeff_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-coeff-one--80675e1aa8e026a8c9db50dd.md) | 101 | `result-track:80675e1aa8e026a8c9db50dd8f209ea53949a344fa8af937ad2a32384d734a3a` |
| 12 | `theorem` | [natDegree_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/natdegree-taylor--a42750efca5923aa13774d4b.md) | 106 | `result-track:a42750efca5923aa13774d4b9f0d1186f26cfca31bed0061cf374d92e866b07b` |
| 13 | `theorem` | [taylor_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-mul--81d861ff51b2cbeeb8a0debf.md) | 114 | `result-track:81d861ff51b2cbeeb8a0debf8c003ecef5f78c37154884ff7bdba4c081e0c7e8` |
| 14 | `def` | [taylorAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/tayloralghom--288066f462b5f2d7424466a4.md) | 120 | `declaration-track:288066f462b5f2d7424466a40a77475cd468fb590b761f3d280160eae9213cf9` |
| 15 | `theorem` | [taylor_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-taylor--060921e89ab1fff379d4af38.md) | 124 | `result-track:060921e89ab1fff379d4af38dec0aa2f496ebef371f1fb461d155af1cb1e8a92` |
| 16 | `theorem` | [taylor_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-eval--7740784d5a2f829869e83e69.md) | 129 | `result-track:7740784d5a2f829869e83e69c8c1fb3abcadcd140b113d0549e7360ee76bc6b5` |
| 17 | `theorem` | [taylor_eval_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-eval-sub--8f2eac15a1045ada0a9450b5.md) | 134 | `result-track:8f2eac15a1045ada0a9450b536b36ceca5725496c8bf84bbbff8f64ba9d59351` |
| 18 | `theorem` | [taylor_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/taylor-injective--bd1705aa1b201e8cedb64580.md) | 138 | `result-track:bd1705aa1b201e8cedb645802cf0f403028af688b76b30f56da748746c2a01bf` |
| 19 | `theorem` | [eq_zero_of_hasseDeriv_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/eq-zero-of-hassederiv-eq-zero--d90a4ca5db41cbb8c0fd631b.md) | 145 | `result-track:d90a4ca5db41cbb8c0fd631b52f334cd32e3be7e11e6f96244e18b27dfa45526` |
| 20 | `theorem` | [sum_taylor_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Taylor/Variant35cd35e7b06a821b166c03b3ace797778e8d9f063c9d27a05ce84537159094f1.lean/declarations/sum-taylor-eq--3bc1052c75d62a6d2f7abde9.md) | 154 | `result-track:3bc1052c75d62a6d2f7abde91f35b026b4252553a67ed24c767594572c1b899a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
