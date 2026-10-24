# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PackingObservations.Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e916e8853ecd803d63096c8fe933390d74b6ab9",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e916e8853ecd803d63096c8fe933390d74b6ab9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cappedValuation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation--e90a1c2219fc79c8c13cdfbf.md) | 30 | `declaration-track:e90a1c2219fc79c8c13cdfbf337d64be81f1a5126203c79e9d187463bf465e71` |
| 2 | `theorem` | [cappedValuation_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-le--5873c11ce4faa879685093ba.md) | 34 | `result-track:5873c11ce4faa879685093ba767a985899de8f0632b1c4fd61181b6eefc4cfd3` |
| 3 | `theorem` | [cappedValuation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-zero--41cd305761c7f87f442e9be4.md) | 41 | `result-track:41cd305761c7f87f442e9be418d100c18d932f19ce1b8f002555ab9e5111b2b1` |
| 4 | `theorem` | [cappedValuation_projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-projection--22ccd9452706bf7fd0c0eb9c.md) | 45 | `result-track:22ccd9452706bf7fd0c0eb9c7138926b0f5dc420297d43ccd52ec85a0457e4af` |
| 5 | `theorem` | [cappedValuation_power_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-power-dvd--b6e647b10a16ac1bd37b61f0.md) | 54 | `result-track:b6e647b10a16ac1bd37b61f0156cb73674d0cc4ce4a80160ac3186e391609fcc` |
| 6 | `theorem` | [cappedValuation_eq_of_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-eq-of-profile--1fb94ad87e8a155d43c770e8.md) | 66 | `result-track:1fb94ad87e8a155d43c770e8d6113ee19e4a4de57d2d4390ef00a803abb4cdef` |
| 7 | `theorem` | [cappedValuation_eq_of_fin_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/cappedvaluation-eq-of-fin-profile--d6969d506e8ab9d42c25e048.md) | 77 | `result-track:d6969d506e8ab9d42c25e048b547a586fc987463c0cff8ddeedb6c4046157263` |
| 8 | `def` | [signature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/signature--b8c8737bede7f109b563aae2.md) | 87 | `declaration-track:b8c8737bede7f109b563aae2cce181dbd6cb8a5d913f992736bea5240697feac` |
| 9 | `def` | [ObservationalEquivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/observationalequivalence--2a9b6da3049646b56abe91fb.md) | 95 | `declaration-track:2a9b6da3049646b56abe91fb5444342a9714b5f8832b10b45f1cd5ea2c112f8c` |
| 10 | `theorem` | [signature_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/signature-eq-iff--1b527e75d9ee0fb3d84e5fce.md) | 99 | `result-track:1b527e75d9ee0fb3d84e5fce489c92f1a1ef94a5d792b74e05f42e1a0d623f40` |
| 11 | `theorem` | [support_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/support-partition-refinement--22462f15b9b6e7a64b21f838.md) | 120 | `result-track:22462f15b9b6e7a64b21f83877b2c8389bd0c00d335d941acc1a4ed1e148b28a` |
| 12 | `theorem` | [depth_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/depth-partition-refinement--dcdb0e621416ea038e6460aa.md) | 128 | `result-track:dcdb0e621416ea038e6460aa1f4fdb1dd85e1b5456eabef24e4b594a23553fa1` |
| 13 | `theorem` | [signature_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/signature-partition-refinement--b89094a10ac3a1c9b6ed7c36.md) | 137 | `result-track:b89094a10ac3a1c9b6ed7c36a6a6b04f0dcfe5235bdbc651fa7ca63863da6022` |
| 14 | `structure` | [Packing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/packing--8b48768a066adcb6be415020.md) | 144 | `declaration-track:8b48768a066adcb6be415020345abb535aa137222d0e9fb06897e7e628c98436` |
| 15 | `def` | [Packing.survivorSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/packing-survivorset--187169ca470ee4f1d981d0c5.md) | 161 | `declaration-track:187169ca470ee4f1d981d0c53e6ee839e0498fb27c92dc57cc2a2f9a44210991` |
| 16 | `theorem` | [Packing.mem_survivor_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/packing-mem-survivor-iff--a089a29f9cb31b374f5ad495.md) | 166 | `result-track:a089a29f9cb31b374f5ad4955a1ec2e28fd6b46bb6c9685de96a30c4ecd92a18` |
| 17 | `theorem` | [Packing.exclusion_witness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/packing-exclusion-witness--d8a7f03f933a9fc6714d0d00.md) | 186 | `result-track:d8a7f03f933a9fc6714d0d009a2837ab2a6acdeb88e64158eb47415e3950879a` |
| 18 | `theorem` | [Packing.relative_minimality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/packing-relative-minimality--f46a769b48d4ccaf4ab658ac.md) | 196 | `result-track:f46a769b48d4ccaf4ab658ac2c089be6aa80f300c974093aa3b47d4222f6953f` |
| 19 | `structure` | [RawPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/rawpacking--03ecf9035749f98e888371c5.md) | 207 | `declaration-track:03ecf9035749f98e888371c5691b1347fbff9f1e6c90f8bc4f95cedd963e2ad5` |
| 20 | `def` | [RawPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/rawpacking-survives--3b7a0478c688d21cc0f2e4c7.md) | 216 | `declaration-track:3b7a0478c688d21cc0f2e4c79852d95b92938e45e6b3283a7e55540826b6569a` |
| 21 | `structure` | [ProperPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/properpacking--ef31728e3fc9d483078cf83e.md) | 220 | `declaration-track:ef31728e3fc9d483078cf83e918419887792c8658ce4581556071a0e2dee7696` |
| 22 | `def` | [ProperPacking.InRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/properpacking-inrange--a0549acde08376400ecb964c.md) | 231 | `declaration-track:a0549acde08376400ecb964c2e96e2df26246fa8dbf473e7bc827ea648c847f8` |
| 23 | `def` | [ProperPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/properpacking-survives--0aade3c098fdecc28f7d908f.md) | 236 | `declaration-track:0aade3c098fdecc28f7d908f54462953d6bf54ef6405935e6e7cafed39842e7c` |
| 24 | `theorem` | [raw_excludes_visible_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/raw-excludes-visible-prime--9d87edf84038bd5b6631e0bc.md) | 241 | `result-track:9d87edf84038bd5b6631e0bce9c94edbd46279e6095ba34a14f93b7a912be831` |
| 25 | `theorem` | [proper_preserves_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/proper-preserves-primes--4231cd397b634be062dc0a6c.md) | 249 | `result-track:4231cd397b634be062dc0a6c94c4d10463db4cefba6da53e5554604aa7aedc10` |
| 26 | `theorem` | [raw_support_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/raw-support-monotone--7b0fd21ee12374ad98e04217.md) | 257 | `result-track:7b0fd21ee12374ad98e04217bb652bcc2cf7f315a7088c08802fe942d0cbef05` |
| 27 | `theorem` | [zero_not_nondivisible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/zero-not-nondivisible--56f17d306bf9b4904484fb01.md) | 264 | `result-track:56f17d306bf9b4904484fb014ef2ef8d9f195bb68b1856014a8342d2813f7b74` |
| 28 | `theorem` | [shallow_observation_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/shallow-observation-collision--77b9f9f192b039e35bbe80f1.md) | 268 | `result-track:77b9f9f192b039e35bbe80f139d62d1bb98d5a3096e973cbb86a89f2e63f6f91` |
| 29 | `theorem` | [deeper_observation_separation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/deeper-observation-separation--cbe3b8939742b6da20ed49a0.md) | 276 | `result-track:cbe3b8939742b6da20ed49a0686f5ba89d04199bb13bfdf9548e5347eba2ffc8` |
| 30 | `theorem` | [prime_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/prime-power-period-count--02b10cc0e24f992bea5a08d3.md) | 285 | `result-track:02b10cc0e24f992bea5a08d39c43c076295a6137abedcf925e6171a1f833bbb5` |
| 31 | `theorem` | [next_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/next-power-period-count--45d62a011b5118b89174bd87.md) | 291 | `result-track:45d62a011b5118b89174bd875a806fc49f02a47f761c86d62fc365e28bb078e9` |
| 32 | `theorem` | [exact_valuation_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/exact-valuation-shell--eda4008cae4675daea9c73ba.md) | 297 | `result-track:eda4008cae4675daea9c73ba109d19bffe386434fb3ef463556eca5da8669312` |
| 33 | `theorem` | [exact_valuation_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/exact-valuation-period-count--4cd048765fadb7c1760716a7.md) | 304 | `result-track:4cd048765fadb7c1760716a761912670b8d0c620c5e6067d79b616b09ab40520` |
| 34 | `theorem` | [prime_power_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/prime-power-period-frequency--5e1bf6fed6c2a14a54a87a8e.md) | 328 | `result-track:5e1bf6fed6c2a14a54a87a8eb2f8ce0fdf0cd6c67b4f16f55734223c30353eac` |
| 35 | `theorem` | [exact_valuation_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/exact-valuation-period-frequency--ed1f0d68ca6911d5e1a07137.md) | 338 | `result-track:ed1f0d68ca6911d5e1a07137fbda45dd6dba0f986e6e1abbea9542cc79562b31` |
| 36 | `theorem` | [logarithmic_divisibility_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/logarithmic-divisibility-scale--694081be45eab3312d7d94ea.md) | 350 | `result-track:694081be45eab3312d7d94ea7c1190462f9fa75f8b7f3446497a117b8a454380` |
| 37 | `theorem` | [bounded_proper_classification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/bounded-proper-classification--a0114f64b833ee5082932704.md) | 357 | `result-track:a0114f64b833ee5082932704dfc57cffced5af707f3591256f580276a71a7685` |
| 38 | `theorem` | [raw_survival_implies_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/raw-survival-implies-prime-components--566448c11b42dbccb7c7d08a.md) | 375 | `result-track:566448c11b42dbccb7c7d08a8b43987a52c8c2e494df142f4b89a071d6e66c01` |
| 39 | `theorem` | [proper_preserves_two_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/proper-preserves-two-three--a1de4d3763faae58b64252bb.md) | 390 | `result-track:a1de4d3763faae58b64252bb4dec30b4cadc996e3f6a0edddf2cbcdc74ae8ab5` |
| 40 | `theorem` | [proper_preserves_translated_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/proper-preserves-translated-prime-components--f7b7b72c5ce5caee2bc2d171.md) | 411 | `result-track:f7b7b72c5ce5caee2bc2d17161479bbf1029707af2c20febe18afcfc086491cb` |
| 41 | `theorem` | [zero_depth_keeps_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant5490172f0caa51971e2e9f78135cd9641664854ae3f565afa6d2920aeb50f492.lean/declarations/zero-depth-keeps-composite--9134cf11c22a4ac290db30ca.md) | 420 | `result-track:9134cf11c22a4ac290db30ca9a4d8214e237a0751a328b21cbaf6601588cd70f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
