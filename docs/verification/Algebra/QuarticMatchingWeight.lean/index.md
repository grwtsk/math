# Verification target: GRWTSK.Algebra.QuarticMatchingWeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91555d571c84bba2c1ffc34b1a38d2f162570340",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticMatchingWeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticMatchingWeight.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticMatchingWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91555d571c84bba2c1ffc34b1a38d2f162570340`.

Source path: `GRWTSK/Algebra/QuarticMatchingWeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticMatchingWeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticMatchingAction`](../../../mathematics/Algebra/QuarticMatchingAction.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matchingWeight](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/matchingweight--bbb4c36acab568a23d88c5ec.md) | 23 | `declaration-track:bbb4c36acab568a23d88c5ec70403359b5770558ef74052f8d7c5952472fe073` |
| 2 | `theorem` | [matchingWeight_relabel](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/matchingweight-relabel--b58ea101c699445debb7cbc3.md) | 28 | `result-track:b58ea101c699445debb7cbc3396d8f076a37551e2988f173735ce16e991fafae` |
| 3 | `theorem` | [matchingWeight_first](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/matchingweight-first--7cce9202159baf4b40cd5058.md) | 44 | `result-track:7cce9202159baf4b40cd50589e1d5e8038289e56958c370c89ef4287cbf67aa0` |
| 4 | `theorem` | [matchingWeight_second](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/matchingweight-second--b365ac9aa1f1ee9ccd20ac5a.md) | 49 | `result-track:b365ac9aa1f1ee9ccd20ac5a3cc20a8dee9048706f485f3211deb0ec49632992` |
| 5 | `theorem` | [matchingWeight_third](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/matchingweight-third--f4e5c9d2bc1079e3b60700d2.md) | 54 | `result-track:f4e5c9d2bc1079e3b60700d28a422b8a4b80506d5cae7b27423ac293e0969ef2` |
| 6 | `theorem` | [actual_quartic_matching_weight_relabel](../../../mathematics/Algebra/QuarticMatchingWeight.lean/declarations/actual-quartic-matching-weight-relabel--989572529a3f4e460f96a076.md) | 63 | `result-track:989572529a3f4e460f96a076190e97d7a253b909ef4dd415686823de28ca939d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
