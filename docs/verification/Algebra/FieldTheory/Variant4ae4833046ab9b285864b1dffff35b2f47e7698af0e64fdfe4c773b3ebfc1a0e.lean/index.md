# Verification target: GRWTSK.Algebra.Field.Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ef4a50a74def4f464062a9072a2cabc5afefd8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ef4a50a74def4f464062a9072a2cabc5afefd8`.

Source path: `GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Taylor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Finite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/of-isseparable--65dc66b434fc9e1cd18ab105.md) | 50 | `result-track:65dc66b434fc9e1cd18ab10519011c0d705292bb179c8cb51e091a65efa9bb4e` |
| 2 | `theorem` | [bijective_of_isAlgClosed_of_isLocalRing](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/bijective-of-isalgclosed-of-islocalring--afc5fdbb5aaf8f33cac69427.md) | 67 | `result-track:afc5fdbb5aaf8f33cac69427f08da526cd83bf4c7d038407039fbffb111f376b` |
| 3 | `theorem` | [isField_of_isAlgClosed_of_isLocalRing](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/isfield-of-isalgclosed-of-islocalring--a951f28154952896cad9de2e.md) | 117 | `result-track:a951f28154952896cad9de2e4f3e7fe47c69e3df6fd6080d3ff91e0139a22a82` |
| 4 | `theorem` | [isReduced_of_field](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/isreduced-of-field--d94b60eab5eab99cd89a1c0d.md) | 135 | `result-track:d94b60eab5eab99cd89a1c0d60daffe099578394ddf821ab998177cd5c31cc37` |
| 5 | `theorem` | [range_eq_top_of_isPurelyInseparable](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/range-eq-top-of-ispurelyinseparable--6fef497d868c9d0261b28add.md) | 166 | `result-track:6fef497d868c9d0261b28add5ea19ace94105a05958073161082eb2cd53f39e5` |
| 6 | `theorem` | [isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/isseparable--6c52da0e98dbf7738d4c3a09.md) | 212 | `result-track:6c52da0e98dbf7738d4c3a0988cabbfde96d950806fa28ac4d1379ab667dfa56` |
| 7 | `theorem` | [iff_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/declarations/iff-isseparable--f6269b2a4e99ba795820358e.md) | 222 | `result-track:f6269b2a4e99ba795820358e941bd15213d2098d1577d96516dd5c1341915f16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
