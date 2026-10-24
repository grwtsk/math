# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryClassicalWeakMertens

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b3f580e93cb140327858e4cf6bebc64880d69f0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b3f580e93cb140327858e4cf6bebc64880d69f0`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryGlobalUnitWeakMertens`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.AbelSummation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [classicalMertensStepFunction](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalmertensstepfunction--483ce6ff529fae2d89733403.md) | 24 | `declaration-track:483ce6ff529fae2d8973340326b31b629d6a98f86f1b6c49ffb016184ff6ef50` |
| 2 | `def` | [classicalWeakMertensStepIntegrand](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegrand--6ff3053c8c955d4bc3fbe2b7.md) | 28 | `declaration-track:6ff3053c8c955d4bc3fbe2b7941a513a444939872fe15cd5dc3181dbb4c8af7a` |
| 3 | `theorem` | [classicalMertensStepFunction_eq_on_Ico](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalmertensstepfunction-eq-on-ico--6ac21aa39c83083efc24a6be.md) | 33 | `result-track:6ac21aa39c83083efc24a6be2d600791c363e8b854131bb966ca29d29d6bf33e` |
| 4 | `theorem` | [classicalMertensStepFunction_ae_eq_unit](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalmertensstepfunction-ae-eq-unit--4ecab29c75559955a605e25e.md) | 46 | `result-track:4ecab29c75559955a605e25eb057f9fa907108b5442e113b6ddbaa3405c45efe` |
| 5 | `theorem` | [classicalWeakMertensStepIntegrand_ae_eq_unit](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegrand-ae-eq-unit--ff62e6c402d5ddb22c770cf4.md) | 56 | `result-track:ff62e6c402d5ddb22c770cf40ddf89d66cda8ccfedf0981df5ad8bb631aeca05` |
| 6 | `theorem` | [classicalWeakMertensStepIntegrand_intervalIntegrable_unit](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegrand-intervalintegrable-unit--3268e714b9591c4fcd2ed232.md) | 67 | `result-track:3268e714b9591c4fcd2ed232127670906c094f1374e9aae98cfda4ed6193bf8a` |
| 7 | `theorem` | [classicalWeakMertensStepIntegral_unit_eq_kernel](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegral-unit-eq-kernel--0c5ff10c8a40ca061880bd5a.md) | 93 | `result-track:0c5ff10c8a40ca061880bd5ad3134e17681fdef20bdb8b4c47d222fe4c756e31` |
| 8 | `def` | [classicalWeakMertensStepIntegral](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegral--7a43b0338fb58f2aaa271d70.md) | 112 | `declaration-track:7a43b0338fb58f2aaa271d70d21981aa53e479206ce8357b36441a74e15803aa` |
| 9 | `theorem` | [classicalWeakMertensStepIntegral_eq_unitSum](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepintegral-eq-unitsum--7f135ea9e64d860973305db0.md) | 117 | `result-track:7f135ea9e64d860973305db0450d9ea90375100203cb6dbba84602b36d4af292` |
| 10 | `theorem` | [dyadicGlobalUnitWeakMertensEnergy_eq_stepIntegral](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/dyadicglobalunitweakmertensenergy-eq-stepintegral--cf9040566074a63c568beb4b.md) | 149 | `result-track:cf9040566074a63c568beb4bf3bfb452eb1843e39a47686742e0a39db2c88f50` |
| 11 | `def` | [ClassicalWeakMertensStepSource](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertensstepsource--d1f4cb8616c9f00d11475348.md) | 169 | `declaration-track:d1f4cb8616c9f00d11475348d45c03d63da0ac8fc3032098dc6b6e52b95c4c69` |
| 12 | `theorem` | [dyadicGlobalUnitWeakMertensSource_of_classicalStep](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/dyadicglobalunitweakmertenssource-of-classicalstep--f741e59318d164a1368e0f49.md) | 177 | `result-track:f741e59318d164a1368e0f490f556fc74ed39e9107b4f4929e087efd213bf895` |
| 13 | `def` | [classicalWeakMertensStepToDyadicGlobalUnitAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/classicalweakmertenssteptodyadicglobalunitadapter--e18633998288af47add99bdb.md) | 188 | `declaration-track:e18633998288af47add99bdb22adbfb8022aac38388c48b924a4a7b6a88e6cdb` |
| 14 | `theorem` | [subpolynomialCoreBoundarySignedPacket_of_classicalWeakMertensStep](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryClassicalWeakMertens.lean/declarations/subpolynomialcoreboundarysignedpacket-of-classicalweakmertensstep--6e3690895495d6767928ecf9.md) | 199 | `result-track:6e3690895495d6767928ecf99d3dfa513ed07e7b38230dd1a904033e320cbc36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
