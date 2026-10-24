# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalVector.Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be71c1523a20283b2596a7b895413ae3b8cb3bb4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be71c1523a20283b2596a7b895413ae3b8cb3bb4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntervalVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/intervalvector--44285b1bd50f827570d638f6.md) | 47 | `declaration-track:44285b1bd50f827570d638f693f9b90a7bfff38eeebc7dd99606308ce6981a94` |
| 2 | `def` | [scalarMulInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/scalarmulinterval--f63a6337befcfe0ab74c3404.md) | 55 | `declaration-track:f63a6337befcfe0ab74c3404464d0f254f309d8e88f48f1dcd862f6da4e12864` |
| 3 | `theorem` | [mem_scalarMulInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-scalarmulinterval--e4bb71a1b511819711cec3b3.md) | 60 | `result-track:e4bb71a1b511819711cec3b390cd6b2a2b2137e19315a19e99529f2f90da3e7f` |
| 4 | `def` | [dotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/dotproduct--90720930d3546d3b8749f885.md) | 72 | `declaration-track:90720930d3546d3b8749f88587c66517a728b2965db0c2638b9d08985d2256ab` |
| 5 | `def` | [realDotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/realdotproduct--420a131e7a1951a07769f94b.md) | 80 | `declaration-track:420a131e7a1951a07769f94b9bed43ccaa83a7e608e29cec838bab8b4d7ba086` |
| 6 | `theorem` | [mem_zero_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-zero-singleton--e9c20d2ea99f6f2513e04830.md) | 87 | `result-track:e9c20d2ea99f6f2513e048302c9926382e7d2cc85cf7e75d1c3914f2ebc25ee5` |
| 7 | `theorem` | [mem_dotProduct_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-dotproduct-aux--66906d3d621f0f0448d9a290.md) | 93 | `result-track:66906d3d621f0f0448d9a2901a51d3cf63320a8bc3ca9f4be43cc4175d387087` |
| 8 | `theorem` | [mem_dotProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-dotproduct--8bc4f5524543f7e0eaba5aab.md) | 128 | `result-track:8bc4f5524543f7e0eaba5aab9dab3e25241777f7449a5aded24a0f9556a32f2f` |
| 9 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/add--5745f1bc8018c66fc43b2fbf.md) | 139 | `declaration-track:5745f1bc8018c66fc43b2fbf2eef5587cf22e521c8ffd3b4c3737335ce4a9d5e` |
| 10 | `theorem` | [mem_add_component](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-add-component--3196f1004c7aebde99cdbaa3.md) | 143 | `result-track:3196f1004c7aebde99cdbaa315f2183f587b307109b28e7fae2dc29d7faec8c1` |
| 11 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/zero--531ef204705e11c0ed67ca8c.md) | 148 | `declaration-track:531ef204705e11c0ed67ca8c2dcee1c4e86b2729800952034695db01a85adfd6` |
| 12 | `theorem` | [mem_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-zero--5a45e138fc5230b35537f7a6.md) | 151 | `result-track:5a45e138fc5230b35537f7a69bb5e329f781e26434d8073614002fa4fc0d9d78` |
| 13 | `def` | [matVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/matvecmul--bea362366190af39caec46be.md) | 157 | `declaration-track:bea362366190af39caec46be2482832802d2fad0daeefa35433f2846815b2cd8` |
| 14 | `def` | [realMatVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/realmatvecmul--e1851f34da1dbd369f076436.md) | 161 | `declaration-track:e1851f34da1dbd369f0764364b73d5f0740e2eac46056a2ed175e49da80a927a` |
| 15 | `theorem` | [mem_matVecMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-matvecmul--feb3a379b7d3ea22aa159f9c.md) | 165 | `result-track:feb3a379b7d3ea22aa159f9cf16e22c1fca0f66fb8a93830410842e8538dff62` |
| 16 | `def` | [addBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/addbias--7156f949dc39f04001cb4157.md) | 178 | `declaration-track:7156f949dc39f04001cb4157005e1632b1b2be5bfce2e4bb8c24a4b395fc243c` |
| 17 | `def` | [realAddBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/realaddbias--2f136e23106473298cf3a639.md) | 184 | `declaration-track:2f136e23106473298cf3a6399658b2bd585ce23fcdd771daa002e6f4904a5b00` |
| 18 | `theorem` | [mem_addBias](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant98ef459e229c7bddaadad1a5e380ee9db58f67ea390bde3d2079877f84421305.lean/declarations/mem-addbias--1752dedb613691442819fbe4.md) | 188 | `result-track:1752dedb613691442819fbe43dd4e9de671b74fc83cdc3203c2fbeac04c5afe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
