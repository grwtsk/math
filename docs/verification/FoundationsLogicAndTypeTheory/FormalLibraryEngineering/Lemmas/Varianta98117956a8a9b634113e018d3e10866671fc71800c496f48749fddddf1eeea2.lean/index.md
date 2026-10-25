# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb934980c7b1248ace79bcef9756e8f0f32dabfb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb934980c7b1248ace79bcef9756e8f0f32dabfb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ToAdditive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_le_dite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/one-le-dite--f02f2842b1df0a4b0dc1b4d2.md) | 22 | `result-track:f02f2842b1df0a4b0dc1b4d253576906730113efaf82b7883918ef36d74a52a9` |
| 2 | `lemma` | [dite_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/dite-le-one--092d790820eedf584eddeef5.md) | 26 | `result-track:092d790820eedf584eddeef5b690fdf0012728beb8f8a91b731567501bfb14df` |
| 3 | `lemma` | [one_lt_dite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/one-lt-dite--ee535d26a2ab88194341f27c.md) | 30 | `result-track:ee535d26a2ab88194341f27c54642fb84977a428abb439af1227d59f8095f4bd` |
| 4 | `lemma` | [dite_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/dite-lt-one--85b01683b4833519af51cd51.md) | 34 | `result-track:85b01683b4833519af51cd51b1390ba642fbefa2878e64c6c57790cc75acdd09` |
| 5 | `lemma` | [one_le_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/one-le-ite--f0d82b666bac29fbb9738f40.md) | 43 | `result-track:f0d82b666bac29fbb9738f40e4f1e7eb82c0fc97f2979089073a63aeb632cd92` |
| 6 | `lemma` | [ite_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/ite-le-one--4b620e43169862d9f7a7eaa1.md) | 46 | `result-track:4b620e43169862d9f7a7eaa1fc34f901c81053ea62f1cb343db6baaca48e60ce` |
| 7 | `lemma` | [one_lt_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/one-lt-ite--f67a8787116f3e5b6d5fa52f.md) | 49 | `result-track:f67a8787116f3e5b6d5fa52fbecb07db2ca849a9062d48e25577a838d2013b68` |
| 8 | `lemma` | [ite_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Varianta98117956a8a9b634113e018d3e10866671fc71800c496f48749fddddf1eeea2.lean/declarations/ite-lt-one--91e086b34e5ce9ff93c9b55c.md) | 52 | `result-track:91e086b34e5ce9ff93c9b55c96d81e30f4aef4a1d992d6065672bd3eab840486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
