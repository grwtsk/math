# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99c52e87c4253f424c7a6b3b89f537afef96371d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99c52e87c4253f424c7a6b3b89f537afef96371d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Util` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/declarations/syntax--0bd0f330db68bebd2752a5e5.md) | 45 | `declaration-track:0bd0f330db68bebd2752a5e5797acf82d06d0fe9c8b5fa7a2b4b71154a818bb2` |
| 2 | `def` | [lctxIsDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/declarations/lctxisdefeq--de231e6954ce6a0444c520e6.md) | 53 | `declaration-track:de231e6954ce6a0444c520e6b5db12849971843c89d405b16f005f68298fda80` |
| 3 | `def` | [runAndFailIfNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/declarations/runandfailifnoprogress--fb50f4014387301e006afffd.md) | 72 | `declaration-track:fb50f4014387301e006afffdda075368ef8b8d472c78003d3bea22723d6ed85d` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variante73eea6003666ba5a9aafa6b714882851a1ca504a19d80906e8f0cc0e408cdf9.lean/declarations/elab-rules--4bd61fe8fbd39709402e7860.md) | 87 | `declaration-track:4bd61fe8fbd39709402e7860af9327c5f663efe6954ca34d344c45d3764bf8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
