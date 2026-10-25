# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DropWhile.Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5d316f2ee30f886e73b139de14674181443e42",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5d316f2ee30f886e73b139de14674181443e42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.Intermediate.dropWhileM_eq_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-intermediate-dropwhilem-eq-dropwhilewithpostcondition--98203c1aaca75f06de1558b2.md) | 26 | `result-track:98203c1aaca75f06de1558b2d9199c1705bf78d31625004c9772dab693f7a627` |
| 2 | `theorem` | [IterM.Intermediate.dropWhile_eq_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-intermediate-dropwhile-eq-dropwhilewithpostcondition--e66072eed3f08635d03f48e1.md) | 32 | `result-track:e66072eed3f08635d03f48e16eb259f364af944fa2e4b4bb8fa6620d20295a80` |
| 3 | `theorem` | [IterM.dropWhileWithPostcondition_eq_intermediateDropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-dropwhilewithpostcondition-eq-intermediatedropwhilewithpostconditi--50a1eb979b2395a86299dabb.md) | 38 | `result-track:50a1eb979b2395a86299dabbe332bc6a5ed9dd0c0466511a67f3d8ba84213db1` |
| 4 | `theorem` | [IterM.dropWhileM_eq_intermediateDropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-dropwhilem-eq-intermediatedropwhilem--18f50bc9436dff63569c3e5a.md) | 43 | `result-track:18f50bc9436dff63569c3e5aa39094fcccde82867ec288370a0d90f44c5804ad` |
| 5 | `theorem` | [IterM.dropWhile_eq_intermediateDropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-dropwhile-eq-intermediatedropwhile--63912f4824b12dcd762133bb.md) | 48 | `result-track:63912f4824b12dcd762133bb765a8349ab728d3f32e5efcff055803eecfae591` |
| 6 | `theorem` | [IterM.step_intermediateDropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-intermediatedropwhilewithpostcondition--45f71bfe12deb16e6884bbcc.md) | 53 | `result-track:45f71bfe12deb16e6884bbcce41ce7ea22e10d0862e6d3efcd753cfdd6290006` |
| 7 | `theorem` | [IterM.step_dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-dropwhilewithpostcondition--cfdc1e58f156f2cbec27553e.md) | 77 | `result-track:cfdc1e58f156f2cbec27553ec52b9146f70e13e7e3d702bbc9792edc1091aab0` |
| 8 | `theorem` | [IterM.step_intermediateDropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-intermediatedropwhilem--550127c719261c97bb2f4cd2.md) | 93 | `result-track:550127c719261c97bb2f4cd2ad2eca484952c74e0f5d67cf2c89f808580431c9` |
| 9 | `theorem` | [IterM.step_dropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-dropwhilem--947fa7ca8b99fd39f54eaec8.md) | 125 | `result-track:947fa7ca8b99fd39f54eaec8129b7ab9bc8c760dc5e56a093545213387d1e154` |
| 10 | `theorem` | [IterM.step_intermediateDropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-intermediatedropwhile--dc64dc564c049a4b2ac910b0.md) | 141 | `result-track:dc64dc564c049a4b2ac910b0bec3544245b2547d07f75f5a23e00a81f2c9759a` |
| 11 | `theorem` | [IterM.step_dropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant8b8b1161e5e4503976547db97d9a758b1696889294970213f0c3ed139f43d1a5.lean/declarations/iterm-step-dropwhile--7489c24f37228c7be46e8825.md) | 172 | `result-track:7489c24f37228c7be46e8825e497c3bfef1065cb38044b963f33fbc8651c5768` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
