# Verification target: GRWTSK.Analysis.MeasureTheory.MutuallySingular.Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b834dca224cd2b282173346d2a33713a04e2b7a6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b834dca224cd2b282173346d2a33713a04e2b7a6`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/mutuallysingular--a7f2dee7ec1c563297922430.md) | 39 | `declaration-track:a7f2dee7ec1c5632979224308a74bd26d6ecdc6355733927878249f5c3cb91ba` |
| 2 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/mk--d779f6e4357c457b22801647.md) | 49 | `result-track:d779f6e4357c457b228016470358f74230af1b2079bf8c8070c5c1d03e113755` |
| 3 | `theorem` | [zero_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/zero-right--88b627832562d14f40de0394.md) | 57 | `result-track:88b627832562d14f40de0394e42e866bedddc6f7b3530e3b668e9a1ddf83db12` |
| 4 | `theorem` | [symm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/symm--45b49113a5d1bea0e275b872.md) | 62 | `result-track:45b49113a5d1bea0e275b87275dd5b9052143c445b92577f0965c98e19d9c768` |
| 5 | `theorem` | [comm](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/comm--f4d2c411b5712d5d68bba9d3.md) | 67 | `result-track:f4d2c411b5712d5d68bba9d38dcfb9e56e00de50cff9c68aa34f66a1c4aee243` |
| 6 | `theorem` | [zero_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/zero-left--7b712c3745ddb52092490815.md) | 72 | `result-track:7b712c3745ddb5209249081550aba87e7c4bfb931ef02647c895355daed4af1c` |
| 7 | `theorem` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/mono-ac--fe1d2fe4e42b326b2c442176.md) | 76 | `result-track:fe1d2fe4e42b326b2c44217661aaf765c2159f050d4db3382010a0c3118566b6` |
| 8 | `theorem` | [mono](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/mono--f65dce2cffad1a97b2769157.md) | 81 | `result-track:f65dce2cffad1a97b276915791f86f0b277641e4554d6180815daceeaefa2159` |
| 9 | `theorem` | [sum_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/sum-left--66dae5ce965cf7960370acf7.md) | 86 | `result-track:66dae5ce965cf7960370acf7bfb43b5f293864eb38ee004706c7ebbbfb375467` |
| 10 | `theorem` | [sum_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/sum-right--bbff95b90f89fa8bd60a3763.md) | 96 | `result-track:bbff95b90f89fa8bd60a3763f6b745f5e4d48a773b7f2bb2acd5b9fa409a02b0` |
| 11 | `theorem` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/add-left-iff--4a5ee433afb383d2dddf546f.md) | 101 | `result-track:4a5ee433afb383d2dddf546f0abc4317ba27af8cd97c644db01a84308d3bf77c` |
| 12 | `theorem` | [add_right_iff](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/add-right-iff--0fd6765deee3b5b168c84b66.md) | 106 | `result-track:0fd6765deee3b5b168c84b66486f4913b14572afdf7be86ef561018f20499151` |
| 13 | `theorem` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/add-left--b663312b0a91d9208b64adc4.md) | 110 | `result-track:b663312b0a91d9208b64adc4661c3519a9b0bd6402e5232a0fb6474f52a3808a` |
| 14 | `theorem` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/add-right--b75111f75cb2fa50ef6247c9.md) | 114 | `result-track:b75111f75cb2fa50ef6247c9a6eae5ed4493e02482f4bd53ae493528a4e96d34` |
| 15 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/smul--5af429c63913598933899ef9.md) | 118 | `result-track:5af429c63913598933899ef915f3268588f34ef3633a0f19456c6f0f01af043c` |
| 16 | `theorem` | [smul_nnreal](../../../../../mathematics/Analysis/MeasureTheory/MutuallySingular/Variant4c13673dc220db2c3a7ce1fff5adc71cb9ddd14561e4adc3e68eca3837c9f90f.lean/declarations/smul-nnreal--663f66bd8c389c3700e37443.md) | 122 | `result-track:663f66bd8c389c3700e3744348a41af5d6975e828421d53ecb49d53828988961` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
