# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3f9dd84bdc6fe1254e93393ed9b67ca8cd5e9c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3f9dd84bdc6fe1254e93393ed9b67ca8cd5e9c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.CharZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/cast-div--1ed8d8caef637879d54a1681.md) | 37 | `result-track:1ed8d8caef637879d54a1681caa15dd31d7d1d46a22bd91e79fdf9e17cb37c08` |
| 2 | `theorem` | [cast_div_div_div_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/cast-div-div-div-cancel-right--301e346bf4706996ca31c5e9.md) | 46 | `result-track:301e346bf4706996ca31c5e9a2062b193f4a1617c0e0e501f0ccd8fedfc5f9b3` |
| 3 | `theorem` | [cast_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/cast-div-le--1068a1f75d698e49adb8b086.md) | 60 | `result-track:1068a1f75d698e49adb8b0860fac0d8f5d618f6803af5515290bc3c4047feb3c` |
| 4 | `theorem` | [inv_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/inv-pos-of-nat--647d005327ba9bf419fe8153.md) | 68 | `result-track:647d005327ba9bf419fe8153d804efdc8f4b9ac79ee877c0508ac1f104da68af` |
| 5 | `theorem` | [one_div_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/one-div-pos-of-nat--4745e3938b538ff8b34974ad.md) | 72 | `result-track:4745e3938b538ff8b34974addf18498f5e8b3e702609e89d8cb8ff2979cfd965` |
| 6 | `theorem` | [one_div_le_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/one-div-le-one-div--4d38cec86fef90ebb77a27a7.md) | 77 | `result-track:4d38cec86fef90ebb77a27a7e6b7e1be337e0d767962946f1bd3d270790c9c9b` |
| 7 | `theorem` | [one_div_lt_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant9d4b6628a33d31d85eaa809d0a119aac2577d428142d0b52ae705bdc5fb06227.lean/declarations/one-div-lt-one-div--359a0de0d734b3760d152f08.md) | 83 | `result-track:359a0de0d734b3760d152f08ee6f616c1c6dfd0ce2e2c55b999312bf18ecdc36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
