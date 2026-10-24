# Verification target: GRWTSK.Algebra.Positivity.Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b374dbc73ca8588d4d8fe4ade44f719c2b270a6d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/index.md) · [Full source](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b374dbc73ca8588d4d8fe4ade44f719c2b270a6d`.

Source path: `GRWTSK/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Cofinal` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticPositivityCriterion](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/declarations/arithmeticpositivitycriterion--5fb25e337dfe0ae6a6dc8d6f.md) | 14 | `declaration-track:5fb25e337dfe0ae6a6dc8d6f4cfccf53a94fd126678c53e6e99981a535aa3b31` |
| 2 | `structure` | [PositiveTraceAlgebra](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/declarations/positivetracealgebra--f5a1a90744f59a6275cd661d.md) | 25 | `declaration-track:f5a1a90744f59a6275cd661d5d4018aca5796063ebd39971e9e12f66af01a4c3` |
| 3 | `structure` | [TracePositivityFactorization](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/declarations/tracepositivityfactorization--168a10a2e6ea7f2fc3fec4af.md) | 35 | `declaration-track:168a10a2e6ea7f2fc3fec4af839fa5c42a5c1f5515c95370feeb40b48da5464a` |
| 4 | `theorem` | [tracePositivityFactorization_implies_RH](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/declarations/tracepositivityfactorization-implies-rh--4f56b660766ea7d08bcc9f64.md) | 52 | `result-track:4f56b660766ea7d08bcc9f64aa741c0e507a0bf8681954fe8e0c291ecc822c6d` |
| 5 | `theorem` | [exact_trace_factorization_implies_RH](../../../../mathematics/Algebra/Positivity/Variantce4ab4798f263ec6028a4e892eb32e355fcc68a870b9bfa69829339df15e6799.lean/declarations/exact-trace-factorization-implies-rh--126572c2bda81ef31825cc46.md) | 67 | `result-track:126572c2bda81ef31825cc46eb662d878d55d1064ba39002e0ccc73b67467aff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
