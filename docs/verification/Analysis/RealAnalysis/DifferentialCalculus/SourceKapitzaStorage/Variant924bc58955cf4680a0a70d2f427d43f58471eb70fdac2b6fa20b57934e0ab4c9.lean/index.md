# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dfa39af91b316a7e8abf5f10e10d8b7def595bf",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dfa39af91b316a7e8abf5f10e10d8b7def595bf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/storage--81d3544ec1832eafce27de27.md) | 34 | `declaration-track:81d3544ec1832eafce27de276e63546a31d1ee28bf661fb0b654c052a869363c` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/initialstorage--be3dee5589e784ce67790bbc.md) | 37 | `declaration-track:be3dee5589e784ce67790bbc137466dc119805c31ba1cf9432cdfd88fb2552e9` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/drift-identity--c11e7aa87372a0a595d1022f.md) | 40 | `result-track:c11e7aa87372a0a595d1022fdb79a428c7c703907dae77fb6cc39bb7160e5afe` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/hasderivat-storage--68f9f43d2036dd54b5209ba3.md) | 47 | `result-track:68f9f43d2036dd54b5209ba31c0ce604d99781574dadbd5993fb5cb4b8ce9179` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/hasderivat-weight--3a141308d9ac496edadaee84.md) | 56 | `result-track:3a141308d9ac496edadaee848dc77852811388822095d3123f18550e7637b22e` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/corrector-cancellation--bd74a53b4484081a55ed52fd.md) | 63 | `result-track:bd74a53b4484081a55ed52fd05a76450d8d97dae5b37b97359ece2a57135c089` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/hasderivat-corrector--05952dbbe42f99de38284bef.md) | 69 | `result-track:05952dbbe42f99de38284bef58f7fd9a7c1a5c929629f18d72ee64433e4013d5` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/jump-continuous-corrector--c5cb57b7d01030a3db8b68fd.md) | 79 | `result-track:c5cb57b7d01030a3db8b68fda1866f023f241ed9f9da85af463f77676a9f2c54` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/jump-jumping-corrector--029b44166dcd3b80b9af142f.md) | 85 | `result-track:029b44166dcd3b80b9af142f4521000b1b570706fcaf72716d560a1bb3443646` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/storage-endpoint--22e518ecb15f81649aaeb391.md) | 92 | `result-track:22e518ecb15f81649aaeb3914ea37a980cd8508375a285936bf74fd33d0205fd` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/storage-complete-square--0023f0e6cae36fc600616abc.md) | 95 | `result-track:0023f0e6cae36fc600616abc3f19005505b03f258a0cb7724096e5844395f203` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/initialstorage-reconstruction--86f74597de9ba535b535c738.md) | 101 | `result-track:86f74597de9ba535b535c73844ecafc9f4d3a8a164373774425a08eb72f57fa0` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/initialstorage-abs-sub-four--877848bc1775647bc0017b89.md) | 107 | `result-track:877848bc1775647bc0017b89e0d0ff74194eaa67ba331cc3494c15d20b6ed693` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/initialstorage-abs-sub-four-linear--f262a180e830f1cff994ea42.md) | 128 | `result-track:f262a180e830f1cff994ea42d897907b143e4a5f44c7dbf2eb1013b90ee8d1ee` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/initialstorage-epsilon--0777db4114fa8b514d8b7ce3.md) | 136 | `result-track:0777db4114fa8b514d8b7ce3572d30831253b67afed94cfbf60a91fd3b256b8a` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/obstruction-coefficients--2fedc9e28d40362a42b58660.md) | 152 | `result-track:2fedc9e28d40362a42b58660668a9081a4e22fdd84d53262403d4e8dce2e030f` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/obstruction-product--bc7ab88bf5deaf91b7575811.md) | 161 | `result-track:bc7ab88bf5deaf91b7575811f4cb726710f6e53edeaabec25d5489eb420b43e5` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticimpulse--f23bd3f248f80c62042bf34f.md) | 170 | `declaration-track:f23bd3f248f80c62042bf34fe37098658c176d6342ba6fe864054d8a1e8ccf56` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticmajorant--2a780a1f4b96e5d65997d105.md) | 174 | `declaration-track:2a780a1f4b96e5d65997d105dee7be6758e77e6fe8d1b895adf3cf171a640330` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticprimitive--0b84c330e981c270028dde9d.md) | 178 | `declaration-track:0b84c330e981c270028dde9d960dece804b885403bff829a50e9d376ea78f6c4` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticconstant--d1197be7d690401d1d32f02c.md) | 183 | `declaration-track:d1197be7d690401d1d32f02c2730f521668d12cc9f4ead15b906664320108475` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticimpulse-nonneg--153305fa4bcb677004fedbf6.md) | 185 | `result-track:153305fa4bcb677004fedbf61d6a243df1b2e323d95cf2533dec4e2f687a6d0f` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticimpulse-le-log--2d42eecb9ef2a646972592b8.md) | 190 | `result-track:2d42eecb9ef2a646972592b8cbe5f442159cd697d7c68efb53565347006e1b46` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/log-atom-le-quadraticmajorant--b4632e469e4e6621e97d933f.md) | 197 | `result-track:b4632e469e4e6621e97d933fb538107809547c8edbe5991581dfec79b155fa08` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticprimitive-hasderivat--aae4024a1c5c88b3b01a6e62.md) | 213 | `result-track:aae4024a1c5c88b3b01a6e627440d9d23aea1335d263908de485e1abc1aebcc3` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticprimitive-one--1e3ecdcef7d5f86ce16da434.md) | 248 | `result-track:1e3ecdcef7d5f86ce16da434fcc37e43c401162310984a2c7468bf0708334613` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticprimitive-nonpos--8b49d2fd20de858b016a23b9.md) | 252 | `result-track:8b49d2fd20de858b016a23b93d9857f2e10c8a22d603c2db8e57b92a958ad130` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticmajorant-continuouson--fd31365833fc6677b7527900.md) | 261 | `result-track:fd31365833fc6677b75279009b0325786fbfc3cdf4703918d18fdc209f75acb2` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticmajorant-integral--06ac758d59ce2a4f141f064b.md) | 271 | `result-track:06ac758d59ce2a4f141f064b110e23b150fe8f94b74ca8dc8b22991bf315f92b` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticmajorant-integral-le--2067a3b79f00eaf325db7a85.md) | 284 | `result-track:2067a3b79f00eaf325db7a85618ee3feb73425bb8965f3e26d9a686cb525fb09` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticimpulse-sum-le--726b13a4bb5b8bb7dd0f0852.md) | 291 | `result-track:726b13a4bb5b8bb7dd0f08528a2aa48aea44b8d2fc9c4c50d942b99561981edb` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant924bc58955cf4680a0a70d2f427d43f58471eb70fdac2b6fa20b57934e0ab4c9.lean/declarations/quadraticimpulse-closed-cutoff-le--75d176d67dbae07ec31a6e30.md) | 333 | `result-track:75d176d67dbae07ec31a6e308176e64f27aecd46bd5a00a21d39d5b1339dd52b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
