# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MethodSpecs.Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aae45f490924943a461800c4e28908e49c40f94",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aae45f490924943a461800c4e28908e49c40f94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Structure` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MethodSpecTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/methodspectheorem--94b63b9ae14fdb2cd2406277.md) | 23 | `declaration-track:94b63b9ae14fdb2cd2406277e858f96a96b397c6ba4fe68c2aaffa3a95462da6` |
| 2 | `structure` | [MethodSpecsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/methodspecsinfo--e2d716cd139ccf97f69f5dcd.md) | 30 | `declaration-track:e2d716cd139ccf97f69f5dcdd518880acc93defd11400b484c189fba037e40e1` |
| 3 | `def` | [getMethodSpecsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/getmethodspecsinfo--f015d9caf7d9bab07c75da16.md) | 44 | `declaration-track:f015d9caf7d9bab07c75da1618c5e0fb1f5f5d52a5d962bf3b2b3de75fec0fe3` |
| 4 | `structure` | [MethodSpecsAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/methodspecsattrdata--5a57c4557e8f2dd442cd2392.md) | 97 | `declaration-track:5a57c4557e8f2dd442cd2392781a44c51947b929d9aebe2f70fe6baef1188f3e` |
| 5 | `def` | [getParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/getparam--e594f4791f361e0b75e52b94.md) | 103 | `declaration-track:e594f4791f361e0b75e52b94f6a237b4d222f1a06d0fc0ace5f1da868b9c2b7c` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/builtin-initialize--0069a5c2407039e875a977f0.md) | 123 | `declaration-track:0069a5c2407039e875a977f020f80d18d0026ee98e448520aa23ae3d3a1903f2` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/builtin-initialize--a0057503bc533bfc55dac40e.md) | 130 | `declaration-track:a0057503bc533bfc55dac40ebf463d5608a56cb9eb11233df5c18fec6389baca` |
| 8 | `def` | [mkSpecTheoremName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/mkspectheoremname--4e37d53a568d3edfc6acb717.md) | 134 | `declaration-track:4e37d53a568d3edfc6acb717db026147b923b42e95e4595107469ac94c17e423` |
| 9 | `def` | [startsWithFollowedByNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/startswithfollowedbynumber--8ce481c9190ff5e1e3ad316b.md) | 138 | `declaration-track:8ce481c9190ff5e1e3ad316b52d61e531e95bc1aa8f9ab886827c164e65254f9` |
| 10 | `def` | [isSpecThmLikeSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/isspecthmlikesuffix--e82bd96e2c250905adbef46b.md) | 141 | `declaration-track:e82bd96e2c250905adbef46b8c45dc8492421947e4e6781d77b1d8c5acdd2782` |
| 11 | `def` | [isSpecThmNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/isspecthmnamefor--2265072aa7376d97f954b96d.md) | 149 | `declaration-track:2265072aa7376d97f954b96d36039ac0bfe18d80c23e2d1899899d5b9f5bb111` |
| 12 | `def` | [rewriteThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/rewritethm--2dc971a55212128e959dfbb2.md) | 159 | `declaration-track:2dc971a55212128e959dfbb2bc37dcdcae4f21bd4ee47cee7b0238f61b518ee3` |
| 13 | `def` | [genSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/genspecs--7907ff9b71f9a71d34835d91.md) | 173 | `declaration-track:7907ff9b71f9a71d34835d9177af8a9c7c6650277e59ba54c56dff2458b9b637` |
| 14 | `def` | [getMethodSpecTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/getmethodspectheorem--6bf2354434b19207829ded8f.md) | 204 | `declaration-track:6bf2354434b19207829ded8f1593701058752a3cfb5b90d162f4914863f7a7a4` |
| 15 | `def` | [getMethodSpecTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/getmethodspectheorems--36fa0edeea99a5054519ae4d.md) | 210 | `declaration-track:36fa0edeea99a5054519ae4dcd56b16d83da75b8a1713366c62a14010e5734c3` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/builtin-initialize--286f87535781cf5261a53f49.md) | 228 | `declaration-track:286f87535781cf5261a53f49ce67506e80c0084b0bdfd3dc7254ccdff07a1441` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant61a8845a2fd2ff22de20b521fc1bf9986411c92f812dd35fc63e8cfd72ec59df.lean/declarations/builtin-initialize--0380b9a9eaf0fe367dc1a33f.md) | 238 | `declaration-track:0380b9a9eaf0fe367dc1a33f8761e4b326a934899be37a0895d8b72d52702207` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
