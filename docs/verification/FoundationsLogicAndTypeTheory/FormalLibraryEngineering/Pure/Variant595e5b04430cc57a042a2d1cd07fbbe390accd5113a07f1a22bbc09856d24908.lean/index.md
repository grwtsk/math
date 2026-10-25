# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pure.Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5adbbbf1efe8de6034819a94620720db94d1b9a2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5adbbbf1efe8de6034819a94620720db94d1b9a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Meta` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Focus` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rfl` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mPureCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/mpurecore--206aa1eda5095b3ac590f6ae.md) | 26 | `declaration-track:206aa1eda5095b3ac590f6aeffe9d94e594e56f4e8141dd8d2530b7e16b632da` |
| 2 | `def` | [elabMPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/elabmpure--454e207bae1d7c6774f744e5.md) | 43 | `declaration-track:454e207bae1d7c6774f744e5508c630734536f3596ad8d17d3f7484744e40ae2` |
| 3 | `def` | [mPureIntroCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/mpureintrocore--39889303eaab2b9b14f8daaa.md) | 62 | `declaration-track:39889303eaab2b9b14f8daaa21cee15a15ba833f30eb39b9a9e9f550ba5a19bb` |
| 4 | `def` | [elabMPureIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/elabmpureintro--fcaa423e090a2088f8da0aea.md) | 72 | `declaration-track:fcaa423e090a2088f8da0aea3550219b032f516d4763356563a015c796499b38` |
| 5 | `def` | [extractPureProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/extractpureprop--b7c25925246bd8ee36bc4d0c.md) | 83 | `declaration-track:b7c25925246bd8ee36bc4d0cda6d2e16e49cb05b1d1e1f0ae3015eb84e3fa7fa` |
| 6 | `def` | [_root_.Lean.MVarId.applyRflAndAndIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/root-lean-mvarid-applyrflandandintro--8d39a7cc3d16a1655a7e74d2.md) | 96 | `declaration-track:8d39a7cc3d16a1655a7e74d2c3e6ab12d5e169dd5d972d5e47c49b6159a1ca3a` |
| 7 | `def` | [MGoal.pureRflAndAndIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/mgoal-purerflandandintro--8b5d5f919754308f38e39b36.md) | 116 | `declaration-track:8b5d5f919754308f38e39b366c09a359a4204f08f752757e3b0f13683cc223eb` |
| 8 | `def` | [MGoal.pureTrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.lean/declarations/mgoal-puretrivial--772c23c984bc403c09a009cc.md) | 128 | `declaration-track:772c23c984bc403c09a009cca7fd29073fc99a6ad0315237016835b7a02c88ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
