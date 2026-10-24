# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3850d5ace477943031d8c81a97a8628652b60096",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3850d5ace477943031d8c81a97a8628652b60096`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogSquarefreeGCDReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMobiusLogLowGCDSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloglowgcdset--60cbe96840175b97e3806561.md) | 63 | `declaration-track:60cbe96840175b97e38065615455153e0b1fd03e4c79e6b9fd16bfffa00d4efe` |
| 2 | `def` | [centeredMobiusLogHighGCDSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloghighgcdset--d8c7c2db29eb9a5b749ac58e.md) | 69 | `declaration-track:d8c7c2db29eb9a5b749ac58e4f0ae084073bb9904a37d7418e46c02a867f85bc` |
| 3 | `theorem` | [mem_centeredMobiusLogLowGCDSet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/mem-centeredmobiusloglowgcdset-iff--636695188a68ecf31ecdbec7.md) | 75 | `result-track:636695188a68ecf31ecdbec78c778cd4ca31a753fe8cb03a242e3364e6c1ccc5` |
| 4 | `theorem` | [mem_centeredMobiusLogHighGCDSet_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/mem-centeredmobiusloghighgcdset-iff--927ec7e7c34bfc2dceddb6c7.md) | 83 | `result-track:927ec7e7c34bfc2dceddb6c71b6b14340e24daf25655dd507f8adf078852fb56` |
| 5 | `theorem` | [centeredMobiusLogLowGCDSet_union_highGCDSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloglowgcdset-union-highgcdset--ac97e016b2f3896ea47d0a9c.md) | 92 | `result-track:ac97e016b2f3896ea47d0a9c9db94283533a00f07cd6db73994de0bd5cb83a2f` |
| 6 | `theorem` | [centeredMobiusLogLowGCDSet_disjoint_highGCDSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloglowgcdset-disjoint-highgcdset--02bb69e3a2ddfd121609b954.md) | 103 | `result-track:02bb69e3a2ddfd121609b954c6ccc87a900c3f7b1c1ecb56b1fbdd75ab7206bd` |
| 7 | `def` | [centeredMobiusLogLowGCDPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloglowgcdpairblock--2e707cebdda3467f3308d022.md) | 117 | `declaration-track:2e707cebdda3467f3308d0228b9b705c4a1f4b65b42579850cc886546b05ac28` |
| 8 | `def` | [centeredMobiusLogHighGCDPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloghighgcdpairblock--a1e8033ac7e90a152c106c76.md) | 123 | `declaration-track:a1e8033ac7e90a152c106c760cf4893c611b421ebbbd8c8500f06a62c947120b` |
| 9 | `theorem` | [centeredMobiusLogSquarefreeGCDPairBlock_eq_low_add_high](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogsquarefreegcdpairblock-eq-low-add-high--5e91b97d73897410c8b9de31.md) | 129 | `result-track:5e91b97d73897410c8b9de3188e88767343825eb90549d4953d7c23ff4ee7dac` |
| 10 | `theorem` | [centeredMobiusLogPairGCD_none_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogpairgcd-none-left--b0b87862ce7d250ed18196fb.md) | 143 | `result-track:b0b87862ce7d250ed18196fb7760fdfdfe9f634e09dfd08a3d01a05ea8f8bead` |
| 11 | `theorem` | [centeredMobiusLogPairGCD_none_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogpairgcd-none-right--d14c724373ae485869768892.md) | 152 | `result-track:d14c724373ae485869768892f4325835c702169848d3b84b2fcc8f2004c88274` |
| 12 | `theorem` | [centeredMobiusLogHighGCDClass_pair_is_genuine](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloghighgcdclass-pair-is-genuine--2ddbc33ad3c7d4164d0f81f1.md) | 161 | `result-track:2ddbc33ad3c7d4164d0f81f17ba04e24320cc148ab35f05d3fc7f0fb468a2070` |
| 13 | `def` | [centeredMobiusLogAbsolutePairGCDClassBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutepairgcdclassblock--d08c401975f8632a6c382da3.md) | 193 | `declaration-track:d08c401975f8632a6c382da3679efb06b5d49384b8ede0da9dcd22d07599f345` |
| 14 | `def` | [centeredMobiusLogAbsoluteLowGCDPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutelowgcdpairblock--9040824d4be05f865c5ebd7f.md) | 201 | `declaration-track:9040824d4be05f865c5ebd7f48f53efa14bc9bc61ee529ee34ed4663cb2a035a` |
| 15 | `def` | [centeredMobiusLogAbsoluteHighGCDPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutehighgcdpairblock--bb89f553ae3eb65ad4442882.md) | 208 | `declaration-track:bb89f553ae3eb65ad44428829d47615305e76b75d3eb9b9c18f875d42c6ca466` |
| 16 | `theorem` | [centeredMobiusLogAbsolutePairGCDClassBlock_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutepairgcdclassblock-nonnegative--22afc20d5670dba5a0f39499.md) | 213 | `result-track:22afc20d5670dba5a0f39499b76cd64c5020d2f8363e4074e9dabc48039c7123` |
| 17 | `theorem` | [centeredMobiusLogAbsoluteLowGCDPairBlock_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutelowgcdpairblock-nonnegative--0df4544a6780f6336aff61ed.md) | 219 | `result-track:0df4544a6780f6336aff61edb30eb927425a10ee900acf978236b72f662a2673` |
| 18 | `theorem` | [centeredMobiusLogAbsoluteHighGCDPairBlock_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogabsolutehighgcdpairblock-nonnegative--7cdd7aa59f2d2571dc0fdd8b.md) | 226 | `result-track:7cdd7aa59f2d2571dc0fdd8b3d9ff023af0eadbc2558e7c180ede13c393a6f6b` |
| 19 | `theorem` | [centeredMobiusLogSquarefreePairGCDClassBlock_le_absolute](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslogsquarefreepairgcdclassblock-le-absolute--430d90da077bd7a09cbc0a0d.md) | 234 | `result-track:430d90da077bd7a09cbc0a0da28e4026c59556b034206e0aec7083b69967459d` |
| 20 | `theorem` | [centeredMobiusLogHighGCDPairBlock_le_absolute](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiusloghighgcdpairblock-le-absolute--b6d6782e5124e5ac09118745.md) | 243 | `result-track:b6d6782e5124e5ac091187459b18ad29c8b5bb8b0c3c09566d09c5174cd02b91` |
| 21 | `theorem` | [centeredMobiusLog_none_none_mem_gcd_one_class](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/centeredmobiuslog-none-none-mem-gcd-one-class--35c343282475bbef5c17bb7d.md) | 253 | `result-track:35c343282475bbef5c17bb7d20832b20c97b5dafb5d09063c9523fe8f3477ff5` |
| 22 | `theorem` | [one_mem_centeredMobiusLogLowGCDSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/one-mem-centeredmobiusloglowgcdset--86e4dd092c737642fa78c5ef.md) | 267 | `result-track:86e4dd092c737642fa78c5ef5b1798da522633eb767b63e4b542e4a496f04b73` |
| 23 | `theorem` | [one_le_centeredMobiusLogAbsoluteLowGCDPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/one-le-centeredmobiuslogabsolutelowgcdpairblock--775e8531eb1357ca46eff8a5.md) | 281 | `result-track:775e8531eb1357ca46eff8a50e63d63b42d559c22dbf1f9b1b5286ceedc4cd12` |
| 24 | `def` | [nonAliasingFejerShiftWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejershiftweight--63e8d9d94e6032273c6ccda2.md) | 310 | `declaration-track:63e8d9d94e6032273c6ccda20778fac6e20773eb68231cce6eaa0bf7556d5ad3` |
| 25 | `theorem` | [nonAliasingFejerShiftWeight_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejershiftweight-nonnegative--079d3a8f1dca1415e054d534.md) | 316 | `result-track:079d3a8f1dca1415e054d534efcad707a1697b9601b5a724f18796fe77702b0f` |
| 26 | `def` | [nonAliasingFejerMobiusLogLowGCDShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiusloglowgcdshiftcorrelation--637dd95e73debd15da41d884.md) | 339 | `declaration-track:637dd95e73debd15da41d88438919f520948ec92bc355b358f9da964ad0c585b` |
| 27 | `def` | [nonAliasingFejerMobiusLogHighGCDShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiusloghighgcdshiftcorrelation--4a549e045e15bce7a744e475.md) | 346 | `declaration-track:4a549e045e15bce7a744e4753631225bebd205fdde428dbb6ff7cb2a45b2e4e5` |
| 28 | `def` | [nonAliasingFejerMobiusLogAbsoluteLowGCDShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogabsolutelowgcdshiftcorrelation--a1513ba8ee3448d2209157fb.md) | 353 | `declaration-track:a1513ba8ee3448d2209157fb0ad5d793186e22462186f5e64daea63abc8364f8` |
| 29 | `def` | [nonAliasingFejerMobiusLogAbsoluteHighGCDShiftCorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogabsolutehighgcdshiftcorrelation--40364d1dc1895eaa07658df1.md) | 360 | `declaration-track:40364d1dc1895eaa07658df157e2e01409dcc5dc80d11a642ae2e368dfc38a6c` |
| 30 | `theorem` | [nonAliasingFejerMobiusLogSquarefreeGCDShiftCorrelation_eq_low_add_high](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdshiftcorrelation-eq-low-add-high--498fe55704ac75e854ab8117.md) | 367 | `result-track:498fe55704ac75e854ab811793c2b83b5c2fe8be37fb8be39df0532637f96073` |
| 31 | `def` | [nonAliasingFejerMobiusLogLowGCDAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiusloglowgcdaggregate--d4ec6ae3b14afbad600d2316.md) | 383 | `declaration-track:d4ec6ae3b14afbad600d2316e890fe43995fd159da0260c96363aed9d6bd14ff` |
| 32 | `def` | [nonAliasingFejerMobiusLogHighGCDAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiusloghighgcdaggregate--8f49b3dc7e212c47b4eb371e.md) | 390 | `declaration-track:8f49b3dc7e212c47b4eb371e00c5e0c65f9873818531b1e045b69e5535e105ab` |
| 33 | `def` | [nonAliasingFejerMobiusLogAbsoluteLowGCDAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogabsolutelowgcdaggregate--ecf1e9c5e78640447d8a249e.md) | 397 | `declaration-track:ecf1e9c5e78640447d8a249edcca02c6dea29fb54bbae81c82175723b2d6f979` |
| 34 | `def` | [nonAliasingFejerMobiusLogAbsoluteHighGCDAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogabsolutehighgcdaggregate--abf986f63008c194ec449ea6.md) | 404 | `declaration-track:abf986f63008c194ec449ea6868424901a4e1369ed37880fac8a357c2fee0ef6` |
| 35 | `theorem` | [nonAliasingFejerMobiusLogSquarefreeGCDAggregate_eq_low_add_high](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiuslogsquarefreegcdaggregate-eq-low-add-high--1eb178f2d4b7e087496f6ddf.md) | 411 | `result-track:1eb178f2d4b7e087496f6ddfe887a43c59d383cf6901eed52e76426bd4851c51` |
| 36 | `theorem` | [nonAliasingFejerMobiusLogHighGCDAggregate_le_absolute](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejermobiusloghighgcdaggregate-le-absolute--cf7fe73f01788f872dbeb3f5.md) | 427 | `result-track:cf7fe73f01788f872dbeb3f503e92a094311824ee025a6d34962cb1b6c002cd4` |
| 37 | `def` | [nonAliasingFejerCenteredAnchorAutocorrelation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejercenteredanchorautocorrelation--9868fbbe19e59d0ad4b0c934.md) | 448 | `declaration-track:9868fbbe19e59d0ad4b0c934ab7ceb6e22463e5fcb16d807bebd61870b2a1c28` |
| 38 | `theorem` | [nonAliasingFejerCenteredAnchorAutocorrelation_le_absoluteLowGCDAggregate](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/nonaliasingfejercenteredanchorautocorrelation-le-absolutelowgcdaggregate--6cedabee1e3616791eeeebee.md) | 457 | `result-track:6cedabee1e3616791eeeebee459a1afe43bbf8c80d0e1b9608b5f2bbf8d466ff` |
| 39 | `def` | [sevenEighthsMobiusLogTypeITypeIICutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/seveneighthsmobiuslogtypeitypeiicutoff--54ea570e32bfa0548ec05745.md) | 492 | `declaration-track:54ea570e32bfa0548ec05745f421b4ab814958561832f46d2d754680b5c34826` |
| 40 | `theorem` | [one_le_sevenEighthsMobiusLogTypeITypeIICutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/one-le-seveneighthsmobiuslogtypeitypeiicutoff--76d4ef2413bfac581560e30b.md) | 497 | `result-track:76d4ef2413bfac581560e30b711fc3baea4f693c294d7b7ec35e65807c574ab4` |
| 41 | `def` | [SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/seveneighthsboundaryminimalsignedlowgcdtypeibound--45185d7aac9c28cae9663297.md) | 507 | `declaration-track:45185d7aac9c28cae966329717eb48f4a7caa7f2532875f99ce57076c140b69e` |
| 42 | `def` | [SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/seveneighthsboundaryminimalabsolutehighgcdtypeiibound--be38365d05cf3eb517ec2fa5.md) | 530 | `declaration-track:be38365d05cf3eb517ec2fa57b39cec4e9d5508f7d00ed90f177f4ef06181cee` |
| 43 | `def` | [SevenEighthsBoundaryMinimalAnchorAutocorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/seveneighthsboundaryminimalanchorautocorrelationbound--49788535202662109f9aa7e2.md) | 552 | `declaration-track:49788535202662109f9aa7e217780f8e84f7a5659fa6e3c36efd9c0fe6b6f7e0` |
| 44 | `def` | [SevenEighthsBoundaryMinimalAbsoluteLowGCDTypeIBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/seveneighthsboundaryminimalabsolutelowgcdtypeibound--34608f67470bc5e30d3a69c0.md) | 573 | `declaration-track:34608f67470bc5e30d3a69c000b25632686d2af6b343ac1084a68dacf29235a0` |
| 45 | `theorem` | [absoluteLowGCDTypeIBound_to_anchorAutocorrelationBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/absolutelowgcdtypeibound-to-anchorautocorrelationbound--60a441c92044b343b95d6879.md) | 593 | `result-track:60a441c92044b343b95d68796199fdba7d193a5e892b497100a78339d020d894` |
| 46 | `theorem` | [signedTypeI_absoluteTypeII_to_squarefreeGCDBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/signedtypei-absolutetypeii-to-squarefreegcdbound--4713c41dcf260a39f5cf3c07.md) | 614 | `result-track:4713c41dcf260a39f5cf3c07f2407640d1a3074193b7a86f29024e8d612aa490` |
| 47 | `theorem` | [signedTypeI_absoluteTypeII_to_partialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/signedtypei-absolutetypeii-to-partialdiscrepancy--dae8f4051d30dd31f36d307a.md) | 687 | `result-track:dae8f4051d30dd31f36d307a2c9db6edd3ec29d571e43be337a319f13aa5ff49` |
| 48 | `def` | [signedTypeIAbsoluteTypeIIBookkeepingExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/signedtypeiabsolutetypeiibookkeepingexponent--faf06f172e0723e833d6ac76.md) | 699 | `declaration-track:faf06f172e0723e833d6ac76826a5b4569861b5b95940aaf6add82f16e41a732` |
| 49 | `def` | [signedTypeIAbsoluteTypeIITargetExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/signedtypeiabsolutetypeiitargetexponent--237a8499e267168de7fbe7b3.md) | 702 | `declaration-track:237a8499e267168de7fbe7b3dfd73ecefcd9d76b4d8d3f93f125f495c64035f8` |
| 50 | `theorem` | [signedTypeIAbsoluteTypeIITarget_lt_bookkeeping](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogTypeITypeIIBarrier.lean/declarations/signedtypeiabsolutetypeiitarget-lt-bookkeeping--630a9d23a236fe01eaa55612.md) | 705 | `result-track:630a9d23a236fe01eaa55612a93b9b7e16c2e77f34915610f450687aca7bf388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
