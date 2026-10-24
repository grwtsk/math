# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.IntegralDomain.Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dcc73526bb0531fe8db9675b559d976304b62a0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dcc73526bb0531fe8db9675b559d976304b62a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Inv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_right_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/mul-right-bijective-of-finite--ba056f1bec8f48e1490a1ac0.md) | 41 | `result-track:ba056f1bec8f48e1490a1ac08da369006a0b537f478198041e3060d23d93bba3` |
| 2 | `theorem` | [mul_left_bijective_of_finite₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/mul-left-bijective-of-finite--7be2c2b318e25a706657fc4b.md) | 44 | `result-track:7be2c2b318e25a706657fc4b9e1f42e118bad3668b52b9e143439f919b1c772b` |
| 3 | `def` | [Fintype.groupWithZeroOfCancel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/fintype-groupwithzeroofcancel--b352326b54deadbf300362a5.md) | 48 | `declaration-track:b352326b54deadbf300362a5f4560de3bcd39a3ea040f36353f79c6421e7a0eb` |
| 4 | `theorem` | [exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/exists-eq-pow-of-mul-eq-pow-of-coprime--5717a0a481aa61d39762cf5f.md) | 58 | `result-track:5717a0a481aa61d39762cf5f4fac75d19a87f5d2ff549449f5b93f3ba5625988` |
| 5 | `theorem` | [Finset.exists_eq_pow_of_mul_eq_pow_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/finset-exists-eq-pow-of-mul-eq-pow-of-coprime--558e2e6d3c989f96daa01d5a.md) | 69 | `result-track:558e2e6d3c989f96daa01d5aa1e49aedb8ee6c578bafa09b20bcdf995e7d3106` |
| 6 | `def` | [Fintype.divisionRingOfIsDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/fintype-divisionringofisdomain--06286e046c96f43b66a150b9.md) | 92 | `declaration-track:06286e046c96f43b66a150b90d5cab515c8260c354e78bcc2e5e17e63427954b` |
| 7 | `def` | [Fintype.fieldOfDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/fintype-fieldofdomain--8ce9d78cd013832d45964fac.md) | 103 | `declaration-track:8ce9d78cd013832d45964fac1590669d21b5bf51256da5ac876438685cce4d18` |
| 8 | `theorem` | [Finite.isField_of_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/finite-isfield-of-domain--cea40c47604f09368176e305.md) | 106 | `result-track:cea40c47604f09368176e305f890de8a826a1818e92b49458c63f7869a2f5fae` |
| 9 | `theorem` | [card_nthRoots_subgroup_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/card-nthroots-subgroup-units--a37b9ee07b3d40c11f69780c.md) | 114 | `result-track:a37b9ee07b3d40c11f69780c416af1ccd9cbf718b8521a30c6b9ae0ac9ecd1ce` |
| 10 | `theorem` | [isCyclic_of_subgroup_isDomain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/iscyclic-of-subgroup-isdomain--157d6aec5eab5b0c63b71e88.md) | 123 | `result-track:157d6aec5eab5b0c63b71e88f8ece85fdfad5d78a11c6bd0e43b1e08ca13c961` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/instance--be907b04331236a68d4babab.md) | 134 | `declaration-track:be907b04331236a68d4babab1d048944e1b7946c60f7058dc7fe2042d3a3f79b` |
| 12 | `instance` | [subgroup_units_cyclic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/subgroup-units-cyclic--c79974787afe224e85771677.md) | 142 | `declaration-track:c79974787afe224e85771677eabfc102740d8549b7743ae6b8332fed891770d4` |
| 13 | `theorem` | [div_eq_quo_add_rem_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/div-eq-quo-add-rem-div--48c020d8fc746244b264bf42.md) | 156 | `result-track:48c020d8fc746244b264bf42facfe6ff117ba4d5a6dbf66f0eedeef8b595da0a` |
| 14 | `theorem` | [sum_hom_units_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/sum-hom-units-eq-zero--e9d9990e541f495be8f6551e.md) | 177 | `result-track:e9d9990e541f495be8f6551ea2eaeca8b14ce6f8ccc5166ccea98604591373b6` |
| 15 | `theorem` | [sum_hom_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantdd06bdd71fa647bb9c6a93dd4c8ed2bcf0405447b87b99327bb54ef4da76ba7d.lean/declarations/sum-hom-units--1895d9a9728fc3b896188f47.md) | 235 | `result-track:1895d9a9728fc3b896188f47dc57ceb2c228c35174301c4782ccf692d205d1c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
