# Verification target: GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7db4722763a5a84b4b31aba0bf60bc42575982e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/EvenIntegerWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7db4722763a5a84b4b31aba0bf60bc42575982e`.

Source path: `GRWTSK/Analysis/ErrorBounds/EvenIntegerWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/EvenIntegerWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Cast.Order` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [check](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/check--3ae63aeb3e2a8713fba42ccd.md) | 22 | `declaration-track:3ae63aeb3e2a8713fba42ccdce754c02bf3d4f7629e05f0265ed6569aee3c21a` |
| 2 | `theorem` | [check_sound](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/check-sound--238cd615ae10a4f68b8a6d89.md) | 26 | `result-track:238cd615ae10a4f68b8a6d894506b8df5b9c3ba813ee28621b8c74360464c271` |
| 3 | `theorem` | [zero_target](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/zero-target--300dcfc2423e1f8484dfb182.md) | 42 | `result-track:300dcfc2423e1f8484dfb182701627687d9ffaa7327e243a0cbc8863e1136355` |
| 4 | `theorem` | [enclosing_two](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/enclosing-two--77c7eec52a0bb3c4ce8f8c22.md) | 44 | `result-track:77c7eec52a0bb3c4ce8f8c22492110852fd5e10cfd7153d0aa7f08990467030e` |
| 5 | `theorem` | [adjacent_even_endpoints_rejected](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/adjacent-even-endpoints-rejected--ef7acd800c25ac2b49e12638.md) | 46 | `result-track:ef7acd800c25ac2b49e12638fea8c0ff22f338e7bd1b362420882e6945fbe1ff` |
| 6 | `theorem` | [reversed_or_wrong_target_rejected](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/reversed-or-wrong-target-rejected--3de07014409c3a7e68366dce.md) | 49 | `result-track:3de07014409c3a7e68366dcef39f78032acd9724902ff28d9a3675974208389a` |
| 7 | `theorem` | [window_without_parity_is_insufficient](../../../../mathematics/Analysis/ErrorBounds/EvenIntegerWindow.lean/declarations/window-without-parity-is-insufficient--bab5801b4cb2e1d4dcfd0030.md) | 53 | `result-track:bab5801b4cb2e1d4dcfd00300e059b31e35ce65d850757a14a99edd7192c5e92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
