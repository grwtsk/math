# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PureCoherence.Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4b5364b4256732efe4d1c31ff7538d496cd5f6a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4b5364b4256732efe4d1c31ff7538d496cd5f6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Apply` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Normalize.Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/normalize-result--0e632e078056cf5283243317.md) | 35 | `declaration-track:0e632e078056cf5283243317198f5ba4ac491a071e0130a518c14a710f800f3b` |
| 2 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/normalize--d356a737eea9714c00e6dd80.md) | 47 | `declaration-track:d356a737eea9714c00e6dd8072cb08740f3ab5450260f09c7434841b4fbb2bc5` |
| 3 | `class` | [MonadNormalizeNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/monadnormalizenaturality--04db28bf660ed4829fdfb0f4.md) | 66 | `declaration-track:04db28bf660ed4829fdfb0f489930483f2f67d3cc5afef8cd84b5044d772e438` |
| 4 | `def` | [naturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/naturality--b0cd477136fcc95aa9ac8351.md) | 96 | `declaration-track:b0cd477136fcc95aa9ac8351f0acbff4f59f88b960557489f5340ce452ca7d87` |
| 5 | `class` | [MkEqOfNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/mkeqofnaturality--346a8312970fd45b80779eed.md) | 159 | `declaration-track:346a8312970fd45b80779eed2e843023f7971d1ca55487a8ba6bd75e7c36df07` |
| 6 | `def` | [pureCoherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/declarations/purecoherence--cf92f1062383bb8a245be29d.md) | 167 | `declaration-track:cf92f1062383bb8a245be29d1b186131b4cdca534fe8972e3f6b4d0af5a37e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
