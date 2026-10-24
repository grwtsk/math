# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShiftedMatrixGuard.Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2947bdaaef467e3878d206108cba2e5e58497d3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2947bdaaef467e3878d206108cba2e5e58497d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted--56d7ea84cde3ae06dedee0f9.md) | 18 | `declaration-track:56d7ea84cde3ae06dedee0f943e624312ec34ed981f1836fe2f95d7e6bc85f70` |
| 2 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/bottom--3cbdce93adc8871f733ad238.md) | 21 | `declaration-track:3cbdce93adc8871f733ad238a7034a4fde2c523a90c0cc0e514dac68be00956a` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/bottom-le-eigenvalue--67fabb8209a8818b94a4092a.md) | 24 | `result-track:67fabb8209a8818b94a4092ad10a524ad838ebd4961aab06f1c3c0d93c0992b8` |
| 4 | `theorem` | [le_bottom_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/le-bottom-iff--2d255648d501f712c8e2b77e.md) | 28 | `result-track:2d255648d501f712c8e2b77ef25d5a052a1b340eea2d87b5bcb204dec7801b73` |
| 5 | `theorem` | [bottom_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/bottom-attained--c430753001b6d2fdc34e992e.md) | 32 | `result-track:c430753001b6d2fdc34e992e995a98870f23b1dd58408ec3ee3bcfdefc16681a` |
| 6 | `theorem` | [bottom_isLeast_real_spectrum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/bottom-isleast-real-spectrum--69bef31c9213cca30c6e5252.md) | 38 | `result-track:69bef31c9213cca30c6e52526914087f7b59931782be6ee348666da2c05ed45c` |
| 7 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/source-positive-iff-bottom-nonneg--a085c4e2b4ce6f812c2f5ba6.md) | 47 | `result-track:a085c4e2b4ce6f812c2f5ba6cc320f8bdf9649b9bb3a6f8a7b4cb5f1a5de509e` |
| 8 | `theorem` | [shifted_eq_spectral_conjugate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted-eq-spectral-conjugate--ee5aeff1fddc392437277195.md) | 52 | `result-track:ee5aeff1fddc3924372771953df8eb6fa36c8fc5181914857267609fcf007372` |
| 9 | `theorem` | [shifted_positive_of_le_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted-positive-of-le-bottom--c9cc776588c49fddd9b31591.md) | 65 | `result-track:c9cc776588c49fddd9b315919d8b058bbbbc7c6d27f2f654274580d01b1300b4` |
| 10 | `theorem` | [shifted_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted-positive-of-lt-bottom--f2307568e7bc1d3a9dfbfc16.md) | 74 | `result-track:f2307568e7bc1d3a9dfbfc168d84e92b32d6ae6ba922497bb2f241916cc8e47c` |
| 11 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted-strict-positive-of-lt-bottom--7fdd0a31492a958536dd8822.md) | 79 | `result-track:7fdd0a31492a958536dd8822ff56ee35d711e81c6c90b4852c06bb325cb52b1f` |
| 12 | `theorem` | [shifted_quadratic_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/shifted-quadratic-exact--069cd362449b5dc4777f232f.md) | 88 | `result-track:069cd362449b5dc4777f232f1d5aec1d48bcecf5a3884695eabadf970e18ab49` |
| 13 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift--761e8043b5c17829a24f1348.md) | 93 | `result-track:761e8043b5c17829a24f1348f4cab3711a06daa1a32a484d54310f5189498685` |
| 14 | `theorem` | [negative_one_shifted_by_negative_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/negative-one-shifted-by-negative-two--ca991c6ebf5051b7d1264198.md) | 102 | `result-track:ca991c6ebf5051b7d1264198caa45006e166af72d6a6b498a335150f4fc10aa9` |
| 15 | `theorem` | [negative_one_has_positive_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/negative-one-has-positive-shift--285ca612cf269a38d059963b.md) | 109 | `result-track:285ca612cf269a38d059963b245f32fd3ce777ebf40d88f5fda93ea8e5cb2fd4` |
| 16 | `theorem` | [negative_one_source_not_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/negative-one-source-not-positive--a722515a80176ae6b56a8082.md) | 115 | `result-track:a722515a80176ae6b56a80824a248f3bdf8fda3be96049f6dc9ec1a637f57a62` |
| 17 | `theorem` | [no_unconditional_shift_descent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/no-unconditional-shift-descent--58fbeada19999ea39c92b8e3.md) | 121 | `result-track:58fbeada19999ea39c92b8e3ad0290be998fd04b1849ceb37904761c10309485` |
| 18 | `theorem` | [conditional_form_shift_coercive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/conditional-form-shift-coercive--3a1283c752a9b07f2d257e13.md) | 128 | `result-track:3a1283c752a9b07f2d257e13f2787d4f144b379a2532833a3908b6337eef61f5` |
| 19 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuard/Variant835f1068e4d13c6f0dcd49b1f649745bef83ec11501bf2e96d19cbc7d16d2aae.lean/declarations/conditional-form-source-positive-of-nonnegative-shift--0b20336a5165f06f127baa52.md) | 136 | `result-track:0b20336a5165f06f127baa529b5e488a03bd4f627792659282e28badb968cddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
