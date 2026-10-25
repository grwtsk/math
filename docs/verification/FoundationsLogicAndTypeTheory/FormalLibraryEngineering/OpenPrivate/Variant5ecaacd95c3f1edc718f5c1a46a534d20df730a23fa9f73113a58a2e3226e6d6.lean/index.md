# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenPrivate.Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4a9e39777390c6a263d872b329874500b4951b7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4a9e39777390c6a263d872b329874500b4951b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Util.FoldConsts` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Parser.Module` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.collectPrivateIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/meta-collectprivatein--fcfcd2f8900d615af4491f56.md) | 23 | `declaration-track:fcfcd2f8900d615af4491f5655ae1eb40752b9267f21bcc921f421d4b69cea94` |
| 2 | `def` | [Environment.moduleIdxForModule?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/environment-moduleidxformodule--2813227e95f6e0c7a2c4e149.md) | 34 | `declaration-track:2813227e95f6e0c7a2c4e1494419bac095263220abec97dba9f5c42dc6bd1461` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/instance--6a1ee1f631fa10e6f09cbe4c.md) | 37 | `declaration-track:6a1ee1f631fa10e6f09cbe4cd8add69ff51db87532192f3a3c0db2075b0d90b4` |
| 4 | `def` | [Environment.declsInModuleIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/environment-declsinmoduleidx--c712685eab90328819896abb.md) | 40 | `declaration-track:c712685eab90328819896abbe567fa38e644e193c4d7161f92a5bb387dca4c3a` |
| 5 | `def` | [Elab.addModuleInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/elab-addmoduleinfo--0a7731c42858d8e6131e1684.md) | 44 | `declaration-track:0a7731c42858d8e6131e1684faf679b620cf197e491cfe940e6cf81393ce7da8` |
| 6 | `def` | [elabOpenPrivateLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/elabopenprivatelike--4f31ae00005332dbb0678c43.md) | 56 | `declaration-track:4f31ae00005332dbb0678c430ac85759d7231734a791915aa78a52352a39b963` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/syntax--3f636a65368712ff4f648368.md) | 110 | `declaration-track:3f636a65368712ff4f64836818eb10790ab4aaf5e8ff7aaca46efe56e11ea8b4` |
| 8 | `def` | [elabOpenPrivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/elabopenprivate--74fda00b2318f12039ba510a.md) | 114 | `declaration-track:74fda00b2318f12039ba510a7831dff6f6d00d3613bb4b3a1ecd30841972e5ea` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/syntax--110f92e4d8d6e302b25c8525.md) | 130 | `declaration-track:110f92e4d8d6e302b25c8525a7c0d57f8769c134c77a4994919e82fc242ab0f6` |
| 10 | `def` | [elabExportPrivate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant5ecaacd95c3f1edc718f5c1a46a534d20df730a23fa9f73113a58a2e3226e6d6.lean/declarations/elabexportprivate--6e8f4ec798b8b2d550ff9c29.md) | 134 | `declaration-track:6e8f4ec798b8b2d550ff9c299cd90476346d8751a9e3be7b705ae1c62b476321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
