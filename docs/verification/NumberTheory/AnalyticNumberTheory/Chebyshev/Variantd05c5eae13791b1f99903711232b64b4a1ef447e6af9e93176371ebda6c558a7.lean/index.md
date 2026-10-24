# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Chebyshev.Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d7c6b24c7c25968362c99314207539d8be88499",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d7c6b24c7c25968362c99314207539d8be88499`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.StarOrdered` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ChebyshevPsi` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [T](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/t--b26f3ca49a5d142c43f3ed03.md) | 29 | `declaration-track:b26f3ca49a5d142c43f3ed033ab38f180a7f579064895fe65929488a1b20d099` |
| 2 | `theorem` | [T.le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/t-le--4764f8cf48837ed101385311.md) | 41 | `result-track:4764f8cf48837ed1013853112c3e46ced4e8e4e65052a464b49812a48d25da68` |
| 3 | `theorem` | [T.ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/t-ge--f04e1d58acff43bf6da21973.md) | 80 | `result-track:f04e1d58acff43bf6da2197313459ed934919fb554200686f2fcb225a26c8daa` |
| 4 | `theorem` | [T.eq_sum_Lambda](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/t-eq-sum-lambda--7f5583070f793000bc1471dd.md) | 114 | `result-track:7f5583070f793000bc1471dd5bf4d571add938d569031df17b5c21e7ed20437b` |
| 5 | `def` | [E](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e--f28f4526f71c98cb329fa12e.md) | 124 | `declaration-track:f28f4526f71c98cb329fa12ef18743b194d2b02336f1402d98ae10e0d7991e1d` |
| 6 | `theorem` | [T.weighted_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/t-weighted-eq-sum--54e48c07fdb6e17a6d7b0e18.md) | 133 | `result-track:54e48c07fdb6e17a6d7b0e18a488a739a89c35d07966e3dc6b2aa080c932d0c4` |
| 7 | `def` | [ν](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/anonymous--968b3d081d449a22fcab44d3.md) | 165 | `declaration-track:968b3d081d449a22fcab44d37313572632059c533fb13072f63b802c05ae3029` |
| 8 | `lemma` | [ν_support](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/support--694eaa24d59963f1ae5ce953.md) | 168 | `result-track:694eaa24d59963f1ae5ce9530be06268b20f48d5731329d1d705812cb8a904f6` |
| 9 | `lemma` | [ν_sum_mul](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/sum-mul--ee901604bd71a6b22b3d5e8f.md) | 174 | `result-track:ee901604bd71a6b22b3d5e8f63f53533f17002a9a97fa21508e32e3aed9f4887` |
| 10 | `lemma` | [E_nu_expand](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e-nu-expand--4e0fa616b1d7fb327e7c3c3b.md) | 181 | `result-track:4e0fa616b1d7fb327e7c3c3b18f9d4cef73f2ceea39255d4336e74c945c7785c` |
| 11 | `lemma` | [floor_div_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/floor-div-bounds--15a78c5432b0d6ac5d13d7d0.md) | 187 | `result-track:15a78c5432b0d6ac5d13d7d05b2394864eacfb5d4e1aa9501f53f2bc871d4f61` |
| 12 | `theorem` | [nu_sum_div_eq_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/nu-sum-div-eq-zero--05bc13157f1243450d9f25f1.md) | 208 | `result-track:05bc13157f1243450d9f25f10b8e7e4c55e508ff1b4d9f67c8551d0bcff26af3` |
| 13 | `theorem` | [E_nu_eq_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e-nu-eq-one--fe65723ed2c7fe54be716bf8.md) | 218 | `result-track:fe65723ed2c7fe54be716bf8480dd1c6d59398113944464a592a8cae3b66427c` |
| 14 | `theorem` | [E_nu_period](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e-nu-period--d55cb314e7a614f8bafc327b.md) | 237 | `result-track:d55cb314e7a614f8bafc327bc4ef25c5d8b4fbc7c816de3198255d2f40b1e4c2` |
| 15 | `theorem` | [E_nu_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e-nu-bound--483ebbd21bda86213eb3651d.md) | 252 | `result-track:483ebbd21bda86213eb3651dbc735539a9e5c13ce57034194c82fceba6bfe87e` |
| 16 | `def` | [U](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u--e5df2f2a1514f6daae0c54ce.md) | 280 | `declaration-track:e5df2f2a1514f6daae0c54ceafc518418a4f71be28888378e104e021f2165ea0` |
| 17 | `theorem` | [psi_ge_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-ge-weighted--f9032efaf19a07209ff82f44.md) | 289 | `result-track:f9032efaf19a07209ff82f44ce103af70f02f8f374aa22c8de4470adbdbf94b2` |
| 18 | `theorem` | [psi_diff_le_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-diff-le-weighted--07dc94ba0bb6ca4e3df89366.md) | 304 | `result-track:07dc94ba0bb6ca4e3df89366fb2af6de1d4238d2fcb820b6a180331b9d475d56` |
| 19 | `def` | [a](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/a--ce24cd29b91993ced2732b26.md) | 327 | `declaration-track:ce24cd29b91993ced2732b26025d0620c94685c0e7518a20952a3dd08ab9e840` |
| 20 | `lemma` | [a_simpl](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/a-simpl--55cd9124351eac9f20573ab0.md) | 329 | `result-track:55cd9124351eac9f20573ab0f709e9c1319d3dfe8a27f3b90c9b9ede415cf355` |
| 21 | `theorem` | [a_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/a-bound--c7cc4bc22ae4ceb5bec6e0a4.md) | 340 | `result-track:c7cc4bc22ae4ceb5bec6e0a4ec4b2addc31cbe3b490aa6d615816ec4d3737904` |
| 22 | `def` | [e](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/e--fb510a57159e92ab9bd45f79.md) | 344 | `declaration-track:fb510a57159e92ab9bd45f79fcd4f1f761f7eceb4f3fd32e548ed362ef9c8bf2` |
| 23 | `lemma` | [U_bound.lemma_1](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-1--3a1376c83a816b9e88fc2973.md) | 347 | `result-track:3a1376c83a816b9e88fc29738d05d862eeb4e932614efcbc6fa176e59a2502c8` |
| 24 | `lemma` | [U_bound.lemma_2](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-2--35bf63c409b715dde2f32e11.md) | 351 | `result-track:35bf63c409b715dde2f32e11f39368bd7fa9137a42e381308d384a88b453356e` |
| 25 | `lemma` | [U_bound.lemma_3](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-3--0665f50d8757c7f30fd02b95.md) | 356 | `result-track:0665f50d8757c7f30fd02b955464d8333c20b7dbb720ef7f82bdd133954d1e98` |
| 26 | `lemma` | [U_bound.lemma_4](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-4--d69e702fe8ba07d6e4ef6236.md) | 363 | `result-track:d69e702fe8ba07d6e4ef62361c4ba6ab908e8997d572ea0253fa4139cfdd9060` |
| 27 | `lemma` | [U_bound.lemma_5](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-5--70442f7b8a3f055f664bd80d.md) | 372 | `result-track:70442f7b8a3f055f664bd80d47bb96e1f49d20fb1b5f177a6f151e24c74b3d9d` |
| 28 | `lemma` | [U_bound.lemma_6](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound-lemma-6--103bf9f397914c098f169fd3.md) | 375 | `result-track:103bf9f397914c098f169fd3897aed366f7547bbd2643347d29ddd350508d3ec` |
| 29 | `lemma` | [Finsupp.abs_sum_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/finsupp-abs-sum-le--fac1a7122a333d671df76066.md) | 378 | `result-track:fac1a7122a333d671df76066740f25abaa22263d4171e2d3a15f5c07e41186e1` |
| 30 | `theorem` | [U_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/u-bound--50691f8d3bfe434d53eab160.md) | 389 | `result-track:50691f8d3bfe434d53eab160f818be201b364ee67b29caf78badc8387e278913` |
| 31 | `theorem` | [psi_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-lower--1719a0049299f6aef6edf793.md) | 451 | `result-track:1719a0049299f6aef6edf7934ec8ac95a2b5006bff895b19c0d33b4cfbce6de4` |
| 32 | `theorem` | [psi_diff_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-diff-upper--99638326221d17f612d1a28f.md) | 462 | `result-track:99638326221d17f612d1a28f39a256f9df28f83ba14df4974b0aeaabe37af4c4` |
| 33 | `theorem` | [psi_num](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-num--ac78e20cb0d52d82c87fb573.md) | 473 | `result-track:ac78e20cb0d52d82c87fb573742fb03202ea32b5f6ebc7f0f7314d53d0097b34` |
| 34 | `theorem` | [psi_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-upper--8cff85b1739ee35f06675a51.md) | 508 | `result-track:8cff85b1739ee35f06675a510775ecc4889ec22d7a9b233ca8ad8f8321e8d31f` |
| 35 | `theorem` | [allChecks_11723](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/allchecks-11723--ee7d4ec33862551a30f33a21.md) | 586 | `result-track:ee7d4ec33862551a30f33a213e37bf035c4c26cd2d93473bbad4bd53927c596c` |
| 36 | `theorem` | [psi_num_2](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-num-2--b93e1d04031a131e5c4058bb.md) | 595 | `result-track:b93e1d04031a131e5c4058bb30fcca7346487574cb8c347ac582e4139381fbe3` |
| 37 | `lemma` | [hlog_y](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/hlog-y--062b69f54540a2bc5772eb0f.md) | 613 | `result-track:062b69f54540a2bc5772eb0fa8333487c6c054aa261a0a5a7a37b09101c16965` |
| 38 | `theorem` | [psi_upper_clean](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/declarations/psi-upper-clean--a74d59682bef49cb48e93887.md) | 625 | `result-track:a74d59682bef49cb48e93887c84907f6e94b5897ab49eb37b27b8072a9e3c52b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
