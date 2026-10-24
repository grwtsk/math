# Verification target: GRWTSK.Algebra.Identity.Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1943cc99d3f21d803e78fae676a84c97d0e0f63",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/index.md) · [Full source](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1943cc99d3f21d803e78fae676a84c97d0e0f63`.

Source path: `GRWTSK/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Carrier` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bot_join](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/bot-join--00914d2c9983704193094d6d.md) | 22 | `result-track:00914d2c9983704193094d6d0a92e8e65c11d11a482ade934abf79421bcd892b` |
| 2 | `theorem` | [top_meet](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/top-meet--839dbc40b66fa6b096b260e0.md) | 23 | `result-track:839dbc40b66fa6b096b260e03fc4ce48fd1bbd10bc8e8100e3be19a10d4c6f13` |
| 3 | `theorem` | [complement_join](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/complement-join--a7b09a018acceb10aa3b1034.md) | 24 | `result-track:a7b09a018acceb10aa3b1034b9c1d701936259a0e6ff026348778b24cde336c9` |
| 4 | `theorem` | [complement_meet](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/complement-meet--34a886cdc7d868e85d7d5c35.md) | 25 | `result-track:34a886cdc7d868e85d7d5c352666703e6fa199eaf702bf1e697ae2d23dab298b` |
| 5 | `theorem` | [join_idempotent](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/join-idempotent--6e1a7c9a09b21984046a4602.md) | 26 | `result-track:6e1a7c9a09b21984046a460246381e91cd0ddebbc4cb28990e55f2f5659d4e7b` |
| 6 | `theorem` | [meet_idempotent](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/meet-idempotent--e370b0eee9367264b4c2f3fc.md) | 27 | `result-track:e370b0eee9367264b4c2f3fc8f032716da2e264e4b0044d46f77b04dcce36aa9` |
| 7 | `theorem` | [join_top](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/join-top--f8371210543c610e17fcb7a0.md) | 28 | `result-track:f8371210543c610e17fcb7a0850ed0ba12c039ac137182a42428e18c0693c5bf` |
| 8 | `theorem` | [top_join](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/top-join--be431cba5595842b9a337d6b.md) | 29 | `result-track:be431cba5595842b9a337d6bb634d13f481ab6c904101c852820c09ef6620b4b` |
| 9 | `theorem` | [meet_bot](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/meet-bot--87e95be37df49adc82a7c3e9.md) | 30 | `result-track:87e95be37df49adc82a7c3e9b5d78099023c8774538df0b7a0d61ae60d9ca6d3` |
| 10 | `theorem` | [bot_meet](../../../../mathematics/Algebra/Identity/Variant0a88d16441ef2b8117dcfbf079d3a3df454b6a506f45b4dba27df7d19e86d327.lean/declarations/bot-meet--f572ae01b0747e2facb2f934.md) | 31 | `result-track:f572ae01b0747e2facb2f9345d5d75260c9af0060b8ad187897ef7777e039ef5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
