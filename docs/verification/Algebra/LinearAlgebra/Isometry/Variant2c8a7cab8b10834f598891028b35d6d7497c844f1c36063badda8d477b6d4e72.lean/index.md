# Verification target: GRWTSK.Algebra.LinearAlgebra.Isometry.Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a5fe1729403eb38040e5aa4e9073f64e7d158a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a5fe1729403eb38040e5aa4e9073f64e7d158a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation--cdf9570159ffe11cca9e9da1.md) | 41 | `declaration-track:cdf9570159ffe11cca9e9da190b7c5fc2c1c53826e5270d82748f1f7ca46b006` |
| 2 | `theorem` | [rotation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation-apply--b9b265d308150507ea16b617.md) | 50 | `result-track:b9b265d308150507ea16b6173ed7c552cec90a4695f235566be292cc790fb6f8` |
| 3 | `theorem` | [rotation_symm](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation-symm--67ca3a050a2b7ca0e4023826.md) | 54 | `result-track:67ca3a050a2b7ca0e402382665598d40122759afcb6059e5387e1af28b57ee72` |
| 4 | `theorem` | [rotation_trans](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation-trans--b3d99a710e301ec31af2d9b6.md) | 58 | `result-track:b3d99a710e301ec31af2d9b630bf7e12373cc989aafaa472cf0614468de4385a` |
| 5 | `theorem` | [rotation_ne_conjLIE](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation-ne-conjlie--56869406260158dccba6e7a1.md) | 62 | `result-track:56869406260158dccba6e7a12f6c334b33e6abedfdb6d80c95255cfc723fd359` |
| 6 | `def` | [rotationOf](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotationof--8bff9d4fdb5bc2d260ea30a3.md) | 73 | `declaration-track:8bff9d4fdb5bc2d260ea30a30159c050af8194509264444f99dec60dc19e061b` |
| 7 | `theorem` | [rotationOf_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotationof-rotation--801c28b9443b90e0413be4df.md) | 77 | `result-track:801c28b9443b90e0413be4df5e83903159ee5d046e5638c1220cbd257706918a` |
| 8 | `theorem` | [rotation_injective](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/rotation-injective--c729ce36e2fb9e43864f7253.md) | 80 | `result-track:c729ce36e2fb9e43864f7253a1eb978c599b8c1e0460b846a200fb2d67f6f283` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq--d7709f1466d1772ca471f21d.md) | 83 | `result-track:d7709f1466d1772ca471f21daa7bd41955ef394a55fd8fd58301d9d5299cc9bc` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re--5e3584c131cbff0f4f36b5fd.md) | 88 | `result-track:5e3584c131cbff0f4f36b5fd7069b4d8a1d91522070149aea0c5df7e1f675cb3` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linearisometry-im-apply-eq-im--6edfa5141cc5b2e0c72b2bcc.md) | 95 | `result-track:6edfa5141cc5b2e0c72b2bcc27c9fef73fd71a9f33f572bd86789eb59d78ea06` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linearisometry-re-apply-eq-re--6baac21d791bb6ffcd36d6c9.md) | 109 | `result-track:6baac21d791bb6ffcd36d6c90012b3b10139c2e6d3e51c97418bbde7058ad82e` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linear-isometry-complex-aux--cbb3e01a6869f148216c08c4.md) | 114 | `result-track:cbb3e01a6869f148216c08c4edd40b275dff142a722cb8bb0c2a582c90a21584` |
| 14 | `theorem` | [linear_isometry_complex](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linear-isometry-complex--a0d7302810e3633bf66bcd65.md) | 130 | `result-track:a0d7302810e3633bf66bcd65d2b4088fef125ba055c10ee9624616099d0a99e3` |
| 15 | `theorem` | [toMatrix_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/tomatrix-rotation--e628c986831dab7d3cdb5bea.md) | 141 | `result-track:e628c986831dab7d3cdb5beac0b74e83683c992723a895e84a64a2a67ddb6052` |
| 16 | `theorem` | [det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/det-rotation--fa3bd975a7dd3f830bb0cb56.md) | 153 | `result-track:fa3bd975a7dd3f830bb0cb56aebc6c6433703b47ff566e0848f21453241eaaac` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../../mathematics/Algebra/LinearAlgebra/Isometry/Variant2c8a7cab8b10834f598891028b35d6d7497c844f1c36063badda8d477b6d4e72.lean/declarations/linearequiv-det-rotation--1f03868b9fcda83887ec64f0.md) | 159 | `result-track:1f03868b9fcda83887ec64f0be1c1835c5820092b3e26662b0dbb8d18f81a5f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
