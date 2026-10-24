# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "447ff24c15a34384ca9881843dbb8264f46bd6df",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `447ff24c15a34384ca9881843dbb8264f46bd6df`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean.json)

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
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/storage--4295abedb71df7d4d6dc00e3.md) | 34 | `declaration-track:4295abedb71df7d4d6dc00e340c28907adc2dcff72e13fbb9dea64937416c3b2` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/initialstorage--a98a7d48a32ef98ac847d455.md) | 37 | `declaration-track:a98a7d48a32ef98ac847d4553189c5b175f51476a3c9ecf6d7b74a66f14a2350` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/drift-identity--836217489399958ba0f2637f.md) | 40 | `result-track:836217489399958ba0f2637f3a47b4146c318a4ba34b69594911b7473db5964e` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/hasderivat-storage--eb0311d93c2facc152e319e3.md) | 47 | `result-track:eb0311d93c2facc152e319e361f9d6d526d13c6e0d92fb88d97825313b946534` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/hasderivat-weight--95cd1dfe266b9112d8ada6b6.md) | 56 | `result-track:95cd1dfe266b9112d8ada6b6b1796e56166c704c1a4a0f0d8cec5d32a3b2745b` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/corrector-cancellation--46417337e3412bc71bbd7f1a.md) | 63 | `result-track:46417337e3412bc71bbd7f1adc88a3053fab799c1e4fe4d3575569e51a14d389` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/hasderivat-corrector--01b29e25d7b8dab5f0f58816.md) | 69 | `result-track:01b29e25d7b8dab5f0f58816522249a5041acd8136f719f926bb8bc050611871` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/jump-continuous-corrector--4fd0cf375684397c3cf3f843.md) | 79 | `result-track:4fd0cf375684397c3cf3f843eeaa232a1c055b56620f33f35c39644f8601c084` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/jump-jumping-corrector--81cf88a8f1b83791049ec98a.md) | 85 | `result-track:81cf88a8f1b83791049ec98ae7e1456bf0ff2471efe2a6d9d9f9657250e75fed` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/storage-endpoint--a68f5e1cc38f2e1798622213.md) | 92 | `result-track:a68f5e1cc38f2e1798622213746839a3661289e92f5ae0ea910a46d8d7fa449b` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/storage-complete-square--714d2f769dd4d997d3700154.md) | 95 | `result-track:714d2f769dd4d997d370015431ed8b4d432c31770a9640aeefa4bb0014f17b94` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/initialstorage-reconstruction--2a74ce3bfc401054e4c6c7c3.md) | 101 | `result-track:2a74ce3bfc401054e4c6c7c3f4cac2dc61348999b551ed20649c35542ab10876` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/initialstorage-abs-sub-four--933501c718841872445380a0.md) | 107 | `result-track:933501c718841872445380a01bb3a5327550ee0516521b6e4ad4b9331fb2860d` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/initialstorage-abs-sub-four-linear--d101c6508a65e7048593eb8c.md) | 128 | `result-track:d101c6508a65e7048593eb8cf8975875ad458b50c77a7d11e05b6d6dae639ec8` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/initialstorage-epsilon--e3f8aefcbeb9f88946085f93.md) | 136 | `result-track:e3f8aefcbeb9f88946085f93a6ef947a0bd5ba12e1afac5b7bcac86ac4c21749` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/obstruction-coefficients--560d466c3301fb60fd360d06.md) | 152 | `result-track:560d466c3301fb60fd360d0608dcfacae884f6f3d37453c646d5f72c144dacd1` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/obstruction-product--48095601bac23de611b5706e.md) | 161 | `result-track:48095601bac23de611b5706ecfde4c9e3b664e2d2df6a9105e712cac7883528f` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticimpulse--360656ce77f488ca5702f5e8.md) | 170 | `declaration-track:360656ce77f488ca5702f5e822abf0b0012717f55fa51478a552a1bb253346dc` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticmajorant--37f017134e61c4ab22c66d0e.md) | 174 | `declaration-track:37f017134e61c4ab22c66d0e22eedd02da46027d9e3b32468cd7e558bbac49f3` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticprimitive--7ce179cb7aba7729697d011d.md) | 178 | `declaration-track:7ce179cb7aba7729697d011d2d612945c41e9b0b95730afb58100a12bd603556` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticconstant--e501c1516160bc004a1fdb58.md) | 183 | `declaration-track:e501c1516160bc004a1fdb583a441b2f56ef14d3d604c537d8357fef641a74c8` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticimpulse-nonneg--d2143688110b52ef1653acd3.md) | 185 | `result-track:d2143688110b52ef1653acd3ed3f42c8dc36d23ca785bad85dfb4b4092984b42` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticimpulse-le-log--886d677ed2c74c781647a607.md) | 190 | `result-track:886d677ed2c74c781647a607943e6593f48bd39b96d6b8f5d7f27ca73ba01030` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/log-atom-le-quadraticmajorant--7f0fe2762f143314fd945f58.md) | 197 | `result-track:7f0fe2762f143314fd945f581374f3387498f8fd81a12cc6f41b38389cb43a17` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticprimitive-hasderivat--9cb9ed0b2afd06b76c53dc2b.md) | 213 | `result-track:9cb9ed0b2afd06b76c53dc2b4f8071bd6bc1ece253d6e934efe3abd3ecf95cfa` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticprimitive-one--a8c3578289f621c49b557dea.md) | 248 | `result-track:a8c3578289f621c49b557dea6f8b4319e702862cc1c3b23e97f75a52d252c43c` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticprimitive-nonpos--dd4fdcab496c5ce4e0c2c885.md) | 252 | `result-track:dd4fdcab496c5ce4e0c2c885c0a88d6e0f2099bf11fe394e5ac62d8a39370682` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticmajorant-continuouson--249a45e8bcbf54b94376d218.md) | 261 | `result-track:249a45e8bcbf54b94376d2189ae932f619f8d158e01aa600793b57f85cb141e2` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticmajorant-integral--03b8312eb9ad248189fff2c1.md) | 271 | `result-track:03b8312eb9ad248189fff2c117ee510b89018f56988b683c4e2b5976d0cf4fe0` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticmajorant-integral-le--8b89931a68c52c5e1efc35b3.md) | 284 | `result-track:8b89931a68c52c5e1efc35b38394187cc91bfaca6731c240caba859cfa51fad5` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticimpulse-sum-le--40e8de4bbb84019b28349fad.md) | 291 | `result-track:40e8de4bbb84019b28349fad580c60e1ca005c67b9ec938ceceab61d6691f5ad` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant79636ea264b829e9d72d0a41e7f6a4955c071dbe9a6c9ba64461d69580982312.lean/declarations/quadraticimpulse-closed-cutoff-le--3ac053bff7cd288146928a2b.md) | 333 | `result-track:3ac053bff7cd288146928a2bb417ccbdfcb243938b7087338cef45010c5e8493` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
