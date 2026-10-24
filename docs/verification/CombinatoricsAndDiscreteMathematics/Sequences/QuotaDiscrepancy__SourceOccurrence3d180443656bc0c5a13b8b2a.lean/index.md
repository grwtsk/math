# Verification target: GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `082f7a14cea422527f4ff132e2fb00cefd9e75cd`.

Source path: `GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/QuotaDiscrepancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/clock--760bd17b397fa5094573425b.md) | 15 | `declaration-track:760bd17b397fa5094573425ba7415b03636886f7ee06ef469f0ab13239542628` |
| 2 | `theorem` | [clock_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/clock-zero--efb567f6dca3c7b85349947b.md) | 18 | `result-track:efb567f6dca3c7b85349947b783b421037db8d26746abd15b0d3ee457d939519` |
| 3 | `theorem` | [clock_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/clock-succ--27729b0a5a084f4b77fe0f42.md) | 19 | `result-track:27729b0a5a084f4b77fe0f427c25291534f8ad8c325fe225816b588a24b464a1` |
| 4 | `theorem` | [clock_ge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/clock-ge--21884725a4478ad431c3a51c.md) | 21 | `result-track:21884725a4478ad431c3a51cc023fc3434f75710bc20998959a4a9a7220287cf` |
| 5 | `def` | [serves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/serves--2be9078430995f042d998620.md) | 27 | `declaration-track:2be9078430995f042d998620f846fadfa1a4b527f1495e5b8c2b480f6f617130` |
| 6 | `theorem` | [coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/coverage--eb50bd83af65bb4e69c5500f.md) | 29 | `result-track:eb50bd83af65bb4e69c5500fe8b8d30ce3ef3842eb0c0d829ba0b02c283dbd17` |
| 7 | `theorem` | [starvation_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/starvation-counterexample--6e702b9abf42ed028a16b344.md) | 40 | `result-track:6e702b9abf42ed028a16b3442c79b77b120efec4fd9a4d97046d275850a4edf4` |
| 8 | `def` | [step](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/step--acddbefe922fee5997af959d.md) | 45 | `declaration-track:acddbefe922fee5997af959d21970928bc2c4a5b1db2dbbae4cb5fe6eeb1df6c` |
| 9 | `theorem` | [maximal_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/maximal-exists--458375b5d8d498976b6174e9.md) | 48 | `result-track:458375b5d8d498976b6174e9e9675bb9f6cb6383d310e2181ac701f42df5e1c2` |
| 10 | `theorem` | [step_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/step-sum--f9619c7811768cd873091352.md) | 54 | `result-track:f9619c7811768cd873091352524150042347dc3dec4957966cc9c6d376423eac` |
| 11 | `theorem` | [step_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/step-lower--69fffaca296e4c03725a8319.md) | 58 | `result-track:69fffaca296e4c03725a8319f63e93c32acf28e5280074fc1c7de12b8605a2eb` |
| 12 | `theorem` | [upper_from_lower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/upper-from-lower--8e8116fd24fd6cf1be1ba676.md) | 72 | `result-track:8e8116fd24fd6cf1be1ba6768c42ba21c85678c84811c75013bd7152dcf479f5` |
| 13 | `def` | [debt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/debt--1e44f637c36f971ca1957f13.md) | 84 | `declaration-track:1e44f637c36f971ca1957f13820e983c8dca149e991bafbd6f7cb66b5204fb26` |
| 14 | `def` | [count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/count--e9fc5e41ae1599302582bda1.md) | 87 | `declaration-track:e9fc5e41ae1599302582bda17e41357893c46638d8a1a4ae3d5fafd32a6195fe` |
| 15 | `theorem` | [debt_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/debt-zero--7040395ee28f077a60b605e0.md) | 90 | `result-track:7040395ee28f077a60b605e0048fdbcb059fa2627819cfee01022bfb906c7566` |
| 16 | `theorem` | [debt_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/debt-succ--a2cb9dfc0c2d05425baf8fe3.md) | 92 | `result-track:a2cb9dfc0c2d05425baf8fe35135a6c608e765a3bb59fb514c48d9ad8f6172b6` |
| 17 | `theorem` | [count_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/count-zero--b58b5520e5d1ff61618d3f9e.md) | 94 | `result-track:b58b5520e5d1ff61618d3f9edebb8745b2880cfadc042e357516639ed2b32bb0` |
| 18 | `theorem` | [count_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/count-succ--529f0aea61b864d5e49d1a68.md) | 95 | `result-track:529f0aea61b864d5e49d1a68e702da3a775cbcb38d0502d7ab324e7dcd235d3f` |
| 19 | `theorem` | [debt_invariant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/debt-invariant--1fe947ff9fc49b27e83f8d8b.md) | 98 | `result-track:1fe947ff9fc49b27e83f8d8bbb0363e0c28990598d03de74ef295126ae51772c` |
| 20 | `theorem` | [debt_accounting](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/debt-accounting--96827fe6b0ba3f09f59512f9.md) | 107 | `result-track:96827fe6b0ba3f09f59512f99d711fba23fcc71f9c97c10039e29aecb2cfc856` |
| 21 | `theorem` | [service_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/service-bound--c12e202a53c25923f8af3f0a.md) | 118 | `result-track:c12e202a53c25923f8af3f0ad05523d08db1fd8f40bd32749172b6c7d0333a7d` |
| 22 | `theorem` | [no_starvation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy__SourceOccurrence3d180443656bc0c5a13b8b2a.lean/declarations/no-starvation--7ae21290be5e8843a60e116f.md) | 133 | `result-track:7ae21290be5e8843a60e116f8d32809ea7830e9d527dc4530f5dd431fdab126c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
