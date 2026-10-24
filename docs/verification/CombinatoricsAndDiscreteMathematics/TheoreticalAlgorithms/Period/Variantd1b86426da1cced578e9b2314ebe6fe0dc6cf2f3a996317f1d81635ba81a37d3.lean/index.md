# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Period.Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d139a4e08335791b44f36377d19536a2520f3ed",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d139a4e08335791b44f36377d19536a2520f3ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Pisano.Defs` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findPeriodAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/findperiodaux--fbaee6af26329a32cec389b4.md) | 28 | `declaration-track:fbaee6af26329a32cec389b4a5a43e2345e20262077b3c7755d16104a55d3da6` |
| 2 | `def` | [findPisanoPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/findpisanoperiod--6c994a267487340c7f51922e.md) | 40 | `declaration-track:6c994a267487340c7f51922ec9d6fd9f9c483f5c0a04765e4cdef5566504839e` |
| 3 | `def` | [checkPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/checkperiod--17648048170392ba5fd9e902.md) | 48 | `declaration-track:17648048170392ba5fd9e902fc40246f6d0adf39ed8586ff18fe8cc78e4f265e` |
| 4 | `def` | [checkPisanoPeriod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/checkpisanoperiod--4e04adad997f1aefc0d8c5e4.md) | 56 | `declaration-track:4e04adad997f1aefc0d8c5e4e21b040cdf04a723b4fae3a5897ae06d0553bb37` |
| 5 | `def` | [primeFactors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/primefactors--76f4d6866cc17cc8da882ed0.md) | 67 | `declaration-track:76f4d6866cc17cc8da882ed0f5aed4533724237a7e6b537b249195d1a6b5262f` |
| 6 | `def` | [listLcm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/listlcm--1b864ab2528b0faefb71be35.md) | 82 | `declaration-track:1b864ab2528b0faefb71be3568d847dbf331c1b74038badcc5ba22dce519f096` |
| 7 | `def` | [checkPisanoFixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/checkpisanofixedpoint--75486df989eba17c60146177.md) | 88 | `declaration-track:75486df989eba17c601461776add7e4728eca8f8ba6ac3b68b5ed3a726363d6f` |
| 8 | `def` | [findPisanoFixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Period/Variantd1b86426da1cced578e9b2314ebe6fe0dc6cf2f3a996317f1d81635ba81a37d3.lean/declarations/findpisanofixedpoints--62c66ad4c5442f7f2ff283c6.md) | 94 | `declaration-track:62c66ad4c5442f7f2ff283c6d83e8b1627c1e21c4d681312cb9193472beac0f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
