# Verification target: GRWTSK.Algebra.UniversalAlgebra.Units.Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "034b2cb5388104d43c027c319dde5cd9b44448d8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `034b2cb5388104d43c027c319dde5cd9b44448d8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff_abs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/isunit-iff-abs-eq--42ae174f0103d155ad48b59b.md) | 15 | `result-track:42ae174f0103d155ad48b59b8b417844bb2458e4a8f7c4ebad9acc39b87c24fe` |
| 2 | `theorem` | [isUnit_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/isunit-sq--de2b0cbf84a939ee381bf16b.md) | 18 | `result-track:de2b0cbf84a939ee381bf16b26e75c57573f8395cee1fb6a2397060173f032b7` |
| 3 | `theorem` | [units_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-sq--c1c8235a8577b0f0e22e72ed.md) | 21 | `result-track:c1c8235a8577b0f0e22e72ed6ec2d477004f7f226aaa96fe0fdd745b4288ab6f` |
| 4 | `theorem` | [units_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-mul-self--db41a909efbd2e9dcddc53c1.md) | 27 | `result-track:db41a909efbd2e9dcddc53c1bda0c61907447e68e3d905fcd5476a4ea778bf4b` |
| 5 | `theorem` | [units_inv_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-inv-eq-self--16f2d91f8391e5964a7c67a4.md) | 30 | `result-track:16f2d91f8391e5964a7c67a4d7f1d4b27d5b152d38b93dc87b4a3bf2f12edf71` |
| 6 | `theorem` | [units_div_eq_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-div-eq-mul--f33de62b52017c52240b84f3.md) | 32 | `result-track:f33de62b52017c52240b84f3487d05e677b68252e9c22d0b8fbdde026ac0e227` |
| 7 | `theorem` | [units_coe_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-coe-mul-self--b1f2bc18e452df94ce4e2d53.md) | 37 | `result-track:b1f2bc18e452df94ce4e2d53866f5bdaf5247601bee680bfda49bde3ba55c914` |
| 8 | `theorem` | [neg_one_pow_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/neg-one-pow-ne-zero--f6420395d5658d5a308f514e.md) | 40 | `result-track:f6420395d5658d5a308f514ed7ce4439733c6173912dd1d050eea48197024ebf` |
| 9 | `theorem` | [sq_eq_one_of_sq_lt_four](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/sq-eq-one-of-sq-lt-four--15b510b1a36b17793be4d258.md) | 42 | `result-track:15b510b1a36b17793be4d25862964219ff89551c0e6b6819aa24b2c8831ee107` |
| 10 | `theorem` | [sq_eq_one_of_sq_le_three](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/sq-eq-one-of-sq-le-three--39e8bdf504a46094002b9fd2.md) | 48 | `result-track:39e8bdf504a46094002b9fd2b3cc48ea537efaca99328d49d3e45bd8d26a4c9f` |
| 11 | `theorem` | [units_pow_eq_pow_mod_two](../../../../../mathematics/Algebra/UniversalAlgebra/Units/Variant5a4b237c3d8e041ee5389376f1e33c88a30c6cfb5d3d176ab3faa6cdac46749c.lean/declarations/units-pow-eq-pow-mod-two--ab075e0ad7ab8896c28d44a8.md) | 51 | `result-track:ab075e0ad7ab8896c28d44a8ff116ef267723a154fc237a99cf67426fd3517ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
