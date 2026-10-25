# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Precheck.Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15e3e0926454931f38a340e1ffacb9884bb82919",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15e3e0926454931f38a340e1ffacb9884bb82919`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DeprecatedSyntax` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Precheck.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheck-context--468ba3b7aee00de2cd7a01d3.md) | 26 | `declaration-track:468ba3b7aee00de2cd7a01d3d265c73b961cb7e50f481d29f4dcc63285109dc2` |
| 2 | `abbrev` | [PrecheckM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckm--56d0b38563f1541170181072.md) | 29 | `declaration-track:56d0b38563f15411701810724c84208cb4a444399ffbbf838593be72a8ea8104` |
| 3 | `abbrev` | [Precheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheck--ea2b6d178f129a80d5920de0.md) | 30 | `declaration-track:ea2b6d178f129a80d5920de0faf1409dced37703b9ba29b9560d57954df45ba9` |
| 4 | `def` | [withNewLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/withnewlocal--6229a4c5f548cc0cdc5acffc.md) | 32 | `declaration-track:6229a4c5f548cc0cdc5acffc4a5ae2a59c6ae3356e42e13e8c75fad5c28a2d23` |
| 5 | `def` | [withNewLocals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/withnewlocals--490d18b28e0201bb01ca21e8.md) | 35 | `declaration-track:490d18b28e0201bb01ca21e800bb6d081b5b8057fd87b9189d534b9cfb11a77d` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/builtin-initialize--e748c0a90d8e02911a914d81.md) | 59 | `declaration-track:e748c0a90d8e02911a914d81ecc29c577d6422e3850d0dfa821f7a36fa04b78e` |
| 7 | `def` | [precheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheck--c684a526c6e0769aabb64919.md) | 67 | `declaration-track:c684a526c6e0769aabb649199eef7feccf5a14a4a6a91820e7a35210dc6beb58` |
| 8 | `def` | [runPrecheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/runprecheck--50e6bfe97c4745cc5e407e50.md) | 99 | `declaration-track:50e6bfe97c4745cc5e407e50167761dfebc9b1b94be8b3bb02259cd2755d9bed` |
| 9 | `def` | [isSectionVariable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/issectionvariable--b272251749677ab91c559f21.md) | 104 | `declaration-track:b272251749677ab91c559f2123e2fcf6437978ffd3977204dc632c68ea129a09` |
| 10 | `def` | [precheckIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckident--b44b964d663e0fa7e48bf604.md) | 107 | `declaration-track:b44b964d663e0fa7e48bf604b7ace3a77487f661d86cc68eb5d3802435c84048` |
| 11 | `def` | [precheckApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckapp--8f39075075b402d0782805c5.md) | 134 | `declaration-track:8f39075075b402d0782805c52fad3f6e9157a839139fb4ac5e8f33d84df345c8` |
| 12 | `def` | [precheckTypeAscription](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/prechecktypeascription--c3a09d4c27859093d4cfae5a.md) | 144 | `declaration-track:c3a09d4c27859093d4cfae5a7751690ed5642f3f6c9a0f0243935819510e7e79` |
| 13 | `def` | [precheckExplicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckexplicit--1fa1cb75d75304bec0682b17.md) | 151 | `declaration-track:1fa1cb75d75304bec0682b17da77add82d045eee09a0fb611723dfd625bb16ba` |
| 14 | `def` | [precheckChoice](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckchoice--8f71658b80cadcd17f28005a.md) | 156 | `declaration-track:8f71658b80cadcd17f28005aca133983d445c489a7e50b59113f9e080fa15764` |
| 15 | `def` | [elabPrecheckedQuot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/elabprecheckedquot--3cc84acc8a3547b7dd1dcd8f.md) | 164 | `declaration-track:3cc84acc8a3547b7dd1dcd8f5205f3ae07e3098f9a7763120bf850d1e566d336` |
| 16 | `def` | [precheckBinrel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckbinrel--4739e4e425a2c63923be6893.md) | 171 | `declaration-track:4739e4e425a2c63923be6893fde24f469cc6d327b33d354ed3e56e18d2a8c5ca` |
| 17 | `def` | [precheckBinrelNoProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckbinrelnoprop--eefaa8ee8e7d657e5c4c0322.md) | 175 | `declaration-track:eefaa8ee8e7d657e5c4c03229d5803f02c314c67273d65bf3c94348f56bb58b8` |
| 18 | `def` | [precheckBinop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckbinop--f337f1fdd7f7642b6608f726.md) | 179 | `declaration-track:f337f1fdd7f7642b6608f726d68338ba2e0910ae871a50baf5fee5009f8988af` |
| 19 | `def` | [precheckBinopLazy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckbinoplazy--3d476b2ffe6f6388195d31f8.md) | 183 | `declaration-track:3d476b2ffe6f6388195d31f83a1b0cd6718d00929cb4ff53e9182a8155ea8bd0` |
| 20 | `def` | [precheckLeftact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckleftact--5fd8423c7d0736bd07b99506.md) | 187 | `declaration-track:5fd8423c7d0736bd07b995067ecb7dae6edf9d8c40541ed7d25cf0eea5e440bf` |
| 21 | `def` | [precheckRightact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckrightact--54637b46f6763700247cdf85.md) | 191 | `declaration-track:54637b46f6763700247cdf8580ed8ae1731a9036ea5d4de83e3e8137f682a6c5` |
| 22 | `def` | [precheckUnop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckunop--72f3eb77360c834f0a5550f1.md) | 195 | `declaration-track:72f3eb77360c834f0a5550f1c57eb643d61d657bf55fea82e70348bd1c490e26` |
| 23 | `def` | [precheckHygieneInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Precheck/Variante87dba46342799052e70d813d3df68b3082e7e85b6fb0f82a57e2fc45f179919.lean/declarations/precheckhygieneinfo--36159d760450f5b95dbb1a09.md) | 199 | `declaration-track:36159d760450f5b95dbb1a0987815de10f88807602935b5b4cdcde0b8a06f09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
