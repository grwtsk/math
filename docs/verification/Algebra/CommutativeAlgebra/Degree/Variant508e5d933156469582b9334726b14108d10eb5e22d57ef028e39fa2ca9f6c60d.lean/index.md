# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Degree.Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41b3b9fb11ed8ff51b542dae67b07963fdd91017",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41b3b9fb11ed8ff51b542dae67b07963fdd91017`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EuclideanDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree--17128404f46e500cbdff65a7.md) | 39 | `declaration-track:17128404f46e500cbdff65a72d1d246d5ad3af1ca3b07dcad5d4ee5b81d2ed22` |
| 2 | `theorem` | [intDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-zero--1f331e35143e9e1e5f45f297.md) | 43 | `result-track:1f331e35143e9e1e5f45f297de06515ccccd7706ec9da3211cdbd525c3578fd2` |
| 3 | `theorem` | [intDegree_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-one--c7325b3e43a7aac643fffbcd.md) | 47 | `result-track:c7325b3e43a7aac643fffbcddec86eb2268a5b455ae151706c74de93a7cc2b97` |
| 4 | `theorem` | [intDegree_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-c--74e1dc97d9fadb19bf5f8299.md) | 51 | `result-track:74e1dc97d9fadb19bf5f829923ec94dbdb43636d4a2872b37830a12bb8d2c220` |
| 5 | `theorem` | [intDegree_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-x--bdc4b276c6617b383d657359.md) | 55 | `result-track:bdc4b276c6617b383d6573592c396a98d009ee14d15ce3eee7cb3c41de3eb93f` |
| 6 | `theorem` | [intDegree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-polynomial--5574ec1f4c308cb6285f9399.md) | 60 | `result-track:5574ec1f4c308cb6285f9399973b92b4327503c2118cebf35239713691ea19bb` |
| 7 | `theorem` | [intDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-mul--68ecfb2de99886865f5a69ff.md) | 65 | `result-track:68ecfb2de99886865f5a69ff34cbef1fc173d8d0a8830a8ee943b118e8e5a919` |
| 8 | `theorem` | [intDegree_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-neg--63a93e0d93165301cdda1214.md) | 78 | `result-track:63a93e0d93165301cdda1214d056309e50ef2e8f15e5a473e1d86867d467e43c` |
| 9 | `theorem` | [intDegree_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-add--7bf46545ec91d17110453ed2.md) | 86 | `result-track:7bf46545ec91d17110453ed2d6d3323ac295f92c8a2e49cb3ab5d8f2c9713162` |
| 10 | `theorem` | [natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/natdegree-num-mul-right-sub-natdegree-denom-mul-left-eq-intdegree--b5f577ac9aa72848375b9457.md) | 93 | `result-track:b5f577ac9aa72848375b94570d43e34fd35a6cb88052fe2d3a152e746b21e663` |
| 11 | `theorem` | [intDegree_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/declarations/intdegree-add-le--1c9bb56654584c12629318db.md) | 100 | `result-track:1c9bb56654584c12629318db0bb83ba65b73c9fb944669d26d60a029df3b12f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
