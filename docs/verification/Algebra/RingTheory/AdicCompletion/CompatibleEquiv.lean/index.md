# Verification target: GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "870781fb5cf7b4db85f583d8d8f17032d6e0dd12",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `870781fb5cf7b4db85f583d8d8f17032d6e0dd12`.

Source path: `GRWTSK/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Algebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_transition](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/eval-transition--bf4b7cb697abe66c00bad88a.md) | 23 | `result-track:bf4b7cb697abe66c00bad88a14c6c3b86629010551fc7d7296fa96fbf51fb8b6` |
| 2 | `def` | [Compatible](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/compatible--4e0c95f430e60d1dc3260651.md) | 31 | `declaration-track:4e0c95f430e60d1dc3260651f62a0fc9e5f5768e6455a1c374c0c2f3264a7862` |
| 3 | `def` | [stage](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/stage--519d5437d75a29ec2507e9ac.md) | 37 | `declaration-track:519d5437d75a29ec2507e9ac6ac494b9ad0fb549796a81dc2a3a1c3992c4ed4e` |
| 4 | `theorem` | [stage_compatible](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/stage-compatible--7e32b069d0c67cec1ce1d8d6.md) | 42 | `result-track:7e32b069d0c67cec1ce1d8d664ecbb5745f4f468449558abf50e69e1b18b0b6e` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/lift--35964acff57987eb8d8b9e9c.md) | 52 | `declaration-track:35964acff57987eb8d8b9e9cde224b1719c37f4ba0ba7f2b24549cb757f6046c` |
| 6 | `theorem` | [lift_projection](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/lift-projection--ba698e53ce2468115583a2de.md) | 58 | `result-track:ba698e53ce2468115583a2def82deb99eb0f7f093ab99e3377a749e50fd1a196` |
| 7 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/lift-unique--760219ac4dd365854e2ba394.md) | 65 | `result-track:760219ac4dd365854e2ba394962b6faeb7230f250e8b2f400822f3448034a32f` |
| 8 | `theorem` | [compatible_symm](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/compatible-symm--c42042ae290530ca975b2e6d.md) | 77 | `result-track:c42042ae290530ca975b2e6d11dfc329c9ef5ab0f23ead452115e71c3c3d87e7` |
| 9 | `def` | [equivalence](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/equivalence--68acf3cda982f07e40eb80d5.md) | 90 | `declaration-track:68acf3cda982f07e40eb80d5cb4b21d51834b6098efc4624fff3f2990ff243e8` |
| 10 | `theorem` | [equivalence_projection](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/equivalence-projection--dc74b9f69473f77e701edda1.md) | 108 | `result-track:dc74b9f69473f77e701edda18603b4b4e87542e995ed03c0a8d65220640e5f6d` |
| 11 | `theorem` | [equivalence_symm_projection](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/equivalence-symm-projection--17b4e7ac00aa1fdb8cdb20bd.md) | 113 | `result-track:17b4e7ac00aa1fdb8cdb20bdbafb9bd5b298c730aaa55d469a254500450de859` |
| 12 | `theorem` | [congruence_iff](../../../../../mathematics/Algebra/RingTheory/AdicCompletion/CompatibleEquiv.lean/declarations/congruence-iff--8f09c3d4c4ba70a328581de8.md) | 120 | `result-track:8f09c3d4c4ba70a328581de8ea34406fa60eac6688b4646cc087a44c1e2c1760` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
