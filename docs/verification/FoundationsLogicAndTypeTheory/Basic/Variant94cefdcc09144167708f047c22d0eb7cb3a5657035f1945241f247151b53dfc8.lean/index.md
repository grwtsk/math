# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9677d3cf28eb201301e6a71c19a9fa913a68e986",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9677d3cf28eb201301e6a71c19a9fa913a68e986`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_nat_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean/declarations/coe-nat-dvd--a2893d94548872dd5a48a938.md) | 21 | `result-track:a2893d94548872dd5a48a9387afd783b2cd4ebe6817b1e8b1df3a15392fec88f` |
| 2 | `theorem` | [coe_nat_dvd_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean/declarations/coe-nat-dvd-left--ab9e8a0dfe7908522fd98e77.md) | 33 | `result-track:ab9e8a0dfe7908522fd98e7736c9caade20ef1dd9ca198d7e23be05d20f9e547` |
| 3 | `theorem` | [coe_nat_dvd_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Basic/Variant94cefdcc09144167708f047c22d0eb7cb3a5657035f1945241f247151b53dfc8.lean/declarations/coe-nat-dvd-right--1fa3e4e4cb606abfac743940.md) | 37 | `result-track:1fa3e4e4cb606abfac743940637a58f3bfa5389e908f270ef8ec546e71bb0e6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
