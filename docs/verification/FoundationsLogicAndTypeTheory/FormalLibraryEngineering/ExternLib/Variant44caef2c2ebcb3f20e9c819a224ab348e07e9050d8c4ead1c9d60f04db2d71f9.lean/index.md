# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExternLib.Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5096b9bdf9f5882b69c4bc4544cd52e5fbfb6b47",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5096b9bdf9f5882b69c4bc4544cd52e5fbfb6b47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Job.Register` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Build.Common` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Build.Infos` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExternLib.recBuildStatic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-recbuildstatic--c1488870a14a9cce18c4afb0.md) | 23 | `declaration-track:c1488870a14a9cce18c4afb043bcdfc2e0696fb56b4703843171116e92a6e65d` |
| 2 | `def` | [ExternLib.staticFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-staticfacetconfig--403d09b334bf6181a577906c.md) | 28 | `declaration-track:403d09b334bf6181a577906cfdd86c0804a88d826b0d06c8dab18490839e4edd` |
| 3 | `def` | [buildLeanSharedLibOfStatic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/buildleansharedlibofstatic--7c995f58fc8eb234f0341d9c.md) | 35 | `declaration-track:7c995f58fc8eb234f0341d9ca77fcb4ce48f3ae9397444da0b791e7a4f45eb4a` |
| 4 | `def` | [ExternLib.recBuildShared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-recbuildshared--01d8e9e58bfd1394608215a4.md) | 56 | `declaration-track:01d8e9e58bfd1394608215a45244f694f28cab81b865c493d6f83e4f8f5d1a8f` |
| 5 | `def` | [ExternLib.sharedFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-sharedfacetconfig--bdae33298ee9395f1c437ce6.md) | 61 | `declaration-track:bdae33298ee9395f1c437ce624ce517b74d52bdd54f4909ef29ed16c046a4c0e` |
| 6 | `def` | [computeDynlibOfShared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/computedynlibofshared--73e1cab68f37d55fd12ef240.md) | 65 | `declaration-track:73e1cab68f37d55fd12ef2403db5eda232745e82b583ebf848d95867d358f2e1` |
| 7 | `def` | [ExternLib.recComputeDynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-reccomputedynlib--c64e6bb7dc9d6bd62b0b78d3.md) | 77 | `declaration-track:c64e6bb7dc9d6bd62b0b78d370038f74cb901d8f4ebf092cb3faff7bb0ce53cb` |
| 8 | `def` | [ExternLib.dynlibFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-dynlibfacetconfig--129ba6e73d33e1fd2cb257c2.md) | 82 | `declaration-track:129ba6e73d33e1fd2cb257c2f459f7fd860d2e23e0962fa674d6c2b7f0342398` |
| 9 | `def` | [ExternLib.recBuildDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-recbuilddefault--770c6d8f320fe8907865383f.md) | 85 | `declaration-track:770c6d8f320fe8907865383fb08c6df1c7d4ee27490d43d22f0526dcf5584715` |
| 10 | `def` | [ExternLib.defaultFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-defaultfacetconfig--0f33b03df4532afa67e11121.md) | 89 | `declaration-track:0f33b03df4532afa67e11121030c81492f4c32b4ea594c05ffe940a87dba1abe` |
| 11 | `def` | [ExternLib.initFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternLib/Variant44caef2c2ebcb3f20e9c819a224ab348e07e9050d8c4ead1c9d60f04db2d71f9.lean/declarations/externlib-initfacetconfigs--ee099e2033166f35ff7fe2f8.md) | 96 | `declaration-track:ee099e2033166f35ff7fe2f8c83d4f3e200573d6ba4653d37ccb288af80d4b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
