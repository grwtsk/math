# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuotientLimit.Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40febbfca1ff1bbe36fbda0c982a418978e7802c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40febbfca1ff1bbe36fbda0c982a418978e7802c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.InverseLimit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Stage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/stage--954e58d40302ef2ec8878de7.md) | 14 | `declaration-track:954e58d40302ef2ec8878de70fb59efa22a518c8193d3b4798c9e9ec36a563b4` |
| 2 | `def` | [finiteStageClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/finitestageclaim--89755637067b7c69f4acd6ed.md) | 21 | `declaration-track:89755637067b7c69f4acd6ed85a393716a5d7d69ffc511342c6810a24dbb233a` |
| 3 | `def` | [finiteStageWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/finitestagewitness--f42629ac751ca3cc640bfee1.md) | 24 | `declaration-track:f42629ac751ca3cc640bfee1e82ad28e39e10226f696046b41c253e7ace257ed` |
| 4 | `theorem` | [finiteStageWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/finitestagewitness-isproved--17435bb8f07144802b724387.md) | 28 | `result-track:17435bb8f07144802b724387d04ed12477f5978317ff836b522ef45ca750564c` |
| 5 | `def` | [compactShellInjectiveClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/compactshellinjectiveclaim--b30e47411eea1c3e86444c20.md) | 32 | `declaration-track:b30e47411eea1c3e86444c20b661c89297c2ad35865b86f86f8d1aef7daafa50` |
| 6 | `def` | [compactShellInjectivityResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/compactshellinjectivityresidue--22c0ef21de0786b9fc1e7d55.md) | 35 | `declaration-track:22c0ef21de0786b9fc1e7d55fdbb33df96ef35542eecfb588a92cbe82cfc4df1` |
| 7 | `def` | [compactShellInjectivityWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/compactshellinjectivitywitness--e9e0653e0265cc8fd86903d6.md) | 42 | `declaration-track:e9e0653e0265cc8fd86903d62092663be48b11b4e2a0a40b1919d5776f80353a` |
| 8 | `theorem` | [compactShellInjectivity_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/compactshellinjectivity-hasresidue--e97d893324ec90f535e18c91.md) | 46 | `result-track:e97d893324ec90f535e18c91864b5bdf22d60f29f32f39fe679cf1ba21697ebb` |
| 9 | `def` | [limitRoundTripClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/limitroundtripclaim--e93b740811f5df2901a5b623.md) | 50 | `declaration-track:e93b740811f5df2901a5b62334a5ad8f64f6d68335b488c880882add008642a5` |
| 10 | `theorem` | [limitRoundTrip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/limitroundtrip--d531848f00e16955bef68c0d.md) | 56 | `result-track:d531848f00e16955bef68c0d09f1cc35e490df7e370c57cfd3bb9811b34fffa2` |
| 11 | `def` | [limitBridgeWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/limitbridgewitness--54e4664d89f5cb265ae4061b.md) | 64 | `declaration-track:54e4664d89f5cb265ae4061bab5ba1098611cd633307b9f045f51c6068f24840` |
| 12 | `theorem` | [limitBridgeWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/limitbridgewitness-isproved--f0e164323617d8007871587b.md) | 68 | `result-track:f0e164323617d8007871587b5468ce6221e15afceb73689858b291eb66c4faf7` |
| 13 | `inductive` | [Atom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/atom--1e58077ddc28307ac0e4f49a.md) | 72 | `declaration-track:1e58077ddc28307ac0e4f49a2a49d815b95d69042095523931c1d2be0fd1c2d9` |
| 14 | `def` | [Atom.id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/atom-id--c9770a0822dc263d87e29af6.md) | 84 | `declaration-track:c9770a0822dc263d87e29af6daf5f4884cfc379f3a17c08b2b3f9a8d740ed7a7` |
| 15 | `def` | [residueOfAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/residueofatom--1b234578158889bed5d38665.md) | 95 | `declaration-track:1b234578158889bed5d38665001414dfd53ea254efdff5f39f850afd0a0f6474` |
| 16 | `def` | [allAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/allatoms--0b1b6b107521a5fcf111c9f7.md) | 112 | `declaration-track:0b1b6b107521a5fcf111c9f78baff95cea62389cba1ec83500d33b665152d2a8` |
| 17 | `def` | [validationResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/validationresidues--7c6d8d670e5f350f0698fc60.md) | 124 | `declaration-track:7c6d8d670e5f350f0698fc60cf16a5fe256308ab44866027a89b6a01ee4b52a4` |
| 18 | `theorem` | [validationResidues_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/validationresidues-count--6a1bd76025e9efd121c8a02d.md) | 127 | `result-track:6a1bd76025e9efd121c8a02df96491c2c9c9d8f1d7c8a59d5bf2de28f1464c00` |
| 19 | `theorem` | [validationResidues_targets_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/validationresidues-targets-correct--f2addd3896b8b8de0b1946b7.md) | 131 | `result-track:f2addd3896b8b8de0b1946b7c085b3553d49ce80e1164ff2ef5229605cf8008d` |
| 20 | `theorem` | [allAtoms_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/allatoms-nodup--39f48a6fb7fce332ccea9461.md) | 139 | `result-track:39f48a6fb7fce332ccea946103132f2ec574e74f84990d9a5097835ed62387cc` |
| 21 | `theorem` | [atomId_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuotientLimit/Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995.lean/declarations/atomid-injective--ba4a5edb4a3414fb2ce3b4c2.md) | 143 | `result-track:ba4a5edb4a3414fb2ce3b4c2ad23028562f86277dddae5981044c9e97dbaf701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
