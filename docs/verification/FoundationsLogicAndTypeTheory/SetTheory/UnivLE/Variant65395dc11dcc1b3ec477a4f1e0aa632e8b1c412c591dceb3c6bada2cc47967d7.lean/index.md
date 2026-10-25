# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UnivLE.Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7b6e46a34fcfe1ec4e7ac2b7532c42a207c1e7d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7b6e46a34fcfe1ec4e7ac2b7532c42a207c1e7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [univLE_iff_cardinal_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/declarations/univle-iff-cardinal-le--0f352ab8f3b23941dc8f9800.md) | 27 | `result-track:0f352ab8f3b23941dc8f9800e38ec6b1d85b6a928723c3f353ce4afa242bbd70` |
| 2 | `theorem` | [univLE_iff_exists_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/declarations/univle-iff-exists-embedding--61da27a405a4ff730818de11.md) | 37 | `result-track:61da27a405a4ff730818de115bc0165e44f63778902de5bac3dd8ff2367ac3eb` |
| 3 | `theorem` | [Ordinal.univLE_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/declarations/ordinal-univle-of-injective--5c679db0f8cc1920e77f975b.md) | 41 | `result-track:5c679db0f8cc1920e77f975bc9e85ec886008036a30c843fbfe43060a7edcf48` |
| 4 | `theorem` | [univLE_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UnivLE/Variant65395dc11dcc1b3ec477a4f1e0aa632e8b1c412c591dceb3c6bada2cc47967d7.lean/declarations/univle-total--cb4a5a51cbd10eccc36f2447.md) | 46 | `result-track:cb4a5a51cbd10eccc36f24476904badff7607e331ad8b6b52fffb85b6f85e3db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
