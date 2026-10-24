# Verification target: GRWTSK.Algebra.Absorption.Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b7262b71debd4a80c6d09cb1330d125c03006c2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/index.md) · [Full source](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b7262b71debd4a80c6d09cb1330d125c03006c2`.

Source path: `GRWTSK/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Identity` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [join_absorption](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/declarations/join-absorption--8c0310322695d8e240de5a96.md) | 14 | `result-track:8c0310322695d8e240de5a967c9c8c1b6567f8e7c45c9852bbc5636da6ef3b2e` |
| 2 | `theorem` | [meet_absorption](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/declarations/meet-absorption--b633f486a1620f47d8162ccf.md) | 17 | `result-track:b633f486a1620f47d8162ccf3b19adc3bce0acaf173b4a834478112200b35f5d` |
| 3 | `theorem` | [join_left_commutative](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/declarations/join-left-commutative--d5769a38378d53835163ab5f.md) | 20 | `result-track:d5769a38378d53835163ab5f7deec671075c042fca7294a2725bcb0905048cd7` |
| 4 | `theorem` | [meet_left_commutative](../../../../mathematics/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean/declarations/meet-left-commutative--6004961751c305da4e0ee311.md) | 24 | `result-track:6004961751c305da4e0ee311bcd8f8f0e1c86cad797bc9378547c6db005c4c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
