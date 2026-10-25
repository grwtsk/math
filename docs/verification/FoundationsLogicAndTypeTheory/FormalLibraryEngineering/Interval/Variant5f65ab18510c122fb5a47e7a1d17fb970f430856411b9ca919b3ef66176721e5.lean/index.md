# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interval.Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "482ccf6e09d6fa546741429fcd33673a426047b9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `482ccf6e09d6fa546741429fcd33673a426047b9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalReal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intervalCore_hi_le_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/intervalcore-hi-le-decide--b0494b5bbea6f4bbcff41523.md) | 50 | `result-track:b0494b5bbea6f4bbcff41523f17940f606a06d9824f9d57aa58d3da8c3a64c68` |
| 2 | `theorem` | [intervalCore_lo_ge_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/intervalcore-lo-ge-decide--40155b16ccb976fc0a2d0680.md) | 55 | `result-track:40155b16ccb976fc0a2d06801a67b33854e0bd952bc7447fa83e256d0ebfdfe3` |
| 3 | `theorem` | [intervalCore_hi_lt_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/intervalcore-hi-lt-decide--4ac9060364ce0c6da002a7f1.md) | 60 | `result-track:4ac9060364ce0c6da002a7f19123b73fed43a4db40ba19e515d58234021411d1` |
| 4 | `theorem` | [intervalCore_lo_gt_decide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/intervalcore-lo-gt-decide--3165e464ebf119b3ddce31ce.md) | 65 | `result-track:3165e464ebf119b3ddce31cedc173f79b1c879b72694b5a2e9b3c59c9faaca8c` |
| 5 | `theorem` | [proveCore_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-le-by-interval--e24275750709e7f58408f49d.md) | 74 | `result-track:e24275750709e7f58408f49dac8da6ec3e48d69148509742762f7ca57faa9e8e` |
| 6 | `theorem` | [proveCore_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-ge-by-interval--9ae0ccfe075787b78ca187e4.md) | 84 | `result-track:9ae0ccfe075787b78ca187e4f0615a90b5dcd71d752d6b18c1448532e58cc687` |
| 7 | `theorem` | [proveCore_lt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-lt-by-interval--c9c1e4be3f6b59fa5c3d5323.md) | 94 | `result-track:c9c1e4be3f6b59fa5c3d53233654d7b879f11737d8949bed65434256525fb284` |
| 8 | `theorem` | [proveCore_gt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-gt-by-interval--c7c89707ea3d2b71f5fdc098.md) | 104 | `result-track:c7c89707ea3d2b71f5fdc098efd0540650b69b33f2fb9a581da5a0011c2fc2f7` |
| 9 | `theorem` | [proveCore_forall_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-forall-le-by-interval--56568667d990cf17330628e0.md) | 117 | `result-track:56568667d990cf17330628e04a25090551bd93ef58c56f85aecda9c2453210bc` |
| 10 | `theorem` | [proveCore_forall_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-forall-ge-by-interval--3551d02690f570e28d22033e.md) | 127 | `result-track:3551d02690f570e28d22033e314d62b4d109cb32f544d6ccb486639c38e6a789` |
| 11 | `theorem` | [proveCore_forall_lt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-forall-lt-by-interval--08d53545f5307220d8223830.md) | 137 | `result-track:08d53545f5307220d8223830352dc15e187468380a15d646f1122161f3dd6951` |
| 12 | `theorem` | [proveCore_forall_gt_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/provecore-forall-gt-by-interval--04d1e71d40e029030227d6d0.md) | 147 | `result-track:04d1e71d40e029030227d6d0742fc1c1a36eb3717729fd5b247c12e766cfe008` |
| 13 | `theorem` | [prove_le_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/prove-le-by-interval--fa28f024d6d989a7919a07fb.md) | 159 | `result-track:fa28f024d6d989a7919a07fb83fb93f2231b5edf32e3d1fc0f3303595d14db64` |
| 14 | `theorem` | [prove_ge_by_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/prove-ge-by-interval--8e920717f110c32f0d99ab08.md) | 166 | `result-track:8e920717f110c32f0d99ab088ac40f4ebcc61dfb425da886e40d837e7eb44886` |
| 15 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--a4ecd517130a62acfcafe2bc.md) | 191 | `declaration-track:a4ecd517130a62acfcafe2bc6317821dfdb5e73be6362e7ca17983949c172d3f` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--36bb31bf5d46e6c8f434fb7f.md) | 196 | `declaration-track:36bb31bf5d46e6c8f434fb7f8380e5474878e16ba3a9f55fcf6a23c5b380de90` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--afe9fee754b9657eb7d1260b.md) | 201 | `declaration-track:afe9fee754b9657eb7d1260b81aafe3d791a93be14526974fcf639124ad67907` |
| 18 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--eaf39b2261be4745e7bbfd20.md) | 206 | `declaration-track:eaf39b2261be4745e7bbfd20523bfd983056e0a037306e41ed0783c787f00d09` |
| 19 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--b0820719a7e629363dfee203.md) | 211 | `declaration-track:b0820719a7e629363dfee203419527ddc38a25eeb829f7afc03dcd8cc9ec41cf` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--9c23377c83e5cb5f73236e25.md) | 216 | `declaration-track:9c23377c83e5cb5f73236e253acb42b4f2a3111b6725e84473ac8b09b249a33d` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--f89a13c7636f46e9015331a8.md) | 239 | `declaration-track:f89a13c7636f46e9015331a8db7023135990d7e2d49bca6e71f965188d9d672a` |
| 22 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--83917f62525a4df6a1daad6f.md) | 245 | `declaration-track:83917f62525a4df6a1daad6f589557d10c33a72f68e6c4a091774b3043f347b1` |
| 23 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--8e5c8c475f0b41d1c50993cd.md) | 251 | `declaration-track:8e5c8c475f0b41d1c50993cd888d47be3e9f9f70d59cbdb90a9c9a43dfc6ab2c` |
| 24 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--699b5bdc9ea6f730f78e199d.md) | 257 | `declaration-track:699b5bdc9ea6f730f78e199db995e5ed4ce73b3003ad70878c30d90b173bb360` |
| 25 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--2221e001bcd8387b17ac8ede.md) | 263 | `declaration-track:2221e001bcd8387b17ac8ede076e3f58a561abdd60cc6aad31765a2834c8da33` |
| 26 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant5f65ab18510c122fb5a47e7a1d17fb970f430856411b9ca919b3ef66176721e5.lean/declarations/macro--4e1f08aee45d93faa728a3b5.md) | 269 | `declaration-track:4e1f08aee45d93faa728a3b58f93bef2a5f028b9115802f9aa0ef7d684b2a76c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
