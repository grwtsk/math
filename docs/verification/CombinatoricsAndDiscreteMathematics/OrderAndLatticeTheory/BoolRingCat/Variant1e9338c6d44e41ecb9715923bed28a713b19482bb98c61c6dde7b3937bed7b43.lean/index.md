# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolRingCat.Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80a0055900e7e81548f1f7685df97b9a63c16c49",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80a0055900e7e81548f1f7685df97b9a63c16c49`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.BooleanRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlgCat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoolRingCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/boolringcat--45b61be522489965b0f365a0.md) | 37 | `declaration-track:45b61be522489965b0f365a07f79186021dcd0e5373556e5b677c78025c7ef5f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--025235ecc48106fd5f99bcd9.md) | 43 | `declaration-track:025235ecc48106fd5f99bcd9b8d4f9b4ca2a470b30cc40e899595c52238cd55b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--5d624e5c88746aa0fed46fa6.md) | 46 | `declaration-track:5d624e5c88746aa0fed46fa640f5147576390c19ddea168f184cdf9d58681f6d` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/of--3734b686e42ca6e82f201edc.md) | 50 | `declaration-track:3734b686e42ca6e82f201edc994587d29c8739578771146f2d5045bec9dc3d96` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/coe-of--31f8ca2595dd71f5f3f0d0a3.md) | 55 | `result-track:31f8ca2595dd71f5f3f0d0a3e6c636e57a7c57447d9d8e1414b79b3354adaa15` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--6865abd501519d6e0b625343.md) | 59 | `declaration-track:6865abd501519d6e0b62534349fdf0b81053894ec2c0fe452d28fcf06c82363d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--550120cf533f941ad207412f.md) | 62 | `declaration-track:550120cf533f941ad207412f3c54abee287fbb1c44c18c446f2824b08b155abc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--b32d9a4c462a394dc27d2e93.md) | 69 | `declaration-track:b32d9a4c462a394dc27d2e9306a4fbf6a29815b7007050ad5f05a3b6410b4a45` |
| 9 | `instance` | [hasForgetToCommRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/hasforgettocommring--946bcf4f5f1d641d009f92e6.md) | 78 | `declaration-track:946bcf4f5f1d641d009f92e6f4a4fd7a5132e391f35bd024543bb2fd81c2697f` |
| 10 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/iso-mk--0023753ae5b88e6f4e0b23ee.md) | 84 | `declaration-track:0023753ae5b88e6f4e0b23ee76a84f186948580a2bc1479ac14d6f291850229f` |
| 11 | `instance` | [BoolRingCat.hasForgetToBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/boolringcat-hasforgettoboolalgcat--e0a9638f5d04ffc53bfc5785.md) | 96 | `declaration-track:e0a9638f5d04ffc53bfc5785d382ed825c2b67790b0e1ce82e4ee7c5c837c8b6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/instance--3611a73a1b2159c9edd7010d.md) | 103 | `declaration-track:3611a73a1b2159c9edd7010dcb5b0069fada0027e26fbb872a32d04ee83cafbf` |
| 13 | `instance` | [BoolAlgCat.hasForgetToBoolRingCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/boolalgcat-hasforgettoboolringcat--300443c1632810cf6a1b37fd.md) | 108 | `declaration-track:300443c1632810cf6a1b37fd18a37750082b760a02bcd7248f4c856ea1ecb44a` |
| 14 | `def` | [boolRingCatEquivBoolAlgCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolRingCat/Variant1e9338c6d44e41ecb9715923bed28a713b19482bb98c61c6dde7b3937bed7b43.lean/declarations/boolringcatequivboolalgcat--9bb7fe4af90027c24957bb64.md) | 116 | `declaration-track:9bb7fe4af90027c24957bb645e349afeb0f626b73d66469ae3ebcfda67180e25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
