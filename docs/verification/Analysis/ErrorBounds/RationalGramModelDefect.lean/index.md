# Verification target: GRWTSK.Analysis.ErrorBounds.RationalGramModelDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e73efa445284ec1999553322bdab0510b9d8983c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e73efa445284ec1999553322bdab0510b9d8983c`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalGramModelDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalGramModelDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalComplexDisk`](../../../../mathematics/Analysis/ErrorBounds/RationalComplexDisk.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramDisk](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/gramdisk--ceec51c49b4398ff50f018ee.md) | 44 | `declaration-track:ceec51c49b4398ff50f018ee5f98472702144e21ebf34e9559109f34573c48ea` |
| 2 | `def` | [transportDisk](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/transportdisk--6142d96e4aee8ef3e3565a2a.md) | 48 | `declaration-track:6142d96e4aee8ef3e3565a2a66ef516c9f8647da0b6641999204bb0bd9cdb9e7` |
| 3 | `def` | [stepDefectDisk](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/stepdefectdisk--90db532808e85d2f6ada291d.md) | 52 | `declaration-track:90db532808e85d2f6ada291dfafec8bdfddd1c2335631cffec23e7adcaa8a758` |
| 4 | `def` | [modelDefectDisk](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/modeldefectdisk--e02828f2ce36c4b7a76a2bdd.md) | 57 | `declaration-track:e02828f2ce36c4b7a76a2bdd4d6f89096b5c044fec7e478505107bc4c663856b` |
| 5 | `def` | [modelDefectReadoutDisk](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/modeldefectreadoutdisk--a86e495e174887b7ce92ce58.md) | 62 | `declaration-track:a86e495e174887b7ce92ce58a95e688316260788fd4208a07982c6c84a6d05b5` |
| 6 | `theorem` | [gramDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/gramdisk-contains--768d56b9f78a40079a3152b7.md) | 71 | `result-track:768d56b9f78a40079a3152b752436279a1e11a23f764ca9aee8378c84e53c66d` |
| 7 | `theorem` | [transportDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/transportdisk-contains--9e945405926a5aa8155e07d3.md) | 81 | `result-track:9e945405926a5aa8155e07d36a00812f707630dcfab7f829a4401d1442efcecf` |
| 8 | `theorem` | [stepDefectDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/stepdefectdisk-contains--25222006350427eabd191b27.md) | 93 | `result-track:25222006350427eabd191b278879236549bce22e5eb0f80a22e8ecdc74cf7e63` |
| 9 | `theorem` | [modelDefectDisk_contains](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/modeldefectdisk-contains--b8d95fc351afd91bacffc120.md) | 107 | `result-track:b8d95fc351afd91bacffc1204ea7fce395392cd4d1c3b34f6289bf4ca129ba70` |
| 10 | `theorem` | [model_defect_readout_upper](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/model-defect-readout-upper--a552332a0778049717f55537.md) | 123 | `result-track:a552332a0778049717f555375fc34bdf1a3dc7efec77e2e4622db119757af602` |
| 11 | `theorem` | [net_defect_injection_invariant](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/net-defect-injection-invariant--b45f86cec310e120cf40f610.md) | 145 | `result-track:b45f86cec310e120cf40f6104ea2e3ca885d3c9e39ca808f4a7344dd3e3c44e0` |
| 12 | `def` | [modelDefect](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/modeldefect--58781e96e3ec24e71ac1e9cb.md) | 159 | `declaration-track:58781e96e3ec24e71ac1e9cb1c274a28f35f24583ee580518a088ba1261c4a56` |
| 13 | `theorem` | [model_update_with_defect](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/model-update-with-defect--7f9e541bb69936f87378e680.md) | 167 | `result-track:7f9e541bb69936f87378e680fa4d376ada7a353f0977330e8fc11e92e78ede32` |
| 14 | `theorem` | [modelDefect_zero_of_update](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/modeldefect-zero-of-update--e98e1cfca0345de0074aeea6.md) | 178 | `result-track:e98e1cfca0345de0074aeea6b6280953c29c68e590c717e7699ededbe8ee121a` |
| 15 | `theorem` | [corrected_mismatch](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/corrected-mismatch--c7253840ab5fb959a22282b8.md) | 190 | `result-track:c7253840ab5fb959a22282b814dc4ba85f0d0d48e9034aedb28e93d007e09335` |
| 16 | `theorem` | [residual_evolution_with_model_defect](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/residual-evolution-with-model-defect--f41a70c785c64dc8e774e8d2.md) | 200 | `result-track:f41a70c785c64dc8e774e8d2a7b279f3159358d48577e163ecc96fd2c601f0b2` |
| 17 | `theorem` | [no_fixed_negative_of_model_defect_window](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/no-fixed-negative-of-model-defect-window--5bd902c40fac6a3280868eff.md) | 213 | `result-track:5bd902c40fac6a3280868eff7b3f0d8e212bd44bc5461d109a59637633314167` |
| 18 | `theorem` | [newborn_model_defect_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/newborn-model-defect-fixture--1c05c7fedce770e8b386e93d.md) | 251 | `result-track:1c05c7fedce770e8b386e93dcfd68b94fa1289bb0fcbc892c2bd0a363f802d87` |
| 19 | `theorem` | [negative_model_defect_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/negative-model-defect-fixture--a8ed68c0a71acfa0723f6373.md) | 262 | `result-track:a8ed68c0a71acfa0723f6373fa05ecfa778fc12904418087c87f5547f8a79f24` |
| 20 | `theorem` | [uncertain_feature_gram_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/uncertain-feature-gram-fixture--99c6c55966a6c877fb73e644.md) | 273 | `result-track:99c6c55966a6c877fb73e64466efd91d779611d7a27eb013cfb92ae2f99cf66f` |
| 21 | `theorem` | [subtracted_defect_endpoint_fixture](../../../../mathematics/Analysis/ErrorBounds/RationalGramModelDefect.lean/declarations/subtracted-defect-endpoint-fixture--8e7d6b645e8033e7f54a1c69.md) | 278 | `result-track:8e7d6b645e8033e7f54a1c69ed7dd00f357fee22ea6077cef27d6d2304320ed2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
