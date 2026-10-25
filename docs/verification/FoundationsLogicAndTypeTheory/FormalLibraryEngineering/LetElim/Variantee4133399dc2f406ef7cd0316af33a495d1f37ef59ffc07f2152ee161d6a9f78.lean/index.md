# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LetElim.Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5d9400db164afad5c85b2d7561e285d293e1f24",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5d9400db164afad5c85b2d7561e285d293e1f24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Uses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/uses--3f8f201022aae47082f4042c.md) | 26 | `declaration-track:3f8f201022aae47082f4042cd1601134e1bdbd45fb52d67396eefb187be45bab` |
| 2 | `def` | [Uses.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/uses-add--16f4e56eeb3820566ff02eee.md) | 32 | `declaration-track:16f4e56eeb3820566ff02eeebee6c63cf4f5e537caa491245265d21f343f0794` |
| 3 | `def` | [Uses.toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/uses-tonat--16888c50b2183926abd57f0a.md) | 37 | `declaration-track:16888c50b2183926abd57f0adfb73fafc0a16c44c891bca5dedeb637f9d44fc8` |
| 4 | `def` | [Uses.fromNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/uses-fromnat--f422cf9967edd91b4da07840.md) | 42 | `declaration-track:f422cf9967edd91b4da07840a48e37e79355bcd5b0673a7b3db5679244df931f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/instance--4af51c01ad1ee72648f34c8d.md) | 47 | `declaration-track:4af51c01ad1ee72648f34c8dde9fca2b50602303bf2b4daf39de2325bbeb6e1b` |
| 6 | `abbrev` | [FVarUses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/fvaruses--b96de9cec9e59dd8d554f5e1.md) | 50 | `declaration-track:b96de9cec9e59dd8d554f5e169d5aeb963a186c4da753e20e91a118c7e1c7b39` |
| 7 | `def` | [FVarUses.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/fvaruses-add--57a15d29c2035b137b8cca25.md) | 52 | `declaration-track:57a15d29c2035b137b8cca257a2d091c1a565ab5865f25ea4b99c9efbfbea505` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/instance--75c02dcab3525e54d4f697b5.md) | 57 | `declaration-track:75c02dcab3525e54d4f697b56b453af31978f61105d38e2980dc6b6a6ed63f4b` |
| 9 | `inductive` | [BVarUses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/bvaruses--1a8fe22bb899fa3006b105c9.md) | 60 | `declaration-track:1a8fe22bb899fa3006b105c9afb8912b63f22b7ddb5d1036ca63e22339aec4a6` |
| 10 | `def` | [BVarUses.single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/bvaruses-single--8f54a95d7d700d8eb6636c52.md) | 64 | `declaration-track:8f54a95d7d700d8eb6636c52aa4b4445ab238d3d3c0e78091514265d29969d1d` |
| 11 | `def` | [BVarUses.pop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/bvaruses-pop--eb1d581427210fb4658140b5.md) | 68 | `declaration-track:eb1d581427210fb4658140b50882b8a68055a2505a65f6ce41ef10043ef5ff65` |
| 12 | `def` | [BVarUses.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/bvaruses-add--6a4549783a4317a542f0110a.md) | 72 | `declaration-track:6a4549783a4317a542f0110aa8dd926388189883840826125a40e3bd51ad43b9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/instance--78b4cc1ddbe84fc51c7cf5d9.md) | 77 | `declaration-track:78b4cc1ddbe84fc51c7cf5d92b985ea229f516eb5c53a647ee5dfb3449f65152` |
| 14 | `def` | [over1Of2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/over1of2--6a35000abd34fa24c989446f.md) | 80 | `declaration-track:6a35000abd34fa24c989446f1b2c71ec52f7d0cb18207df13594daee2e4ad23d` |
| 15 | `def` | [addMData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/addmdata--2d53f61615e261b18ea97dbf.md) | 82 | `declaration-track:2d53f61615e261b18ea97dbf77e3c2a52344e2c51b2f679e309a13cbf1fbea69` |
| 16 | `def` | [okToDup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/oktodup--203b7898805e9314a83ea780.md) | 86 | `declaration-track:203b7898805e9314a83ea78039b3f64c8c928aff19264ef2205e9c20dbe52829` |
| 17 | `def` | [countUsesDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/countusesdecl--48a42386ce9564ac1fb1fb84.md) | 96 | `declaration-track:48a42386ce9564ac1fb1fb8453143c9f853d5cc6d06c30a0ac55930e17ae1900` |
| 18 | `def` | [countUses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/countuses--d990ae90812f4ab00ff10b50.md) | 107 | `declaration-track:d990ae90812f4ab00ff10b5028a9b7628a80feb91b20f3245d477d719500a006` |
| 19 | `def` | [countUsesLCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/countuseslctx--880923e67d68cb4a0482af3f.md) | 140 | `declaration-track:880923e67d68cb4a0482af3ff1770c6b0be5084df66c8da8ddad7c373d8efa69` |
| 20 | `def` | [doNotDup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/donotdup--ac94a8064b25982ea9312f01.md) | 154 | `declaration-track:ac94a8064b25982ea9312f0181c1c221d99b9c5488cbb6d4d31c6e38304b7afd` |
| 21 | `def` | [elimLetsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/elimletscore--d89f5d5dd9742e5e6c62f3ab.md) | 157 | `declaration-track:d89f5d5dd9742e5e6c62f3ab6975a0e4f595ebd869030a959fc5e6e93f7d2b31` |
| 22 | `def` | [elimLets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variantee4133399dc2f406ef7cd0316af33a495d1f37ef59ffc07f2152ee161d6a9f78.lean/declarations/elimlets--43f29ba95ba035a95f896758.md) | 170 | `declaration-track:43f29ba95ba035a95f896758911a767930a6357a790b86a6a2403fd3b6bddea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
