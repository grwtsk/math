# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DualPivot.Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08060c0ce2866a2258cc7288e45b9c7d7eb44004",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08060c0ce2866a2258cc7288e45b9c7d7eb44004`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PositiveNat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/spectralpivot--d6b684adeb2c0794d3236d03.md) | 30 | `declaration-track:d6b684adeb2c0794d3236d0332eacdebdada2feaaf427179e0577cada0ecbcba` |
| 2 | `def` | [arithmeticPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/arithmeticpivot--4876a0e7e5536023912e185a.md) | 33 | `declaration-track:4876a0e7e5536023912e185a9714ed69149e24c587149e28922d5b3a92a1a025` |
| 3 | `structure` | [DualPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/dualpivot--7fdd342c7af792f5a22689f0.md) | 36 | `declaration-track:7fdd342c7af792f5a22689f0f1d0def54d93e8c18407c4e679012628d1eda36c` |
| 4 | `def` | [defaultDualPivot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/defaultdualpivot--0ed4b91064c18c93c32102ef.md) | 40 | `declaration-track:0ed4b91064c18c93c32102ef930eff5e4d9666cc5f4964354b257fbd40860c31` |
| 5 | `theorem` | [arithmeticPivot_val_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/arithmeticpivot-val-eq-one--df138b23223a0d70dc71a54f.md) | 45 | `result-track:df138b23223a0d70dc71a54f25ec62f8766e4bb292f8815ad3c188f7d6ffb98e` |
| 6 | `theorem` | [spectralPivot_eq_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/spectralpivot-eq-half--a3d3fc5c8e472c0bc3f49b65.md) | 49 | `result-track:a3d3fc5c8e472c0bc3f49b65cea84d915fbbe69fe99857544a58a840110d7a05` |
| 7 | `theorem` | [defaultDualPivot_arithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/defaultdualpivot-arithmetic--982dbe4291f8c7965ec8b8f1.md) | 52 | `result-track:982dbe4291f8c7965ec8b8f1fab38f31a050e33dbe8b9270155b97642f54a5c1` |
| 8 | `theorem` | [defaultDualPivot_spectral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DualPivot/Variant11fa9372c81afe9caa8736d4065bfcf43afe99b6052dc575f0bf28e12ce39840.lean/declarations/defaultdualpivot-spectral--e2fd72aa9e09e4a3b88c3c69.md) | 55 | `result-track:e2fd72aa9e09e4a3b88c3c6965a9a9e03b57ccba883458e7953d650bdb35ceeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
