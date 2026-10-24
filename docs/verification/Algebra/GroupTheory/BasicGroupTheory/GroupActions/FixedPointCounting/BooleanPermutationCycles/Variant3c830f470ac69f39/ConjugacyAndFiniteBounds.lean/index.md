# Verification target: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ConjugacyAndFiniteBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14cfa703b00e67ab58db2f5e2968bb2481875c8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/index.md) · [Full source](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14cfa703b00e67ab58db2f5e2968bb2481875c8`.

Source path: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.Symmetry` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Permutation` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 26; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ExactPeriodsAndCompleteCycles`](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean/index.md) — import line 28; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasExactPeriod_conjugate_iff](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/declarations/hasexactperiod-conjugate-iff--e583aa1f387a83a17210b46e.md) | 57 | `result-track:e583aa1f387a83a17210b46e1770164f5a6747dfacd02c6712eb7f8ae836ea54` |
| 2 | `theorem` | [exactPeriodCount_conjugate](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/declarations/exactperiodcount-conjugate--919bdcdd54dcdc33cb500efe.md) | 84 | `result-track:919bdcdd54dcdc33cb500efe56a2418f84af0c5c162a8551fe99530f1867f4ab` |
| 3 | `theorem` | [cycleCount_conjugate](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/declarations/cyclecount-conjugate--c6719c007ff75d86f7821f70.md) | 104 | `result-track:c6719c007ff75d86f7821f708497df2c6002002ecd80cd20fac79566d43cecb9` |
| 4 | `theorem` | [exactPeriodCount_le_stateCard](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/declarations/exactperiodcount-le-statecard--9171938b390fa060dbfe6620.md) | 110 | `result-track:9171938b390fa060dbfe6620df5d873ed9f5326af9b7bc1b9feb8c62f9cd1ea4` |
| 5 | `theorem` | [cycleCount_eq_zero_of_card_lt](../../../../../../../../../mathematics/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/declarations/cyclecount-eq-zero-of-card-lt--884e08b2810a60ed794d5fd3.md) | 121 | `result-track:884e08b2810a60ed794d5fd3de776a5456bc9604785e551a720b1d6ee9a01591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
