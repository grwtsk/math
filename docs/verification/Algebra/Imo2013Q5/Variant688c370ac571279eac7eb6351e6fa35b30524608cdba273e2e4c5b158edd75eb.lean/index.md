# Verification target: GRWTSK.Algebra.Imo2013Q5.Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c037a8ec632658f7774ed5cec595710d00994db",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c037a8ec632658f7774ed5cec595710d00994db`.

Source path: `GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/macro-rules--b9815e83df6e0d894359f8c8.md) | 43 | `declaration-track:b9815e83df6e0d894359f8c8a73c92488e95275415e9f16bcecc9af158ea5641` |
| 2 | `theorem` | [le_of_all_pow_lt_succ](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/le-of-all-pow-lt-succ--f40d7ccae15be735bda07c94.md) | 47 | `result-track:f40d7ccae15be735bda07c94fb14659ce0eafdf7a9f633e64e6225c2a9b8ac76` |
| 3 | `theorem` | [le_of_all_pow_lt_succ'](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/le-of-all-pow-lt-succ--19b3b9afbd7bd24209e886b4.md) | 79 | `result-track:19b3b9afbd7bd24209e886b41b9049bac32f963234b51de6c65edf428cfb266d` |
| 4 | `theorem` | [f_pos_of_pos](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/f-pos-of-pos--f1e86eebd717b60f6bfadfd3.md) | 102 | `result-track:f1e86eebd717b60f6bfadfd3d3ec7fe178a7ac34b78c7688b9cd8ff01aa5ddd4` |
| 5 | `theorem` | [fx_gt_xm1](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/fx-gt-xm1--559b968ed92574201c6d5c40.md) | 121 | `result-track:559b968ed92574201c6d5c4015c44fbf370b16d4566c1c08828dfa725ac0b51b` |
| 6 | `theorem` | [pow_f_le_f_pow](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/pow-f-le-f-pow--d7d0dbe71482ea991f9c0667.md) | 138 | `result-track:d7d0dbe71482ea991f9c0667a72360a8990399dfbb3353da4a57f55d506d808a` |
| 7 | `theorem` | [fixed_point_of_pos_nat_pow](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/fixed-point-of-pos-nat-pow--c91fa10c3679d81f249ed77e.md) | 153 | `result-track:c91fa10c3679d81f249ed77e6715a3d8f6ef6fc22f13078c5a0f760f2c576fc7` |
| 8 | `theorem` | [fixed_point_of_gt_1](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/fixed-point-of-gt-1--f7892bac1f0337d9c0811194.md) | 165 | `result-track:f7892bac1f0337d9c0811194e3ad9acd3ff08e3c2b6b19aeaa74a76c3851be59` |
| 9 | `theorem` | [imo2013_q5](../../../../mathematics/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/declarations/imo2013-q5--ca7d266787c9c8f7079ae826.md) | 192 | `result-track:ca7d266787c9c8f7079ae8263d120ccda4c93b5de93c7e474dec5cc520bd6d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
