# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Saturate.Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569dec7e06c03250bc6924a80077271f9e591b87",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569dec7e06c03250bc6924a80077271f9e591b87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Forward.State.Initial` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.RuleTac` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Aesop.Script.Check` — import line 18; external provider; requires a separately pinned dependency.
- `Batteries.Data.BinomialHeap.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isForwardOrDestructRuleName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/isforwardordestructrulename--bb94ad9d1161222cf2654005.md) | 31 | `declaration-track:bb94ad9d1161222cf2654005590392ac01a0fdef044b51e85359e0cb2cd9c775` |
| 2 | `structure` | [SaturateM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatem-context--911ac659f35e487a490aff60.md) | 34 | `declaration-track:911ac659f35e487a490aff60646b30cd67d699e5d7fde08a474a3a20da425bbd` |
| 3 | `abbrev` | [SaturateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatem--07266e053d51bccdfd3968fc.md) | 38 | `declaration-track:07266e053d51bccdfd3968fc8fb6beab0e579febfafc5f99cb3c7291066632f5` |
| 4 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/run--501bde52e673df720f0f5655.md) | 42 | `declaration-track:501bde52e673df720f0f56556d188a92cc9cc5716feeecc7606b88f1484c4f2d` |
| 5 | `def` | [getSingleGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/getsinglegoal--51b069592e97dcc77564e735.md) | 48 | `declaration-track:51b069592e97dcc77564e7350493b1b53a65330c0a4f3f8af1136041631c71ff` |
| 6 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/initialize--481607904c65a4deb55def4f.md) | 56 | `declaration-track:481607904c65a4deb55def4ff1df49f236a138d9d9f7d5552b4598ba5cee6b1b` |
| 7 | `def` | [saturateCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatecore--2c0ad39e2fea5886d5d46f7f.md) | 59 | `declaration-track:2c0ad39e2fea5886d5d46f7f89f6fd28f1cd027a45187b52e80fc23f7abd51bc` |
| 8 | `abbrev` | [Queue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/queue--300c9bd05a58b04a42cee143.md) | 135 | `declaration-track:300c9bd05a58b04a42cee143c41efd9e9bb264c81bd4cc0a0acb1f616cc29a37` |
| 9 | `def` | [saturateCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatecore--607d35c5e112ab4ad736c644.md) | 137 | `declaration-track:607d35c5e112ab4ad736c644154f8c5fee2a867a9821523e3ea8c5dfcd30167d` |
| 10 | `def` | [saturateMain'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatemain--cdec9a786d45611aac0213ab.md) | 194 | `declaration-track:cdec9a786d45611aac0213abf4e8b2ff7acd590784d3a566d4cd17dd0a45e66e` |
| 11 | `def` | [saturateMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturatemain--508cddf721adcb7bfd3fad1c.md) | 221 | `declaration-track:508cddf721adcb7bfd3fad1cd44cfb42febfb91a7a7b9489d272d4cbf153634e` |
| 12 | `def` | [saturate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant61828f0b47f169f558d4f22c522a995071a4f8cd72797c78b1a8dd665ac21934.lean/declarations/saturate--0749e970bee2605e4cdd91d3.md) | 226 | `declaration-track:0749e970bee2605e4cdd91d35cb252803a88ae42fff19199e6d037bcf6798c6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
