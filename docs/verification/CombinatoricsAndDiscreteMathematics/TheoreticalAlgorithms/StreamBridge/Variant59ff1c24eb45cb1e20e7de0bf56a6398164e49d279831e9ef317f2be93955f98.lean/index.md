# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StreamBridge.Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df41512bc8a737f2ca61412c2a5c3e144de52c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df41512bc8a737f2ca61412c2a5c3e144de52c5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.AST.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Legacy.AffineTopos.NativeSyntacticTopos` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WitnessAuthority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/witnessauthority--72e0a76c453e46b4b6ee07c2.md) | 10 | `declaration-track:72e0a76c453e46b4b6ee07c2ecb71b3c40ca3b5908d8cc1e5428c28bc591115f` |
| 2 | `inductive` | [StreamEventKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/streameventkind--a8146537eec051e8721651a8.md) | 16 | `declaration-track:a8146537eec051e8721651a8228c70c3bb406a0cd1188ad8e4284bcd3e423499` |
| 3 | `structure` | [BinaryLogicMatrixStreamEvent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/binarylogicmatrixstreamevent--82dbd32acc139e8104983ae0.md) | 26 | `declaration-track:82dbd32acc139e8104983ae02002cca8a12f4d8d971036ea82c5b9fca6a05108` |
| 4 | `structure` | [BinaryLogicMatrixStreamWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/binarylogicmatrixstreamwitness--55c20b367188dba932712767.md) | 36 | `declaration-track:55c20b367188dba932712767f291bf9b77be0e511163881534cb61974d2b2162` |
| 5 | `def` | [BinaryLogicMatrixStreamWitness.isOnlyCombinatorial](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/binarylogicmatrixstreamwitness-isonlycombinatorial--7f38b3c4e454448373ee2f07.md) | 47 | `declaration-track:7f38b3c4e454448373ee2f07f104bdd4be521dcb685e28d09a9a7e9cf3788f03` |
| 6 | `structure` | [KernelCheckedTheorem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/kernelcheckedtheorem--f54ce737ba0a98e6be0ddcc2.md) | 52 | `declaration-track:f54ce737ba0a98e6be0ddcc241c7d62566867d25641fe86ac4f9ab85b2089515` |
| 7 | `structure` | [StreamToCheckedTheoremBridge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/streamtocheckedtheorembridge--62117950392325f3a7443a7b.md) | 69 | `declaration-track:62117950392325f3a7443a7b6404e27072a841a25f8eaa409784975bff24a2e4` |
| 8 | `theorem` | [bridge_outputs_checked_theorem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/bridge-outputs-checked-theorem--acf847956df32734949cec90.md) | 81 | `result-track:acf847956df32734949cec9022bd8c7494ec7e1ebcca4640c387d560608a0d52` |
| 9 | `theorem` | [bridge_outputs_theorem_declaration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/bridge-outputs-theorem-declaration--efcf4a72f5c132c1f578eb80.md) | 88 | `result-track:efcf4a72f5c132c1f578eb80e42dd3fb8ae4fb3dbba9d356e8b930b2ff63845d` |
| 10 | `theorem` | [combinatorial_witness_not_checked_by_itself](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/combinatorial-witness-not-checked-by-itself--0feeab240b1d8eaad33a1440.md) | 95 | `result-track:0feeab240b1d8eaad33a1440d07b364a249da7666b9fc7f442e801c76b5cac78` |
| 11 | `structure` | [PascalReductionNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/pascalreductionnode--68d8f2f32001dbe86e5fc698.md) | 103 | `declaration-track:68d8f2f32001dbe86e5fc698ddfb2932c295fee400d9df548694f99e2a0bf590` |
| 12 | `structure` | [StreamArrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/streamarrow--9b4a38aaef5fab1ac43fac6c.md) | 116 | `declaration-track:9b4a38aaef5fab1ac43fac6cd8d97d2381f8a199972ee3759233935c915c982f` |
| 13 | `structure` | [GuardedFeedback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/guardedfeedback--83a8748cbda2e011d30daa07.md) | 122 | `declaration-track:83a8748cbda2e011d30daa07f522e4749b315bb0f260bbb013d42db62d3812ef` |
| 14 | `def` | [safeStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/safestep--b9c0c8381a4565a3b91f499e.md) | 136 | `declaration-track:b9c0c8381a4565a3b91f499eac84958c0da9108d81a292ed6d0e652ac879515a` |
| 15 | `structure` | [ConwayLikeStreamController](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant59ff1c24eb45cb1e20e7de0bf56a6398164e49d279831e9ef317f2be93955f98.lean/declarations/conwaylikestreamcontroller--6fcd683a44b9233589913eac.md) | 147 | `declaration-track:6fcd683a44b9233589913eac12c0f96dd969a3646f8aad2f37d4164c32761bd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
