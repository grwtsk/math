# Verification target: GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c4ebd57b68876c8b7831b95d772c05090abbea",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c4ebd57b68876c8b7831b95d772c05090abbea`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteTranslationProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteTranslationProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegrableOn` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/shift--bc3b5e8dbf126e24087fa845.md) | 18 | `declaration-track:bc3b5e8dbf126e24087fa845969417d54e2ffcb1c02f97a6a48f3abc37d12183` |
| 2 | `def` | [note](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/note--aaba05eeec2830783b041459.md) | 21 | `declaration-track:aaba05eeec2830783b041459204d32b075cbf42dd26537d2e0b323a4d3094a9f` |
| 3 | `theorem` | [shift_add](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/shift-add--47b19dcf3a4324b415e6b1d0.md) | 24 | `result-track:47b19dcf3a4324b415e6b1d0474ce31794ff551134a3eb1b925b39dc5812eb40` |
| 4 | `theorem` | [shift_smul](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/shift-smul--709401f22cdd0550f0e7ef76.md) | 29 | `result-track:709401f22cdd0550f0e7ef764cb7affe345a1efead7fde57d5b0f12764ac66a5` |
| 5 | `theorem` | [shift_sum](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/shift-sum--8c2fb341610734fe529a8285.md) | 34 | `result-track:8c2fb341610734fe529a8285660d18fd33fa0822eae9e6bb087bbfabc6fa2e54` |
| 6 | `theorem` | [shift_comp](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/shift-comp--c63635b903b2eaabc5f1e6a7.md) | 40 | `result-track:c63635b903b2eaabc5f1e6a78907268ddd9b6077454f7ac72f7ae4a80215a136` |
| 7 | `def` | [signedExpansion](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/signedexpansion--5807dd0551ad19d81e607608.md) | 54 | `declaration-track:5807dd0551ad19d81e60760883d319298a5c0d71f3b0c0d10de366a78923b17a` |
| 8 | `theorem` | [signedExpansion_insert](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/signedexpansion-insert--9ef54f181c3a1be7598ef6c4.md) | 58 | `result-track:9ef54f181c3a1be7598ef6c4bfc466d1ba93c2503d03e424a2bed7a885e1d521` |
| 9 | `def` | [cascade](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/cascade--0b3fb6202b8bdc1520a09fdf.md) | 82 | `declaration-track:0b3fb6202b8bdc1520a09fdfda933c0227aebb5ca01b62583765dd78801e19c7` |
| 10 | `theorem` | [cascade_eq_signedExpansion](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/cascade-eq-signedexpansion--e60c2aca6330088632b104c7.md) | 85 | `result-track:e60c2aca6330088632b104c79173dec38d39290750e37b3130be9fd88f9f02f4` |
| 11 | `theorem` | [cascade_order_independent](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/cascade-order-independent--a0809587786bb324b3ffa69b.md) | 106 | `result-track:a0809587786bb324b3ffa69b7ae1d05299fb06d3df05e2f714fd90cf1fdfadcd` |
| 12 | `def` | [primeWeight](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeweight--b264fe0ce8397c187f356723.md) | 116 | `declaration-track:b264fe0ce8397c187f3567235f7e8865818771799c8d2f7bb33706177d9e68d4` |
| 13 | `def` | [primeDelay](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primedelay--40225eddd4fdcedd61033ffd.md) | 117 | `declaration-track:40225eddd4fdcedd61033ffdf91bd5dc93fcfbe8101832ae9101bcea363c44cb` |
| 14 | `def` | [primeProduct](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeproduct--e43fd37f7da857eff2649b89.md) | 118 | `declaration-track:e43fd37f7da857eff2649b89e128ab0e2f3adf9ce82e26c90d52f5cf1f2a58e1` |
| 15 | `theorem` | [primeDelay_nonneg](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primedelay-nonneg--03a52b256c35ccac981ce9eb.md) | 120 | `result-track:03a52b256c35ccac981ce9eb8409a15338b255b500f024ec19b0d6ae119f85c5` |
| 16 | `theorem` | [primeProduct_squarefree](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeproduct-squarefree--8fa6ef745a084b59318b9fe6.md) | 123 | `result-track:8fa6ef745a084b59318b9fe6bcfe74496e8a370e793421a7939eaf3b7682721d` |
| 17 | `theorem` | [primeProduct_primeFactors](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeproduct-primefactors--188f9911ef57bd82ee15971a.md) | 131 | `result-track:188f9911ef57bd82ee15971a7bb22805ef80e528bb2a09773a39f02c1d302e50` |
| 18 | `theorem` | [primeProduct_injective_on_primes](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeproduct-injective-on-primes--6dce86789af572e59d62820d.md) | 134 | `result-track:6dce86789af572e59d62820d44ed1606aba478677c7e6fb9fcda313480cbcd01` |
| 19 | `theorem` | [moebius_primeProduct](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/moebius-primeproduct--20d532ea3a4334a62acd89bd.md) | 139 | `result-track:20d532ea3a4334a62acd89bd469db01a52e2692bc1dce2afb978787b408403f5` |
| 20 | `theorem` | [primeProduct_positive](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeproduct-positive--b7118ff203e33b6b29b8030e.md) | 146 | `result-track:b7118ff203e33b6b29b8030eb3e36a0911b320003565bceb35787677355207c0` |
| 21 | `theorem` | [primeDelay_sum](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primedelay-sum--be7a0007b864fc9803c23512.md) | 150 | `result-track:be7a0007b864fc9803c23512a188eef0654eac4264f64c4faff52ed6d6353116` |
| 22 | `theorem` | [primeWeight_product](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primeweight-product--40d1424147eb9d9ab7904fda.md) | 156 | `result-track:40d1424147eb9d9ab7904fdaba1d6bef88cde0e476c2ceedb24ba0ecaa642300` |
| 23 | `theorem` | [signed_prime_coefficient](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/signed-prime-coefficient--71f9f14199e3f48f5fc44d0e.md) | 165 | `result-track:71f9f14199e3f48f5fc44d0e81ea20537ac575830c29c0e3fd56d59f8ca57f24` |
| 24 | `theorem` | [prime_cascade_exact](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/prime-cascade-exact--43c1b83e2fa6ec22cb0989e8.md) | 174 | `result-track:43c1b83e2fa6ec22cb0989e8bebb5c443f41b2fd7144989512388f154a63fd5a` |
| 25 | `theorem` | [subset_squarefree_reindex](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/subset-squarefree-reindex--1214adda0ea26238155050c0.md) | 190 | `result-track:1214adda0ea26238155050c0ca20ef650d2df768dc99fd82e38bdcb231a845ba` |
| 26 | `theorem` | [subset_moebius_reindex](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/subset-moebius-reindex--3a1971999518033668b22d0d.md) | 225 | `result-track:3a1971999518033668b22d0d25c286504dd6f272acb98e264c124cdfbd894a73` |
| 27 | `def` | [baseWave](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/basewave--b193a3d19e9d758b923e995f.md) | 238 | `declaration-track:b193a3d19e9d758b923e995f7f8aa8cb8551b5d9cd1cabea6756b377bb98edf4` |
| 28 | `def` | [atom](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/atom--f1bf905f339aa7a88d280f08.md) | 241 | `declaration-track:f1bf905f339aa7a88d280f08944fa8fa8a61ca6b55f63f85114e4be6d58ae044` |
| 29 | `theorem` | [baseWave_causal](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/basewave-causal--da0d6fd3f2c14fb08d5f9830.md) | 245 | `result-track:da0d6fd3f2c14fb08d5f98309b05cd974ff66e52a10f367895a58a0dcc8d8ca8` |
| 30 | `theorem` | [exp_negative_half_log](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/exp-negative-half-log--9884426d4fcf534e27fe357e.md) | 248 | `result-track:9884426d4fcf534e27fe357e76ec49d2a34a437ff5ab6ceec9546576475bd82a` |
| 31 | `theorem` | [atom_eq_scaled_shift](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/atom-eq-scaled-shift--2fe5cd13b4c0a7212d1423ea.md) | 253 | `result-track:2fe5cd13b4c0a7212d1423ea2e1745570bb1445b74cc93d8c36321089997e70b` |
| 32 | `def` | [primeState](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primestate--0f9baec303e27a2de5b43ef1.md) | 268 | `declaration-track:0f9baec303e27a2de5b43ef1a756b49299fad1b9a60c6a9a2f2fa34b8bbbf38e` |
| 33 | `theorem` | [primeState_exact](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primestate-exact--f3bfb893ff54a697df293bd0.md) | 271 | `result-track:f3bfb893ff54a697df293bd0a81f16c9291e2b783af8d116dcc73455468be486` |
| 34 | `theorem` | [atom_above_horizon](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/atom-above-horizon--d2fd41d529a70e15ac6316c5.md) | 284 | `result-track:d2fd41d529a70e15ac6316c5c5c819dd316452ba08d71b32ca409a48a75599ca` |
| 35 | `theorem` | [completed_pickup_identification](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/completed-pickup-identification--4998330e8c1e350bb45f5f1f.md) | 296 | `result-track:4998330e8c1e350bb45f5f1fb9aa4643b2b6cbfcce95d145c02241ed9a3546a8` |
| 36 | `def` | [restrict](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/restrict--8761c6c7e0d59b9a60f6b86e.md) | 320 | `declaration-track:8761c6c7e0d59b9a60f6b86eba77f661280db651d79b65af65fc631771a58468` |
| 37 | `theorem` | [restrict_idempotent](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/restrict-idempotent--ea49c8c2c43139ef8c81ed58.md) | 323 | `result-track:ea49c8c2c43139ef8c81ed583985397474a0db8f1fec64c62dbbd1bb9a6fd2c4` |
| 38 | `theorem` | [restrict_causal_shift](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/restrict-causal-shift--d54a70581510f51d0549c5ef.md) | 328 | `result-track:d54a70581510f51d0549c5efbe8d0168d63f6422ab7c560b013df521232fb4cb` |
| 39 | `theorem` | [restrict_causal_note](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/restrict-causal-note--2ba5e4bacacc560cf557efaf.md) | 338 | `result-track:2ba5e4bacacc560cf557efafb4d1ba5bbaf90c1226d943e284cd04b5cf942c63` |
| 40 | `theorem` | [restrict_cascade](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/restrict-cascade--829cf35f1a7ea8858c3fbda1.md) | 346 | `result-track:829cf35f1a7ea8858c3fbda10443b07e1582f8b423e9f4574996610bd5e8cda8` |
| 41 | `theorem` | [cascade_append](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/cascade-append--2ade473779e939a7280e1d2e.md) | 360 | `result-track:2ade473779e939a7280e1d2e0f160e032821467595641998d7daec8fa4c1951d` |
| 42 | `theorem` | [primeState_block_factorization](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/primestate-block-factorization--a6b89659b4ee261849a13a82.md) | 365 | `result-track:a6b89659b4ee261849a13a82221cd6ac737af11efa9eca5c63e88c1667445b01` |
| 43 | `theorem` | [signed_sum_square](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/signed-sum-square--1f8c9a1fff1aec187c5bcb61.md) | 393 | `result-track:1f8c9a1fff1aec187c5bcb6125aff33ef75ee9ffb8cc44b696d70cfd87baba27` |
| 44 | `theorem` | [signed_integral_square](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/signed-integral-square--9a3fc93ff913b1bbeab8e7e8.md) | 405 | `result-track:9a3fc93ff913b1bbeab8e7e8157221b5fd22f8a631aa0758c004c2c6cb3fabf6` |
| 45 | `theorem` | [block_energy_exact](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/declarations/block-energy-exact--452e78d6b9b09a102ad4028b.md) | 432 | `result-track:452e78d6b9b09a102ad4028b9d7b06925a6040c2095801a71af5b69574acdf33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
