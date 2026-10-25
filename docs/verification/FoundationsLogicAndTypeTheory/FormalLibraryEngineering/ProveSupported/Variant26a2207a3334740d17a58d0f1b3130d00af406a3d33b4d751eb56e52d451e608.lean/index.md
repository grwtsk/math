# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProveSupported.Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebd584a937578ce6fb6d8f5e1a98637b8e79804",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebd584a937578ce6fb6d8f5e1a98637b8e79804`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkUsesOnlyVar0Proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/mkusesonlyvar0proof--6cf7a76a17307b27cf2097a4.md) | 56 | `declaration-track:6cf7a76a17307b27cf2097a4c19362f9e4fe95fcaf593a011856aff70bbeb7fc` |
| 2 | `def` | [mkSupportedProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/mksupportedproof--8fece0bd03b5d5961c00768d.md) | 152 | `declaration-track:8fece0bd03b5d5961c00768d662b5c4130339531df15ae9df2effb858822190b` |
| 3 | `def` | [mkSupportedCoreProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/mksupportedcoreproof--67ca96e8a34a9c8c478015f0.md) | 217 | `declaration-track:67ca96e8a34a9c8c478015f055a3f3445b00b07cecbda31551d83911b8dce892` |
| 4 | `def` | [mkSupportedWithInvProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/mksupportedwithinvproof--79ebe25f14499226bdcfba80.md) | 327 | `declaration-track:79ebe25f14499226bdcfba801f5c5ab8e7d33e5fb9e74cca7d7ce3ba17fe7c9f` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/elab--8e3013dffcd68ecf0b03db33.md) | 427 | `declaration-track:8e3013dffcd68ecf0b03db33ac9798e961af89a511aeba5c435d10750c9ca08c` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/elab--d4e9c25f5cdedb76abc8838b.md) | 442 | `declaration-track:d4e9c25f5cdedb76abc8838b538cc879bce089ff4b900d1852ca8decd37363a5` |
| 7 | `def` | [reifyWithSupportCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/reifywithsupportcore--b9a3a6652e25321849bac819.md) | 460 | `declaration-track:b9a3a6652e25321849bac819c214ecd47ad30874e4790069d8225414a8ee4b0a` |
| 8 | `def` | [reifyWithSupportInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveSupported/Variant26a2207a3334740d17a58d0f1b3130d00af406a3d33b4d751eb56e52d451e608.lean/declarations/reifywithsupportinv--c34376e464bea2bf7a16dd92.md) | 466 | `declaration-track:c34376e464bea2bf7a16dd9255aa733cc607c427aee177d01538b67da7ec84b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
