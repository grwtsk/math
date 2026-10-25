# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEncodable.Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d2fe222293987a501fd97c76eca047a50ca9d1c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d2fe222293987a501fd97c76eca047a50ca9d1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Transform` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Inductive` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Encodable.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/s--4c50868bc1aa9fe1ec802365.md) | 74 | `declaration-track:4c50868bc1aa9fe1ec802365f675f92977a6e95d0b25024cb1944e932a0073d2` |
| 2 | `def` | [S.encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/s-encode--faa5d0522228b1bb5a9e4d96.md) | 78 | `declaration-track:faa5d0522228b1bb5a9e4d9688cafabca6237d53250b80944a2c03966b1e71e4` |
| 3 | `lemma` | [nat_unpair_lt_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/nat-unpair-lt-2--9ced42280982f5480f9d368f.md) | 82 | `result-track:9ced42280982f5480f9d368fecf9da55d25581f6c6ae079d98ab4d391b8bebb6` |
| 4 | `def` | [S.decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/s-decode--487eafb62187643a6b1e7b81.md) | 90 | `declaration-track:487eafb62187643a6b1e7b816f9a4265addb2d953eaa51d291b280fbf697c77a` |
| 5 | `def` | [S_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/s-equiv--8631c38e4662c2ce4a3af7f3.md) | 100 | `declaration-track:8631c38e4662c2ce4a3af7f3eaad76ffa1064220801e5217a8f888475dc924b1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/instance--14003ce4e681fb6f3b2972d4.md) | 129 | `declaration-track:14003ce4e681fb6f3b2972d4207b329498ba0879d8bf88eaa2f71ab711c44e08` |
| 7 | `def` | [mkToSMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mktosmatch--82eedebafee1b2a80c11424b.md) | 139 | `declaration-track:82eedebafee1b2a80c11424be9bc7eedf1ebfc1df2510ecd64e99a2bf8ae15fc` |
| 8 | `def` | [mkToSFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mktosfuns--b9bbef7e9afe6f14050dc58e.md) | 175 | `declaration-track:b9bbef7e9afe6f14050dc58e0961c6e10310d0616f9e20f99aca663c898f9f34` |
| 9 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/anonymous--1f53bc219f5f45dcc6f66f8b.md) | 184 | `declaration-track:1f53bc219f5f45dcc6f66f8bedd9714f9ab2216e7857f17b13098977f4dab732` |
| 10 | `def` | [mkFromSMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkfromsmatch--4aa50a53d1111a8a6814bc91.md) | 193 | `declaration-track:4aa50a53d1111a8a6814bc91550f6bd932c482ea810a7d5c26941b7741237dd1` |
| 11 | `def` | [mkFromSFuns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkfromsfuns--35ca901a56462a5315cdc1ff.md) | 243 | `declaration-track:35ca901a56462a5315cdc1ffb74d594a5e4497a0261d18b6aac032cfa2c3cc57` |
| 12 | `def` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/anonymous--3240057ce543809b4b0256cf.md) | 254 | `declaration-track:3240057ce543809b4b0256cfc060b49b37210a019343699413f7a04c2c010030` |
| 13 | `def` | [mkInjThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkinjthms--e7947f9a3726f484beb61fed.md) | 267 | `declaration-track:e7947f9a3726f484beb61fedbc9d29b614d65201260f1d5089cfdc786e7bc95c` |
| 14 | `theorem` | [$](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/anonymous--4f8f6278504b49077eb8c922.md) | 287 | `result-track:4f8f6278504b49077eb8c9226b101aef328dcc2bd71268cfa2e30437a560adc5` |
| 15 | `def` | [mkEncodableInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkencodableinstancecmds--fed55e8f751d3c7abe950be4.md) | 299 | `declaration-track:fed55e8f751d3c7abe950be49c7d30e5fdcad34206c4c425aabc00e55293bc41` |
| 16 | `instance` | [$binders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/binders--a46fa9f310de174e88578e7b.md) | 315 | `declaration-track:a46fa9f310de174e88578e7b8cf373370c4b14218bb513003bd4cfadb584d1f5` |
| 17 | `def` | [mkEncodableCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkencodablecmds--e83278f3bc5b21ee5416fb12.md) | 321 | `declaration-track:e83278f3bc5b21ee5416fb12a04c7c14d02cef2845b58ea3e8cc62144027fbcc` |
| 18 | `def` | [mkEncodableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/mkencodableinstance--60e834324c9462ef5f5cc3a7.md) | 346 | `declaration-track:60e834324c9462ef5f5cc3a7f44cd5923c5bb247221b0152f194af3bbca2b81f` |
| 19 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant0eccaf3087d1ca760b5ab5b1c51b044e73250f971b0dae3624489bd647e7051a.lean/declarations/initialize--f7e9a76ab7278d99191f32f0.md) | 362 | `declaration-track:f7e9a76ab7278d99191f32f07781d6a119174434aa04d1548a3e4aee56084245` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
