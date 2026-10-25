# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b425a6b62b7f2663cafb89d605b1f8bb59ed9a5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b425a6b62b7f2663cafb89d605b1f8bb59ed9a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.NormCast.Ext` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SudoSetOption` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Simp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/initialize--7c74d36d4e8d3706eaccbb08.md) | 20 | `declaration-track:7c74d36d4e8d3706eaccbb08ff4209a15f7cd39eb4961fc431e2d798380093e5` |
| 2 | `def` | [proveEqUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/proveequsing--4b18ca4e86c4f43fc1ac7653.md) | 23 | `declaration-track:4b18ca4e86c4f43fc1ac765343d9280d0909e0a9130f1ade8f39fcb189fc18ae` |
| 3 | `def` | [proveEqUsingDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/proveequsingdown--e9f440bf09ad89f0411872f7.md) | 34 | `declaration-track:e9f440bf09ad89f0411872f7c90ddd46dc9c50249a653c736356b55e83af8a54` |
| 4 | `def` | [mkCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/mkcoe--e5456000b259873fcb58d727.md) | 38 | `declaration-track:e5456000b259873fcb58d7278471865d10ca745906e61d37d941d3f01dd8dae7` |
| 5 | `def` | [isCoeOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/iscoeof--40a25222bea546f43df98532.md) | 42 | `declaration-track:40a25222bea546f43df985323ef532f5959bbb05674a4ee904c7e9f800bd482f` |
| 6 | `def` | [isNumeral?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/isnumeral--61d09f8b3fad4f5aaa4f4e4a.md) | 49 | `declaration-track:61d09f8b3fad4f5aaa4f4e4a2e63dd70ab29910a48f64a4d10610a1d46d8a0d6` |
| 7 | `def` | [splittingProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/splittingprocedure--d91a5f5f76b2d9e5d10b8da5.md) | 65 | `declaration-track:d91a5f5f76b2d9e5d10b8da5f28d5dc013a3e15383c235681b1faed370bb427f` |
| 8 | `def` | [prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/prove--30c676759858b427eb061802.md) | 117 | `declaration-track:30c676759858b427eb0618026e3a49b62107b506c8509799b138fde26e0d6eb9` |
| 9 | `def` | [upwardAndElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/upwardandelim--3e3e184e87114e7fe630a628.md) | 128 | `declaration-track:3e3e184e87114e7fe630a6281ebba3a7e46cd93de45fa99a82ad36de33dcb61c` |
| 10 | `def` | [numeralToCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/numeraltocoe--538767527f209957eb61b5d1.md) | 139 | `declaration-track:538767527f209957eb61b5d1ad6ebec352443cf725f0a02447ee2bc9168be2b0` |
| 11 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/derive--b3c460994f80fdf5e5e35008.md) | 149 | `declaration-track:b3c460994f80fdf5e5e35008d1a230ccb8c7eaed126689239e0bdded850a601d` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/elab--7578f80376fc6837757c97bc.md) | 186 | `declaration-track:7578f80376fc6837757c97bccd05d67312db1ca011a45a6f3edeb8d01247577a` |
| 13 | `def` | [normCastTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/normcasttarget--c67d3ed510b47ddde776e4f7.md) | 201 | `declaration-track:c67d3ed510b47ddde776e4f7c39b39b6ee13ae67570016ad36cb08b4a0fba178` |
| 14 | `def` | [normCastHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/normcasthyp--ded5be7f2fad9611c3d1b79d.md) | 207 | `declaration-track:ded5be7f2fad9611c3d1b79de5cbc89f0565deb8650e7405b91bf31e387c101e` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/elab--8c75f8d710da48dba0771132.md) | 213 | `declaration-track:8c75f8d710da48dba0771132ba7cfa76695aa2a04277bf18d3d7dbcd13510c4d` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/macro--99d99fd46b68f7c4d2685b19.md) | 225 | `declaration-track:99d99fd46b68f7c4d2685b19650e7c8b7cd4192effa1a811b15ec3c67ba0661d` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/macro--b37f8e54e3fd6711d1ecd4bd.md) | 230 | `declaration-track:b37f8e54e3fd6711d1ecd4bd1799aad1956fa91ec0ae3baadf978cab0e91ef5e` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/syntax--2aa353d2bf9660564446c4d6.md) | 236 | `declaration-track:2aa353d2bf9660564446c4d6b8675afd1fd6b0bc8282796fc5be606241ff15d3` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/macro-rules--10bc550ce242f31f97467c21.md) | 237 | `declaration-track:10bc550ce242f31f97467c21cbf6df760ac67fef8c6f84b3e45720045c31ad64` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/macro--795f935a46db9f3c6da55f30.md) | 246 | `declaration-track:795f935a46db9f3c6da55f3065524e5317b0da4f3b69c906632ae60978b0247a` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/macro--003b5e76f1442c258594426f.md) | 251 | `declaration-track:003b5e76f1442c258594426fe3c725105170de2923963984d173993066a83be1` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/syntax--cf1209e4dbf8e9bcbbaa10f4.md) | 253 | `declaration-track:cf1209e4dbf8e9bcbbaa10f4865a00d6f593ca249f8e6cac4ff8bace9393929a` |
| 23 | `def` | [evalConvNormCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/evalconvnormcast--8eb4055c31f1b51eae23c0e6.md) | 254 | `declaration-track:8eb4055c31f1b51eae23c0e6ff0aa07420a1a47ee1b1f86283165cd4bf936eec` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/syntax--9e1d96e3315403a9b05a6ad4.md) | 258 | `declaration-track:9e1d96e3315403a9b05a6ad47d71c0555b9d176fe83db65d1eed3c2e461c7b1a` |
| 25 | `def` | [evalPushCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/declarations/evalpushcast--1322b2b2295abff021a1f882.md) | 260 | `declaration-track:1322b2b2295abff021a1f882548f2096a345e872b625fe9f9704fd6fdc92740e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
