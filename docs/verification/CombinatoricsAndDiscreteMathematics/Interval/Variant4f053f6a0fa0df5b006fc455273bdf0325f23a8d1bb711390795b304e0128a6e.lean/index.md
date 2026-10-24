# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8877a22eee3eb8efe12c16b82ff857635bada11b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8877a22eee3eb8efe12c16b82ff857635bada11b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Icc_mul_Icc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/icc-mul-icc-subset--32d61b8103b74555be58de08.md) | 37 | `result-track:32d61b8103b74555be58de086567655dba01832685dd262e8a6326857e115798` |
| 2 | `theorem` | [Iic_mul_Iic_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/iic-mul-iic-subset--2ac58a82fe99a94c9cac36a3.md) | 42 | `result-track:2ac58a82fe99a94c9cac36a3ad9bcbf0e464f4065cb66f79711f0af6cbdfd959` |
| 3 | `theorem` | [Ici_mul_Ici_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ici-mul-ici-subset--9052b6e436b4fe75974e130d.md) | 46 | `result-track:9052b6e436b4fe75974e130d0f067cd7b10813c936210ca7a7880eec83f3e20b` |
| 4 | `theorem` | [Icc_mul_Ico_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/icc-mul-ico-subset--36a5b94225cfafa296aa7d5a.md) | 57 | `result-track:36a5b94225cfafa296aa7d5a9a6d315fc2e881a32687371741a5d5c5765cdf85` |
| 5 | `theorem` | [Ico_mul_Icc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ico-mul-icc-subset--06e2b67ae87e00b27ff4dd77.md) | 62 | `result-track:06e2b67ae87e00b27ff4dd7777a057b68dd40c3d6fec59b43fe7f80b0c5cee09` |
| 6 | `theorem` | [Ioc_mul_Ico_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ioc-mul-ico-subset--268f4a02ee8aa483c01f3922.md) | 67 | `result-track:268f4a02ee8aa483c01f392288382a2234d0fb3939fb1a651033c9eda8c002ea` |
| 7 | `theorem` | [Ico_mul_Ioc_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ico-mul-ioc-subset--537167353da461fd9f35c22f.md) | 72 | `result-track:537167353da461fd9f35c22fd5bb64169efc25e0168475833c2a26be0b7a3be9` |
| 8 | `theorem` | [Iic_mul_Iio_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/iic-mul-iio-subset--35c531485bd9c163313d7ad7.md) | 77 | `result-track:35c531485bd9c163313d7ad73cf30f521e88baf6b34d4e5ff8be67beab78c175` |
| 9 | `theorem` | [Iio_mul_Iic_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/iio-mul-iic-subset--73266b34d5099f481ab51038.md) | 81 | `result-track:73266b34d5099f481ab5103890a37d2b2145180c20dca8ab1d0580a2904bac4e` |
| 10 | `theorem` | [Ioi_mul_Ici_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ioi-mul-ici-subset--432cc4a909f3634667e8eb97.md) | 85 | `result-track:432cc4a909f3634667e8eb97a1f8ab503cf810eba0215d0ea7384ec206856a0d` |
| 11 | `theorem` | [Ici_mul_Ioi_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e.lean/declarations/ici-mul-ioi-subset--0281b92d07965792c78f2e64.md) | 89 | `result-track:0281b92d07965792c78f2e647005e5e64d220b4862ffa287dd8259be3747c3f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
