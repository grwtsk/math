# Verification target: GRWTSK.Algebra.UniversalAlgebra.Field.Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d7ca7d791a8d5c10505a8c2fca7981f512583c3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d7ca7d791a8d5c10505a8c2fca7981f512583c3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.CharZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/cast-div--0b03edd434e9274296202c3b.md) | 29 | `result-track:0b03edd434e9274296202c3b4f06d330bc7c53ebd08417da5eb9e2fa01b5267f` |
| 2 | `theorem` | [cast_div_div_div_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/cast-div-div-div-cancel-right--e9a05733191d43a90d471d56.md) | 38 | `result-track:e9a05733191d43a90d471d56098100da2d435592c1da5a96b6e39e816490f7ae` |
| 3 | `theorem` | [cast_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/cast-div-le--cfe557251ddf0aacb510e60f.md) | 52 | `result-track:cfe557251ddf0aacb510e60fcca561bb3bb3e4fca3c1cfb4f4aa0b73b859fc42` |
| 4 | `theorem` | [inv_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/inv-pos-of-nat--2f01007d3c6e3ac052afeb1a.md) | 60 | `result-track:2f01007d3c6e3ac052afeb1a054de36f03086faf6f7f380653bcb547cd12fc6b` |
| 5 | `theorem` | [one_div_pos_of_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/one-div-pos-of-nat--a6b7b06e2f592a72490a9830.md) | 64 | `result-track:a6b7b06e2f592a72490a9830c8d6c79f64dae7a072f0717dad1e3548b562d863` |
| 6 | `theorem` | [one_div_le_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/one-div-le-one-div--aa273caf6df4067267eb3427.md) | 69 | `result-track:aa273caf6df4067267eb34274e17da568a663cd939a0de68892d84fdcdce7a35` |
| 7 | `theorem` | [one_div_lt_one_div](../../../../../mathematics/Algebra/UniversalAlgebra/Field/Variant275917fb7fb71734730f02529207bfb59bd1fb4a3711e75fbf4701e176caef43.lean/declarations/one-div-lt-one-div--f403f6207b243455ad8acb35.md) | 75 | `result-track:f403f6207b243455ad8acb357205beb3b4c3f74bf2094cef9769b50023177223` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
