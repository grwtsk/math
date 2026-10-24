# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtensionAudit.Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d29c00359dd7c0f59dec0b0970a50008f32373db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d29c00359dd7c0f59dec0b0970a50008f32373db`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/fullh--e9aec091a2cd5840f8fb7f45.md) | 16 | `declaration-track:e9aec091a2cd5840f8fb7f45addf016d1251236b3c930c35854354adfefe14c4` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionfunction--430f7067883d3c012215924a.md) | 18 | `declaration-track:430f7067883d3c012215924a814f06431d2decb1319bc1ecdc9db9a9a604895b` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionfunction-memlp--a5922ad5d2009f5c12e9a011.md) | 20 | `result-track:a5922ad5d2009f5c12e9a0115094af3ae1206f563251513e829a78ea0f674e5b` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionvector--687f960f6d05482e838f0ea7.md) | 24 | `declaration-track:687f960f6d05482e838f0ea7cfa0c0229d64dc3dc2413e2920ac6697eebdf700` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionvector-ae--d9fd81ca9ef51d5509ef3857.md) | 27 | `result-track:d9fd81ca9ef51d5509ef38573afefb24c4e09d82f2b3589247726b4db2e26033` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionvector-norm--121e2cf9b1c595366c7e5d4b.md) | 31 | `result-track:121e2cf9b1c595366c7e5d4b4801e78f25e00e5169bb6160157e0e22afa8bf50` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionvector-add--de57439ad9f31c0965c01dfb.md) | 36 | `result-track:de57439ad9f31c0965c01dfb3544bd4c4c2ba42bd7bc6c355c440c4912b5b88d` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextensionvector-smul--6d9713550a4d4fededcbd350.md) | 48 | `result-track:6d9713550a4d4fededcbd350f11dca63ec6cc72a76c3ed96ab854fa7190a2f68` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextension--57be2b51e22f4be861a57676.md) | 61 | `declaration-track:57be2b51e22f4be861a57676fecc1bb4a641eddcd8bb755861c497ee37a837fe` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextension-ae--96866c82b2ad4404f4d52843.md) | 67 | `result-track:96866c82b2ad4404f4d52843b04aabc8031b11a4a4a8c4492bfbfe436d74690a` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextension-norm--a1a4f985736cecac3e1f4370.md) | 71 | `result-track:a1a4f985736cecac3e1f4370c9ddd0c11fa568856a79e463c93ccd4df5e26317` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextension-ae-halfline--31fe576380d4484074836b51.md) | 74 | `result-track:31fe576380d4484074836b512e1c6f2c62715a6f648acd65867224268d7003c6` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/zeroextension-ae-nonpositive--01dca9f1c4a085820a0191d2.md) | 80 | `result-track:01dca9f1c4a085820a0191d24790c34102262d3dc78f3bae4cab3b9753b14ea7` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction--6bbbe98ec1c6a692a24fb8df.md) | 89 | `declaration-track:6bbbe98ec1c6a692a24fb8dfa2b55cdc6be9765c34c345928b1cc1c5a24874b0` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction-ae--995617cf46d15fc6b7e0af9a.md) | 91 | `result-track:995617cf46d15fc6b7e0af9a41e0b6c1546b3efd987496f0d53fd203a1ccefb2` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction-norm-le--8d1a76023be35e349ae7e509.md) | 94 | `result-track:8d1a76023be35e349ae7e509a688d4c2c9252a5997f2570f1bd005e8824cc85d` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction-opnorm-le--589a5d5a42214486792893e1.md) | 97 | `result-track:589a5d5a42214486792893e14152135e0b2565e6ec3fa020c5028e903ccbe9a7` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction-zeroextension--bfa540d0e8f54cacfcb856bd.md) | 102 | `result-track:bfa540d0e8f54cacfcb856bd8be390921f4ef00e311ab1cd3383f7b52dfd6fbd` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant24405a3f0f21e37df4091456e51ce611cd4e1cfdbd38201648faa0ac7217eae3.lean/declarations/restriction-comp-zeroextension--df5d202b85b4caac7e2cdccf.md) | 105 | `result-track:df5d202b85b4caac7e2cdccfa5cd1bbd7569f6b78f423a2c2378b453e22ce9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
