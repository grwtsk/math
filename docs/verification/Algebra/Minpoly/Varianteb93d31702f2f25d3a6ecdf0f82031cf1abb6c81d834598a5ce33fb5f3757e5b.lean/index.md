# Verification target: GRWTSK.Algebra.Minpoly.Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d3a5dfa1dfdc005003ee138dbceba2558550d9d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d3a5dfa1dfdc005003ee138dbceba2558550d9d`.

Source path: `GRWTSK/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_zero_minpoly](../../../../mathematics/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean/declarations/coeff-zero-minpoly--57aa67f3896cd94546c84300.md) | 42 | `result-track:57aa67f3896cd94546c843008e28860b9141b91a0c2a300972e17fbf98c8cea0` |
| 2 | `theorem` | [pow_coeff_zero_ne_zero_of_unit](../../../../mathematics/Algebra/Minpoly/Varianteb93d31702f2f25d3a6ecdf0f82031cf1abb6c81d834598a5ce33fb5f3757e5b.lean/declarations/pow-coeff-zero-ne-zero-of-unit--1670a4e0fb306bc5cfbcd804.md) | 50 | `result-track:1670a4e0fb306bc5cfbcd80499dd06663eb09d8b6cd8977a45f9d14d04d4d7af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
