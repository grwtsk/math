# Verification target: GRWTSK.Algebra.UniversalAlgebra.FreeNonUnitalNonAssocAlgebra.Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "536bd7de8b7e13156e958ac5308563e1dbc5ae84",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `536bd7de8b7e13156e958ac5308563e1dbc5ae84`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreeNonUnitalNonAssocAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/freenonunitalnonassocalgebra--bca2c6711bc15624b87a8d21.md) | 61 | `declaration-track:bca2c6711bc15624b87a8d21a6f3417c584ff2581a7e872c56825306f002d2ad` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/of--bfc2bcfae655ce3952bf4af9.md) | 69 | `declaration-track:bfc2bcfae655ce3952bf4af9b7a91ae580da54fc7e7d8e884d3ac76ffe39b02f` |
| 3 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/lift--b6f75408a85a36ae80992bd8.md) | 78 | `declaration-track:b6f75408a85a36ae80992bd865ddbdd11745124ccffd0910a9b65bd298ed98d3` |
| 4 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/lift-symm-apply--3ac3ba32e3cb59f562fdd85f.md) | 82 | `result-track:3ac3ba32e3cb59f562fdd85f25a068533bfcc804b3694e5b76e88cee63f94033` |
| 5 | `theorem` | [of_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/of-comp-lift--b9bf872ab86a5ef27f368d88.md) | 86 | `result-track:b9bf872ab86a5ef27f368d8858000551eb195c003c795645fda61447eb95b6c1` |
| 6 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/lift-unique--5eca233350d164c025126c43.md) | 90 | `result-track:5eca233350d164c025126c43f2c4aa7b23e9b3c8998807e8694c4f067321094f` |
| 7 | `theorem` | [lift_of_apply](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/lift-of-apply--244c80512df7b339ca05d3d7.md) | 95 | `result-track:244c80512df7b339ca05d3d7112d16aa85aa77df8d5d75f67cb4459dfe62e355` |
| 8 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/lift-comp-of--b7a2af6dca53607eb5a36717.md) | 99 | `result-track:b7a2af6dca53607eb5a36717cd2c7cc75320f664f680d0e805152498eea6204b` |
| 9 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/FreeNonUnitalNonAssocAlgebra/Variant8fe6040cde3b813475b93c0a11808f69575a28b38effa09e6735d207addd8b57.lean/declarations/hom-ext--15e864ddc6a2d4792dc2885d.md) | 103 | `result-track:15e864ddc6a2d4792dc2885d0133c9072df1261f4b0a4f5f4bbc53160397796d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
