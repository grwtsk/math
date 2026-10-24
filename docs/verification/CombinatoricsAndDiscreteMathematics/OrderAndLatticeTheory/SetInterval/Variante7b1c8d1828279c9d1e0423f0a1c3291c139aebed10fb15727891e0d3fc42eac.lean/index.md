# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetInterval.Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "891b3d9c2a63a607f7a68241674b05a906ef017e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `891b3d9c2a63a607f7a68241674b05a906ef017e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_cast_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/range-cast-int--4f05930e56ef1cfb18766275.md) | 24 | `result-track:4f05930e56ef1cfb18766275161814b8f0a5fdbf29ce068ae6dff31da15bca22` |
| 2 | `theorem` | [image_cast_int_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-icc--609796ec95fd0ad06721350e.md) | 27 | `result-track:609796ec95fd0ad06721350eceba9c9e37e30d65a5e782a18130749ad8e17703` |
| 3 | `theorem` | [image_cast_int_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-ico--cc01247f6f56f1077a124b51.md) | 30 | `result-track:cc01247f6f56f1077a124b516a2661a0269af46f351141be88eaa0665696ec7f` |
| 4 | `theorem` | [image_cast_int_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-ioc--a24635f3aebb3852f60198d9.md) | 33 | `result-track:a24635f3aebb3852f60198d9d923565d333263031a797f393c20ebea2730c5d5` |
| 5 | `theorem` | [image_cast_int_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-ioo--b994c6430b48818fba191f54.md) | 36 | `result-track:b994c6430b48818fba191f549162451d7048399696a66a2fb52166e0c5150ebe` |
| 6 | `theorem` | [image_cast_int_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-iic--30f775eed178a41c8c099f6a.md) | 39 | `result-track:30f775eed178a41c8c099f6adeb1aca82627393ff592dd05ae5fe9203962d52f` |
| 7 | `theorem` | [image_cast_int_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-iio--a65ae094e55e137ad453815d.md) | 42 | `result-track:a65ae094e55e137ad453815d63ba4d31c5e9548681a07813632af73bb3b6fc3e` |
| 8 | `theorem` | [image_cast_int_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-ici--90bca84770d3903caf49469e.md) | 45 | `result-track:90bca84770d3903caf49469ea3a70d84ebe3396d2bb1e07759b1b93c5fe51463` |
| 9 | `theorem` | [image_cast_int_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variante7b1c8d1828279c9d1e0423f0a1c3291c139aebed10fb15727891e0d3fc42eac.lean/declarations/image-cast-int-ioi--537b3c32ccf609cc1e5158a7.md) | 48 | `result-track:537b3c32ccf609cc1e5158a752959491f368851eabb9713cd98efdef4a4cfd13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
