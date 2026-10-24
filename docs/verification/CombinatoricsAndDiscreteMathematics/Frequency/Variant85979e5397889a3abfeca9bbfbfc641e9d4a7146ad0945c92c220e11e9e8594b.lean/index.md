# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Frequency.Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ed76d60b2b8621fec96a702b67273d09bb368c3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ed76d60b2b8621fec96a702b67273d09bb368c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Checker` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InvocationCut.frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/declarations/invocationcut-frequency--09ad1840618fdd00bae5c21b.md) | 24 | `declaration-track:09ad1840618fdd00bae5c21bc50b53bc390932bad9a1ba25deef07c1ba5003e9` |
| 2 | `theorem` | [InvocationCut.frequency_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/declarations/invocationcut-frequency-positive--3be238aa6ce462ca9de12506.md) | 34 | `result-track:3be238aa6ce462ca9de125067174e0ef217d62e59525b1f02917b58331e26b25` |
| 3 | `theorem` | [committed_event_replay_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/declarations/committed-event-replay-idempotent--f334e100d60c3e1d289799ef.md) | 48 | `result-track:f334e100d60c3e1d289799ef96baee26e5a19f198d5a9611cfa78fff9f713f70` |
| 4 | `structure` | [FrequencyWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/declarations/frequencyweight--bf0768104d345b7e68ff73db.md) | 56 | `declaration-track:bf0768104d345b7e68ff73dbad022a3b335072e5a0c11b095d614c0c24d46d18` |
| 5 | `def` | [totalFrequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant85979e5397889a3abfeca9bbfbfc641e9d4a7146ad0945c92c220e11e9e8594b.lean/declarations/totalfrequency--af5097b0cc5e1973c6702e35.md) | 62 | `declaration-track:af5097b0cc5e1973c6702e356bd87f5e29bfc3bffb4124cd160cbec8b695455c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
