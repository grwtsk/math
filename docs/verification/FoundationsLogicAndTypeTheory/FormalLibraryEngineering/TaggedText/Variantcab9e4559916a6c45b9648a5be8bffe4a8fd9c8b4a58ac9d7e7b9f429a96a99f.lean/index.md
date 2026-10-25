# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TaggedText.Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b558bf91aaf06b7c2e52275d00a9510cd85608e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b558bf91aaf06b7c2e52275d00a9510cd85608e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.GetLit` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TaggedText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/taggedtext--41f2dcfad53d8cc330b95c8f.md) | 22 | `declaration-track:41f2dcfad53d8cc330b95c8fa78dc428780e465d3850513609e813b9f8f352ea` |
| 2 | `def` | [appendText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/appendtext--9bb67bcfef760865d08cfd8c.md) | 34 | `declaration-track:9bb67bcfef760865d08cfd8c9f039dc2282c304f7c0922db7fc92699421de795` |
| 3 | `def` | [appendTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/appendtag--533cbd914b87f9def31b06f4.md) | 41 | `declaration-track:533cbd914b87f9def31b06f45aec37883f2999915f1ae444322393baa81d0389` |
| 4 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/map--21064a33e3a6e1c2216509e8.md) | 48 | `declaration-track:21064a33e3a6e1c2216509e8a723dc22a09105e98753d2b936a7cc1947b98dd6` |
| 5 | `def` | [mapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/mapm--5d94ed9f960699399971e238.md) | 54 | `declaration-track:5d94ed9f960699399971e23835cf83fbb3849299941e929e1375980e3ed1bf44` |
| 6 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/form--592e9afa62c82346439d3470.md) | 60 | `declaration-track:592e9afa62c82346439d3470c05544fb628ec1b92ee6f74b1b2766e061ef9c98` |
| 7 | `def` | [rewrite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/rewrite--a7f50aae59e52c23d2cd9267.md) | 68 | `declaration-track:a7f50aae59e52c23d2cd9267da7652b352d042b53483cdaf62d0a7ae9accd9df` |
| 8 | `def` | [rewriteM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/rewritem--57218ee5e7114f327867be7d.md) | 75 | `declaration-track:57218ee5e7114f327867be7d3fb99c7857c6e41ed35adb58127d8067cd10a3b4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/instance--d17283d13ee65939cb36f2b0.md) | 80 | `declaration-track:d17283d13ee65939cb36f2b0e8ddf1f178a6e7627845ac0419d74c4a1b8573a7` |
| 10 | `structure` | [TaggedState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/taggedstate--fe02663ea5be14b6dba10207.md) | 84 | `declaration-track:fe02663ea5be14b6dba10207d19244facdf6c510aeb787ef0e45fb533e4341ec` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/instance--a397c3fdc34c26f81761536b.md) | 90 | `declaration-track:a397c3fdc34c26f81761536b48a597ea2259648a320e09b9fcd83639ab77802a` |
| 12 | `def` | [prettyTagged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/prettytagged--649a6e926a1eea9fdc1ab9b0.md) | 103 | `declaration-track:649a6e926a1eea9fdc1ab9b05d921ec177722c423d2f3c97ab6151e1b927a837` |
| 13 | `def` | [stripTags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaggedText/Variantcab9e4559916a6c45b9648a5be8bffe4a8fd9c8b4a58ac9d7e7b9f429a96a99f.lean/declarations/striptags--302d84bf7ae8d606b9122067.md) | 107 | `declaration-track:302d84bf7ae8d606b912206761b1fab97ac0ee24f43089258ea48dd35eed9c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
