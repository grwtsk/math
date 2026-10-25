# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunInfo.Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44ee46ca1761fba1e1d1380294b1762d8039ed49",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44ee46ca1761fba1e1d1380294b1762d8039ed49`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunInfoEnvCacheKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/funinfoenvcachekey--50d6eb37d1b1cc0e7ddc14bc.md) | 16 | `declaration-track:50d6eb37d1b1cc0e7ddc14bc80c046c321717dc3c404378322ac4404f5149427` |
| 2 | `def` | [checkFunInfoCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/checkfuninfocache--2a1859206c40e31e2f4b7135.md) | 22 | `declaration-track:2a1859206c40e31e2f4b7135bb9eb29f3be71e9388c67878a8702be553b05ce0` |
| 3 | `def` | [whenHasVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/whenhasvar--9255ca1ad966de6620f1630b.md) | 41 | `declaration-track:9255ca1ad966de6620f1630b7537c15c4395c0ace4ecfdb16afa6e12e627f590` |
| 4 | `def` | [collectDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/collectdeps--08320ea2043887e45f5f77bd.md) | 44 | `declaration-track:08320ea2043887e45f5f77bdd1ccde0db8ee0e7bbc6d1ea09afec9c789e3f71a` |
| 5 | `def` | [updateHasFwdDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/updatehasfwddeps--9d93f29e7a01da140f0b20f4.md) | 62 | `declaration-track:9d93f29e7a01da140f0b20f470b7ee8c85d7604115d129e19680c8aead4cf52d` |
| 6 | `def` | [getFunInfoAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/getfuninfoaux--2764328304e8c65d13be1ef0.md) | 75 | `declaration-track:2764328304e8c65d13be1ef0b03b28a136abd309e275587d8d5c5e64dde8050a` |
| 7 | `def` | [getFunInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/getfuninfo--e39d55833938e0f291243b5e.md) | 137 | `declaration-track:e39d55833938e0f291243b5e1ad9ff2f480a6adf9b035c358bbd2914205bcbd9` |
| 8 | `def` | [getFunInfoNArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/getfuninfonargs--db344507cc12098847ed4980.md) | 140 | `declaration-track:db344507cc12098847ed4980af81a538d7b24134d29d05db70bb4bdd81ab7851` |
| 9 | `def` | [FunInfo.getArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variant014a95c19bc0728176c34b594bd2691d1bfcd3631457be72a8f463ba7f6293b7.lean/declarations/funinfo-getarity--6da24b8903068389ab9a294f.md) | 143 | `declaration-track:6da24b8903068389ab9a294f3fbbc1c6f3e674fdd522221d833120b842b55c4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
