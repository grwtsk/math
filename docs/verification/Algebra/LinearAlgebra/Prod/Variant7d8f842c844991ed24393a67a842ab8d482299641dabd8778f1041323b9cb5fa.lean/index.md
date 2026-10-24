# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd9d4dbc7052f5061108ee79fd93087978e19766",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd9d4dbc7052f5061108ee79fd93087978e19766`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Graded.Internal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_mul_map_of_isOrtho_of_mem_evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/map-mul-map-of-isortho-of-mem-evenodd--333ee362e8048bc2f15f13ba.md) | 58 | `result-track:333ee362e8048bc2f15f13ba2be160f5ba4b2a7f6da8592c98b95f48115de4b2` |
| 2 | `theorem` | [commute_map_mul_map_of_isOrtho_of_mem_evenOdd_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/commute-map-mul-map-of-isortho-of-mem-evenodd-zero-left--80cf2d86413775b5b9bde85d.md) | 100 | `result-track:80cf2d86413775b5b9bde85dc7e5fb6dde4b1d356e48fd00fad640518eb98d20` |
| 3 | `theorem` | [commute_map_mul_map_of_isOrtho_of_mem_evenOdd_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/commute-map-mul-map-of-isortho-of-mem-evenodd-zero-right--e9e6e6cc6026c61654042f21.md) | 105 | `result-track:e9e6e6cc6026c61654042f21615f743dbd4c08ed613ff0b9f3a377df4b149711` |
| 4 | `theorem` | [map_mul_map_eq_neg_of_isOrtho_of_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/map-mul-map-eq-neg-of-isortho-of-mem-evenodd-one--f77f9aa992fd728b7ae8baf7.md) | 110 | `result-track:f77f9aa992fd728b7ae8baf7cef7ba51cddc5ef6f983ac6787cba881bb1eca97` |
| 5 | `def` | [ofProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/ofprod--34f0ed2ad9c6847091cbbcbd.md) | 118 | `declaration-track:34f0ed2ad9c6847091cbbcbd72a4c981914792c496268144040f7ec62a6e3248` |
| 6 | `lemma` | [ofProd_ι_mk](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/ofprod-mk--c9b6820f85e61ab3f7d6f13b.md) | 137 | `result-track:c9b6820f85e61ab3f7d6f13bf7a3325bf74b88a0bda59341ea039a4ed4fd2a87` |
| 7 | `def` | [toProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/toprod--b418e95787500d442b8180e0.md) | 143 | `declaration-track:b418e95787500d442b8180e02588ceb9d4f95a1273c3095f1e4b7703cb925ad9` |
| 8 | `lemma` | [toProd_ι_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/toprod-tmul-one--b7e54ae83846843249adadeb.md) | 151 | `result-track:b7e54ae83846843249adadeb01a0d31e6bdf4ff589dba766c739a1509a5ec041` |
| 9 | `lemma` | [toProd_one_tmul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/toprod-one-tmul--3b73a5be9abec4ecceefb67f.md) | 156 | `result-track:3b73a5be9abec4ecceefb67f2cae9a0fcb94bf6fad6f05ed71ce99c52a985e43` |
| 10 | `lemma` | [toProd_comp_ofProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/toprod-comp-ofprod--f8b7dfb18f3fd171b7b752be.md) | 160 | `result-track:f8b7dfb18f3fd171b7b752be20a802db24fad6a8c655e1ef5e9d8113c5c64959` |
| 11 | `lemma` | [ofProd_comp_toProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/ofprod-comp-toprod--dc479bea441b26c80d7ff6d4.md) | 167 | `result-track:dc479bea441b26c80d7ff6d40e1e2ba1618540f25cb79a2a0ac501f00b575d46` |
| 12 | `def` | [prodEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant7d8f842c844991ed24393a67a842ab8d482299641dabd8778f1041323b9cb5fa.lean/declarations/prodequiv--4f1adae9f11c64fe86061099.md) | 175 | `declaration-track:4f1adae9f11c64fe86061099877efaa8487343bb0f5d6eca84b827257e9ec9ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
