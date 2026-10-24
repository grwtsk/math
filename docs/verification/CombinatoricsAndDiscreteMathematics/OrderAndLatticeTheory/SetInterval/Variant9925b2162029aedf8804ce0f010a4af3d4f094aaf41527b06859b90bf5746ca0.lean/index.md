# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetInterval.Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018825e1bb23a0605ec35fcf2a131d9adf8c1760",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018825e1bb23a0605ec35fcf2a131d9adf8c1760`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrdConnected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_cast_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/range-cast-int--7200dec7597a20b17a96875e.md) | 32 | `result-track:7200dec7597a20b17a96875ef032de48b9a9dc399abc6379066dbe396c31b6ac` |
| 2 | `theorem` | [image_cast_int_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-icc--f64d446ad8f8395f509950c4.md) | 35 | `result-track:f64d446ad8f8395f509950c4464ec4bd1e88e8f9f255f0aae114b1309d072dd1` |
| 3 | `theorem` | [image_cast_int_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-ico--1408dae0fae1475ca796aa9b.md) | 38 | `result-track:1408dae0fae1475ca796aa9be59d4029ed3c9e59d84ebe89ff74f92261246b91` |
| 4 | `theorem` | [image_cast_int_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-ioc--bd632ba702b1f45444b4f458.md) | 41 | `result-track:bd632ba702b1f45444b4f458e62d18c404618be367f547e3617351617f2be0a4` |
| 5 | `theorem` | [image_cast_int_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-ioo--db9a90ed79329b69d8c184a1.md) | 44 | `result-track:db9a90ed79329b69d8c184a11c2a5353aba6be40625e537eb53b83b66aca6455` |
| 6 | `theorem` | [image_cast_int_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-iic--e8472879a2333a11d9b6a924.md) | 47 | `result-track:e8472879a2333a11d9b6a924b045049c0bfe309586d3f7d07b92e5b343db5e4c` |
| 7 | `theorem` | [image_cast_int_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-iio--852f6e0500f81facc2278ff4.md) | 50 | `result-track:852f6e0500f81facc2278ff4ac7de5b4fb2b713aed801deb6a5ac68a2773f6e7` |
| 8 | `theorem` | [image_cast_int_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-ici--4efd7d46e5f5fec64f93e093.md) | 53 | `result-track:4efd7d46e5f5fec64f93e0934f48e4dd85497bf77ef11476e11f93094450c26d` |
| 9 | `theorem` | [image_cast_int_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetInterval/Variant9925b2162029aedf8804ce0f010a4af3d4f094aaf41527b06859b90bf5746ca0.lean/declarations/image-cast-int-ioi--a2ddbc333b99bec021b390ee.md) | 56 | `result-track:a2ddbc333b99bec021b390ee20ac2e4cd3fd021bace0358d4fb5469809120f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
