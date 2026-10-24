# Verification target: GRWTSK.NumberTheory.SupplierInitialTransform.Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee5f8f7b558558efc67fb6d3ed965de56892e501",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee5f8f7b558558efc67fb6d3ed965de56892e501`.

Source path: `GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMoebius](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius--4648caaa749c47e1fd3c5f0b.md) | 30 | `declaration-track:4648caaa749c47e1fd3c5f0ba0c3f712c0801d474d9559f24dcad47e49e54a89` |
| 2 | `theorem` | [complexMoebius_eq](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius-eq--6afdfb5708cd9b5617458621.md) | 32 | `result-track:6afdfb5708cd9b561745862139289f25142433a8e3af58219302ce1dbc501701` |
| 3 | `theorem` | [complexMoebius_summable](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius-summable--f5e4e1781540369010474121.md) | 36 | `result-track:f5e4e178154036901047412198c8122b0306cb28dae1722b3ac704e717af74ed` |
| 4 | `theorem` | [complexMoebius_LSeries](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius-lseries--23dad3a8c03a7cb6cdc14dd9.md) | 42 | `result-track:23dad3a8c03a7cb6cdc14dd9540c863134ec36b3cea7fb5c5dab949600c61b5d` |
| 5 | `theorem` | [complexMoebius_prefix](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius-prefix--6846be483de4b9e1d32ae4db.md) | 51 | `result-track:6846be483de4b9e1d32ae4db3752a196f7af841b1082559edebbf846a7dc504e` |
| 6 | `theorem` | [complexMoebius_prefix_bigO](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/complexmoebius-prefix-bigo--2e028816aa733b2ac217a9aa.md) | 58 | `result-track:2e028816aa733b2ac217a9aaefd16fe388d309259d40d15fd384889c9c73f682` |
| 7 | `theorem` | [arithmeticRecording_mellin](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/arithmeticrecording-mellin--6539eaae63559e9dcc53a318.md) | 73 | `result-track:6539eaae63559e9dcc53a318b99eaa895dd050ab1922f52ce9e50bdf7e22c970` |
| 8 | `theorem` | [arithmeticRecording_laplace](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/arithmeticrecording-laplace--41f4318bbd9181b234083b5e.md) | 91 | `result-track:41f4318bbd9181b234083b5ec80edfe893f12f1e7d012c135d4cdfec0c347323` |
| 9 | `theorem` | [pickupDensity_laplace](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickupdensity-laplace--482273925b118dded0458e2c.md) | 119 | `result-track:482273925b118dded0458e2c7c2289deffeb646bda507e75e1d27d0d314c2b87` |
| 10 | `def` | [pickupTriangle](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickuptriangle--0cfa1357c5728a7f62b83f6d.md) | 132 | `declaration-track:0cfa1357c5728a7f62b83f6d1d2edc9319177d44b2e1a4f5b1cdb98ed2508ee6` |
| 11 | `theorem` | [pickupTriangle_measurable](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickuptriangle-measurable--ea91b37a85a9dcfbdfaf117c.md) | 136 | `result-track:ea91b37a85a9dcfbdfaf117c317a12535d0943ef4c34625e891a43a3b2b97707` |
| 12 | `theorem` | [pickupTriangle_integrable](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickuptriangle-integrable--bdb4cc318444f0a050446f62.md) | 144 | `result-track:bdb4cc318444f0a050446f62bc30ef101a53911313577fe2eed9307a680c93c7` |
| 13 | `theorem` | [pickupTriangle_time_integral](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickuptriangle-time-integral--2e88d4fe18c2c29cac280e05.md) | 174 | `result-track:2e88d4fe18c2c29cac280e05a11c3ebc2ffa53f82bcbae3ce190cb8ba5092582` |
| 14 | `theorem` | [pickupTriangle_density_integral](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickuptriangle-density-integral--61f11ed80c30a40454db06fc.md) | 187 | `result-track:61f11ed80c30a40454db06fc98f480727740c664b0abdb0e8d032bfac9ace81e` |
| 15 | `theorem` | [pickup_laplace](../../../../mathematics/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/declarations/pickup-laplace--f84b3cef3ed08a590c8478e8.md) | 203 | `result-track:f84b3cef3ed08a590c8478e8ef7362a33df35d6d1946c6310ce45a5f692c342d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
