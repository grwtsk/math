# Verification target: GRWTSK.Algebra.InjSurj.Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "814da51a302b701d562a920370b6fb233fa370bb",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean/index.md) · [Full source](../../../../mathematics/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `814da51a302b701d562a920370b6fb233fa370bb`.

Source path: `GRWTSK/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOrderedRing](../../../../mathematics/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean/declarations/isorderedring--721a1b0bb7d018f288356f35.md) | 23 | `result-track:721a1b0bb7d018f288356f3517c8eb0c292d06f3c663a98ffa353ca763941e88` |
| 2 | `lemma` | [isStrictOrderedRing](../../../../mathematics/Algebra/InjSurj/Variantbae823ae2d6d17cc515844d0e392405a207419c404f52905d5bb6d604a9445a2.lean/declarations/isstrictorderedring--361ca455275acd377e34c61a.md) | 40 | `result-track:361ca455275acd377e34c61a63f6bd4cecc25a0d088d68ce7dae9b6d6cc06f36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
