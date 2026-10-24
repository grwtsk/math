# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6843b65185653d9ec6136475dcd4275e45fb25e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6843b65185653d9ec6136475dcd4275e45fb25e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/storage--da57ca15c1c251151ada5b94.md) | 26 | `declaration-track:da57ca15c1c251151ada5b9433dab5e1889157dd4b3048b4153f33bf9000b460` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/initialstorage--f0a1dbc07c534979f9863e8a.md) | 29 | `declaration-track:f0a1dbc07c534979f9863e8a69c854b39b84bdd0d172ffeffcfd85d8745f66c4` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/drift-identity--cf867623f0d1a6f28a57cf00.md) | 32 | `result-track:cf867623f0d1a6f28a57cf00567b8e397d80c0d7efeebd31d0e2cbad995f9140` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/hasderivat-storage--57dcfc996b0f6fe5c5316d7c.md) | 39 | `result-track:57dcfc996b0f6fe5c5316d7c45fc26f7f1a8171c098b22b465f886f474cfcf42` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/hasderivat-weight--085770b0c7c919ccf1d40d8a.md) | 48 | `result-track:085770b0c7c919ccf1d40d8a250e067f9c19abf54041b137f6ef7e12b4462d9b` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/corrector-cancellation--0a8f0fd16d2cb5bce1d75acf.md) | 55 | `result-track:0a8f0fd16d2cb5bce1d75acf58aa78464292988ef3d2072a2eb9fa39519055a1` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/hasderivat-corrector--a06f8fd8e8f29dd675f512fa.md) | 61 | `result-track:a06f8fd8e8f29dd675f512fa188883898b4f5e0ac89d4507356e0dc3020b90bc` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/jump-continuous-corrector--6dfbf2b18feac8dd28af8d78.md) | 71 | `result-track:6dfbf2b18feac8dd28af8d7851a4adb18c3419f337f652f35f314628c1b782bb` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/jump-jumping-corrector--34853448f36d096fda8a5cb7.md) | 77 | `result-track:34853448f36d096fda8a5cb7ee34064679f599a4e487712ba9e2026d84e069ee` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/storage-endpoint--09cca97fd81bc5a62b90ef83.md) | 84 | `result-track:09cca97fd81bc5a62b90ef83b72cb55212d2dedee43e26df1eb300b0394e1504` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/storage-complete-square--54f36351b9a7ce203b8d8bab.md) | 87 | `result-track:54f36351b9a7ce203b8d8bab07032077cba94e0c97698c60b8cfa6b49247e127` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/initialstorage-reconstruction--8fd282715adc3ebab7f6da20.md) | 93 | `result-track:8fd282715adc3ebab7f6da2014d19f72c5a77a3c84e4920f3003d9dd4292d0ef` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/initialstorage-abs-sub-four--666037ede56633c5c8b0fc31.md) | 99 | `result-track:666037ede56633c5c8b0fc317e3e0b678bcc1e5e22ca257dc34325c74662e99d` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/initialstorage-abs-sub-four-linear--701aba7f9a0d3192de2227f5.md) | 120 | `result-track:701aba7f9a0d3192de2227f5d92076b458e4701421c02401e7c98395f32d0c1b` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/initialstorage-epsilon--35d0f89a024057a3e2ec44d7.md) | 128 | `result-track:35d0f89a024057a3e2ec44d747cbb1c582cb41ccaf9d3d1832273a04f33ccb10` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/obstruction-coefficients--aa16ed6999ed06cfc335314f.md) | 144 | `result-track:aa16ed6999ed06cfc335314f273e8081b9e06dddf5847b6cf374865bf747ead8` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/obstruction-product--a12bb25838b463f640519565.md) | 153 | `result-track:a12bb25838b463f64051956568308d1cb7637b5b288596d64f6aed06f2a03a37` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticimpulse--ed0fe0b75b240987a218cd7e.md) | 162 | `declaration-track:ed0fe0b75b240987a218cd7e6d4232bd496131cf67fa1db2b1a66d0aebd393cb` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticmajorant--311f536d6901cdd6c2118930.md) | 166 | `declaration-track:311f536d6901cdd6c21189304e6b108b901e7c7bd22f5124cc9a33ac538d9781` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticprimitive--cc6682491ff832b308dfa1a7.md) | 170 | `declaration-track:cc6682491ff832b308dfa1a7a6bca683e13260a0590c351bab9d42d516861b3d` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticconstant--40d73935a00fdc1a71376fec.md) | 175 | `declaration-track:40d73935a00fdc1a71376fecb0bd44e604b4b0e0cb64490c00287b7bc39cd236` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticimpulse-nonneg--cb8c1051ddf502b5562e27c6.md) | 177 | `result-track:cb8c1051ddf502b5562e27c65640f9e8dc31a306f3cbf1a57bac69387f4fe74c` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticimpulse-le-log--449eb3f7a49292cc6769277a.md) | 182 | `result-track:449eb3f7a49292cc6769277a50d09878c04d6e87b4c2428ffa682dcf229e7474` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/log-atom-le-quadraticmajorant--c1b2968c32e86cb57c8add46.md) | 189 | `result-track:c1b2968c32e86cb57c8add46b4db5fdb7f4ebc4b7ebf328bafd3980e46945da2` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticprimitive-hasderivat--6d8aa4dbdb809312c46ed384.md) | 205 | `result-track:6d8aa4dbdb809312c46ed384d5e5221d29a4abe2c2133b226ee05c5fc190ec44` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticprimitive-one--e73ca503f0ecf3b8d83dfba1.md) | 240 | `result-track:e73ca503f0ecf3b8d83dfba195d441e0323c3df0ca1d4d4afde2c53fcbebf76e` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticprimitive-nonpos--f79f8203279f43f90e7a5bd2.md) | 244 | `result-track:f79f8203279f43f90e7a5bd27dc67d4ed8f190a96444d916ceb290a4e55bc8e3` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticmajorant-continuouson--21489264c99b0d50e98e524b.md) | 253 | `result-track:21489264c99b0d50e98e524b7c2007f1916ede5e543123e4c99ce2d67acc233f` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticmajorant-integral--61e159f8dbb9abf7a68db5c6.md) | 263 | `result-track:61e159f8dbb9abf7a68db5c646e2226ece66e6cb8526c7ad8c78123ac320e16c` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticmajorant-integral-le--216a4e1b809dfe21ada2bb55.md) | 276 | `result-track:216a4e1b809dfe21ada2bb559bb6dff2778c67dc48e7b99c615715ca75c3ceaf` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticimpulse-sum-le--cd8acfa1a7b3b09ffbd6a137.md) | 283 | `result-track:cd8acfa1a7b3b09ffbd6a1372507ddf2d653aba809f798dee635556d5b0609f7` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/declarations/quadraticimpulse-closed-cutoff-le--0977c46b6f810a21a9716ef5.md) | 325 | `result-track:0977c46b6f810a21a9716ef53d109eeb7b838757e79631e3fff9c8dbbca82cb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
