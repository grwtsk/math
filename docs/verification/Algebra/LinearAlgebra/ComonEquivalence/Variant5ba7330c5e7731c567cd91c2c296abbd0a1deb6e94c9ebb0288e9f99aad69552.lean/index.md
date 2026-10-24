# Verification target: GRWTSK.Algebra.LinearAlgebra.ComonEquivalence.Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1e1cc06d1f15077f2619529b4740b37f9cb7bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1e1cc06d1f15077f2619529b4740b37f9cb7bc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.CoalgCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.TensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toComonObj](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/tocomonobj--c2153c04e7188ef2d3c55e16.md) | 52 | `declaration-track:c2153c04e7188ef2d3c55e163cf98d1030b2cc3508227a11de863c9f99921112` |
| 2 | `def` | [toComon](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/tocomon--fd3d2e36cad1036a57cd90d1.md) | 63 | `declaration-track:fd3d2e36cad1036a57cd90d1786bef019cc0625cd47a332bec73756c98745b03` |
| 3 | `instance` | [ofComonObjCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/ofcomonobjcoalgebrastruct--53ac87db88667740b11337ac.md) | 73 | `declaration-track:53ac87db88667740b11337ac926ca63004baab021bb3a871c20bfb9d56a0c56d` |
| 4 | `def` | [ofComonObj](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/ofcomonobj--d69a557717decdbac18ec31c.md) | 80 | `declaration-track:d69a557717decdbac18ec31c1ca748108b35553a791b0cb03ce2952d0478ad0a` |
| 5 | `def` | [ofComon](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/ofcomon--e9aa43e130b24db9bd842358.md) | 91 | `declaration-track:e9aa43e130b24db9bd8423582caf749bca13d9856617a0d081c54cf119a00cfa` |
| 6 | `def` | [comonEquivalence](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/comonequivalence--835461b9111d03c71ec8b713.md) | 102 | `declaration-track:835461b9111d03c71ec8b7138f2a61a2ea5b8bd042421c2f06c3d4f6729feb1c` |
| 7 | `def` | [instMonoidalCategoryAux](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/instmonoidalcategoryaux--f7df29fdc3b470c013d53cee.md) | 114 | `declaration-track:f7df29fdc3b470c013d53cee85ef04727c81e6d58a1b5f886bda0a9b77f21e41` |
| 8 | `theorem` | [tensorObj_comul](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/tensorobj-comul--55e43a9460def0eb23d4bbe6.md) | 127 | `result-track:55e43a9460def0eb23d4bbe67adf3f3911ee3cc92bec5bff9e7406bd29aa6a04` |
| 9 | `theorem` | [tensorHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/tensorhom-tolinearmap--ae48731ff9e2fbb3578cb60e.md) | 137 | `result-track:ae48731ff9e2fbb3578cb60e10134043ed4c4ef2551b333a19f18e9e295f1d5d` |
| 10 | `theorem` | [associator_hom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/associator-hom-tolinearmap--1fe47e5b804a7d5e189a60d6.md) | 141 | `result-track:1fe47e5b804a7d5e189a60d60a1b7b9965949d0a404d264057523a7cc8fc8931` |
| 11 | `theorem` | [leftUnitor_hom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/leftunitor-hom-tolinearmap--b7f4722acb6cb0bd834b9d0e.md) | 146 | `result-track:b7f4722acb6cb0bd834b9d0e06db227f13c1bacc7e0d68c7e0f498c6c11f4624` |
| 12 | `theorem` | [rightUnitor_hom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/rightunitor-hom-tolinearmap--64b165a7466430672677359e.md) | 150 | `result-track:64b165a7466430672677359e8b61a04b29c6dd720c71c9c6dca2524abd7c4a42` |
| 13 | `theorem` | [comul_tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/comul-tensorobj--4f3d1d16c159b8ecbd821780.md) | 156 | `result-track:4f3d1d16c159b8ecbd821780af3dfde18193e4df1a7d464a8635baebe3291ccf` |
| 14 | `theorem` | [comul_tensorObj_tensorObj_right](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/comul-tensorobj-tensorobj-right--4a3426967baa6a506c6b7e5e.md) | 164 | `result-track:4a3426967baa6a506c6b7e5e906caad7467398be388d3d4eab6cbda7eea86d4d` |
| 15 | `theorem` | [comul_tensorObj_tensorObj_left](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/comul-tensorobj-tensorobj-left--09b67bb52fbc82df7d59da64.md) | 176 | `result-track:09b67bb52fbc82df7d59da64658ed59d32ae91417873c77b9377ce61baf21157` |
| 16 | `theorem` | [counit_tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/counit-tensorobj--2d114aeccf072dac18974c20.md) | 188 | `result-track:2d114aeccf072dac18974c200973f40aaa1c60e88382c531f41293243d5669ee` |
| 17 | `theorem` | [counit_tensorObj_tensorObj_right](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/counit-tensorobj-tensorobj-right--ac54c7d9dcb17243577bdfb9.md) | 195 | `result-track:ac54c7d9dcb17243577bdfb9325519d711971dff7f4756b597469187716bb62b` |
| 18 | `theorem` | [counit_tensorObj_tensorObj_left](../../../../../mathematics/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/declarations/counit-tensorobj-tensorobj-left--6f982914533d2a98e84a3c47.md) | 203 | `result-track:6f982914533d2a98e84a3c47a72f3267fa5c0e5647e912659507a669694176d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
