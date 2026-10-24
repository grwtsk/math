# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Units.Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a45bb399b98e1a31ed187bb4238e077feeb06ae",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a45bb399b98e1a31ed187bb4238e077feeb06ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [UnitsInt.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/unitsint-fintype--4f4a2b2fb0209a92b30715bc.md) | 27 | `declaration-track:4f4a2b2fb0209a92b30715bc777b77cd6c3248216d6f73857e3e47dafa46b833` |
| 2 | `theorem` | [UnitsInt.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/unitsint-univ--031294d8612e3647d290c563.md) | 31 | `result-track:031294d8612e3647d290c563d69b054c0b44514fc80f9f121f650e900bab3f86` |
| 3 | `theorem` | [Fintype.card_units_int](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/fintype-card-units-int--13082f88ceba645fdb2d05e0.md) | 34 | `result-track:13082f88ceba645fdb2d05e097be18c6947f71626a75eda008e4b6c0a6172010` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/instance--50069039bb34575a27ffe02b.md) | 36 | `declaration-track:50069039bb34575a27ffe02b754856cef1de9adfb21b6a9d36ba5928fa63865c` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/instance--606449a57b317c3d831550de.md) | 39 | `declaration-track:606449a57b317c3d831550de3e02c02d1cbdb8bc4ec4eaeef50525658b9bfb90` |
| 6 | `theorem` | [Nat.card_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/nat-card-units--4f8c2b5b71a1ad242410246e.md) | 43 | `result-track:4f8c2b5b71a1ad242410246e70dcd52ee1d2f9a02f4b1434cce98b2908989aae` |
| 7 | `theorem` | [Nat.card_eq_card_units_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/nat-card-eq-card-units-add-one--265450069cb57b47b57c1977.md) | 51 | `result-track:265450069cb57b47b57c1977188f6dd6e4836f615f0a000f332bda09f293ec20` |
| 8 | `theorem` | [Fintype.card_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/fintype-card-units--955e1340a28f06334e31082c.md) | 55 | `result-track:955e1340a28f06334e31082c48bfd3da3e466b0c69aa986de623a3c8ccebfbb0` |
| 9 | `theorem` | [Fintype.card_eq_card_units_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Units/Variantf5d170ac776ea8f24e23a555ccd2f3d2dce930ebb87cd2c71f8a103f6c022efb.lean/declarations/fintype-card-eq-card-units-add-one--7c05ca1a85b640dcd386d471.md) | 59 | `result-track:7c05ca1a85b640dcd386d471669c8de42e52e77d25a96e9d7d7b2c819d73e66e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
