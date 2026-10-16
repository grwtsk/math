# Conditional exposure and fixed-size anti-concentration

The source Theorem 1.3 is now proved with the explicit absolute constant `C = 2^24`. This includes the requested conditional part-exposure law, finite hypergeometric lower tails for source Lemmas 3.1 and 3.3, and actual expected Fourier-layer bounds. The final theorem has no unproved Fourier, probability, concentration or expected-layer premise.

## Exact mathematical conclusion

`GRWTSK.ZModBalancedExpectedLayers.prime_subsetSumProbability_le_source_constant` proves, for every prime `p`, finite `S ⊆ ZMod p` with `n = |S| ≥ 2`, natural `m` with `2^24 log n ≤ m ≤ n/(1000 log n)`, and every `z`,

`subsetSumProbability S m z ≤ 1/p + 2^24/(n √m)`.

`exists_anticoncentration_constant` supplies the same constant uniformly in every prime and admissible sample. Primality constructs the nonzero-modulus instance. The stronger intermediate theorem has constant `30022`. The sample law is the actual uniform `m`-element subset law, normalized by `n.choose m`; feasibility and nonemptiness follow from the source restrictions. Zero labels are allowed in this theorem, exactly as in the paper.

## Repository and source identities

The original task began at `8e35dcd5fb4f42640aaaaf68e682a2254736f4da` on `main`; [initial-state.json](initial-state.json) preserves its 8205 preexisting changed entries. Work was paused for coordinated validation and resumed from clean checkpoint `e361b62dd6e136af59f861102ce3ae736e7c664a`; [resume-state.json](resume-state.json) records that state and the checked workflow. Subsequent concurrent commits and edits are preserved. This batch stays in the existing main checkout and mathematical directories. The final user-facing response records the published batch commit; no force push or history replacement is used.

Primary source: Pham and Sauermann, [On Graham's rearrangement conjecture, arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. Retained HTML SHA-256: `f2cb2cf8d155cf8940aaa7443db223b43419413bc9cbc5c25f25e453cd33a74b`. The Quanta exposition is secondary and supplies no proof premise.

Lean: `4.33.0`, compiler `d8b18978322de05a8f3dba51ef03cf5461676c17`. Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`. [The selected receipt](../../evidence/Analysis/Fourier/partition-concentration-checks-2026-10-15.json) binds every source and driver input, compiler identity, dependency revision and actual invocation.

## Definitions, theorems and hypotheses

[mathematical-inventory.json](mathematical-inventory.json) lists every actual Lean declaration, owning module, elaborated type, precise hypotheses, generated/private status, transitive axioms and mathematical admission. It covers all 660 declarations in the 17-module selected local dependency closure and two accepted control modules; 269 belong to the new or completed modules and controls. These counts include generated declarations and are not novelty claims.

- `ConditionalPartitionExposure`: actual conditional partition subtypes, remainder spaces, relabeling equivalences, exact equal-fiber and event cardinalities, `conditional_event_probability`, its real version, and `partition_event_le_of_conditional`. The event law requires part sizes summing to the population and a positive selected part; the averaging theorem requires all parts positive. Conditional feasibility is constructed.
- `HypergeometricLowerTail`: exact hypergeometric factorial moments and `two_pow_intersection_expect_le`, followed by finite exponential Markov. For nonempty `S`, `G ⊆ S` and `k ≤ |S|`, quarter density yields probability `Pr[|R∩G| < k/8] ≤ exp(-k/32)`; three-quarter density yields `Pr[|R∩G| < k/2] ≤ exp(-k/24)`.
- `BalancedPartitionTails`: exact conditional-current-part law and the two unconditional containing-part tail theorems. They retain the source element's exclusion from the counted set, the population size minus one, and the part size minus one. Empty populations are handled explicitly.
- `ZModPartitionConcentration`: deterministic row energy and normalization, balanced remainder sizes, far/near cardinalities, finite probability monotonicity and union bounds, source range arithmetic, `nonconcentrated_probability_le`, `concentrated_probability_le`, and `outside_smallEnergy_probability_le`. Under the original upper range and positive `m`, the two source cases give actual partition failure probability at most `n^-9`; the combined theorem derives positivity from both original source restrictions. No primality is needed for these concentration lemmas.
- `ZModExpectedLayers`: generic finite expectation reductions with explicitly named event hypotheses, proved deterministic spectral arithmetic and finite scalar summation. These generic lemmas remain conditional in their own statements.
- `ZModBalancedExpectedLayers`: actual balanced energy and expected cardinalities, `expectedLowCard_le`, `expectedLayerCard_le_small`, exact averaging of the fixed-size Fourier formula, small/high layer sums, the stronger constant `30022`, the source constant and prime-only absolute-constant formulation. These theorems supply every generic event hypothesis using the proved concentration results.

The concentration and expected-layer [independent reviews](independent-review.json) and [second review](expected-layers-independent-review.json) bind exact frozen bytes and explain hypotheses, indexing and constants. They are mathematical read-throughs, separate from the native proof acceptance.

## Probability and Fourier proof

Whole-part relabeling gives constant fibers. Re-inserting the retained element identifies each conditional remainder fiber; exact event cardinalities prove its uniform fixed-size law. The strata are then averaged. No independence between the sampled parts, membership indicators or nested subsets is assumed.

Exact factorial-moment double counting proves the binomial exponential-moment upper bound for sampling without replacement. Proved logarithm bounds give both source rates. For every element, the balanced remainder size is at least `n/(2m)`. The source upper restriction absorbs the pointwise union bounds `n exp(-n/(64m))` and `n exp(-n/(48m))` into `n^-9`.

The deterministic far-row and near-row energy implications rule out `ψ < 2t` when all relevant local counts succeed. Source Lemma 3.2 supplies the far-tail energy in the concentrated case. The source's printed `265` is retained as a noted typo: the proof checks `16² = 256`, giving the stronger `244`, then the stated `200`. Stale `B_(32t)` prose is superseded by the source's actual `B_(2000t)` lemma statements.

Finite Fubini bounds the expected number of nonzero low-energy frequencies by `p/n^9 + |B_(2000t) \ {0}|`. The deterministic spectral bound gives the constant `10000`. The trivial frequency contributes a separate `1` to the low band. Small-layer weighted summation is at most `2`; the high range contains at most 22 indices and its exponential tail is at most `n^-4`. This yields `30022/(n√m)`, then the source constant `2^24`.

## Controls and preserved architecture

The accepted finite controls prove the conditional partner law `1/3`, exact quarter and three-quarter lower-tail examples, marginal membership probability `1/2` versus joint `1/6`, strictness of the MGF inequality (`13/6 < 9/4`), failure without the density hypothesis, and failure of an unconditional fixed-part deletion-size claim. Accepted final-theorem consumers retain the exact source range. Both intended negative controls fail with exactly one type mismatch when range or primality evidence is missing.

Clock, repair, checker, guarded execution and restart-accounting sources are unchanged by this batch. Their prior hypotheses and negative controls are preserved; Theorem 1.3 does not grant operational permission, prove liveness or erase expenditure. The previous deterministic repair/core report remains [separately bound](../modular-partial-sum-ordering/implementation-report.md).

## Verification scope

The fresh selected driver rebuilds all 17 project dependencies from immutable source copies, excludes canonical project objects, uses `--trust=0`, fatal warnings and 12288 MiB, checks both accepted controls, and audits every owned declaration including compiler-generated/private declarations. All 660 declarations are admitted with axioms contained in `propext`, `Classical.choice`, `Quot.sound`; no new axiom, proof hole, partial declaration, unsafe helper or unchecked computation supplies the theorem. Both intended type-rejection controls pass their exact diagnostic contract.

Pinned dependency cached objects are reused and kernel-checked at trust zero, with object-family custody fingerprints; dependency sources are not rebuilt. This is selected acceptance, not a refreshed whole-library input contract. The [final verification manifest](final-verification.json) records ordinary build, documentation, structural checks, shared binding limitations and Git state separately. Historical receipts and old failed/stale bindings retain their original bytes.

The pre-integration full mathematical layout command fails because the shared current observation is stale after resumed work; fallback findings include historical catalog and pending-taxonomy records. [The exact report](math-layout-before-integration.json) is preserved. A separate structural-only run still reports the existing external-taxonomy-policy binding problem; it is not labeled a pass. The integration owner must reconcile current bindings at a quiet checkpoint. This batch does not change those global frozen pointers.

## Exact open obligations

No analytical premise remains open for Theorem 1.3 or for the requested conditional exposure, hypergeometric and expected-layer results. The subsequent mathematical problems remain separate:

1. Prove source Corollary 1.4 for larger slices, retaining its `sqrt(log n)` loss and dependence on the slice-margin parameter.
2. Prove the Section 4 nested-chain conditional exposure estimates, without assuming independence of nested subsets.
3. Prove Section 5 local subset-sum collision and admissible-permutation counting bounds.
4. Prove the three actual failure-event probabilities in source Lemmas 5.1–5.3, then instantiate the existing conditional reduction to good geometry and deterministic repair.
5. Close `PrimeCyclicRearrangement.PhamSauermannSourceRange` (source Theorem 1.2) from those results. No complete Graham theorem for every prime is claimed.

Original mathematical argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: R.A. Jacob Martone. Lean implementation: OpenAI Codex. Upstream Mathlib authorship and licensing retained.
