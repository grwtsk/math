# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePrimeCumulative.Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f86fdbf2f0d7b22ce8ce979fd1a6bf9144b013c9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f86fdbf2f0d7b22ce8ce979fd1a6bf9144b013c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 1; external provider; requires a separately pinned dependency.
- `SourceDivisorCounterterms` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors--2911449f3873427cb96e2b26.md) | 29 | `declaration-track:2911449f3873427cb96e2b26ca933936d19f0e1df80e0bee58b6ba1f3fb2e81e` |
| 2 | `theorem` | [weightedDivisors_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-insert--9449d34b50ffd3e9c29144ce.md) | 32 | `result-track:9449d34b50ffd3e9c29144ce3e775a5198bae3347c768f8b6f38eee0905a27bf` |
| 3 | `theorem` | [weightedDivisors_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-coverage--f2af006cd1aae9409b78a1da.md) | 53 | `result-track:f2af006cd1aae9409b78a1da82ea0d8c1b2314ec6621b024093b8b54800bdb26` |
| 4 | `theorem` | [weightedDivisors_mixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-mixed--97244e02772c665366e5d119.md) | 82 | `result-track:97244e02772c665366e5d119857cbc63661d7ec83afe1ec4680807c8fa0f46be` |
| 5 | `theorem` | [weightedDivisors_largest_prime_ledger](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-largest-prime-ledger--ccbadac0f8fb8146edaccb4a.md) | 104 | `result-track:ccbadac0f8fb8146edaccb4acbd84fc1086bf52036f3b5593052e4ea69da2827` |
| 6 | `def` | [alignedSource](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource--a8f48146537943311b7d9869.md) | 146 | `declaration-track:a8f48146537943311b7d98696ebfebfde1c280d53487979ab1673a378d2ac5c3` |
| 7 | `theorem` | [alignedSource_eq_actual_remainders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource-eq-actual-remainders--fe25fac09ccece8d09efc78e.md) | 150 | `result-track:fe25fac09ccece8d09efc78eb6af86f6fdbaeb2595478adf02e7c5bacb892bc7` |
| 8 | `theorem` | [alignedSource_fresh_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource-fresh-prime--9272f3b1507f8bf46ad86a10.md) | 157 | `result-track:9272f3b1507f8bf46ad86a104a9c5c1fc990256992100a82d44fe29b86e5ee29` |
| 9 | `theorem` | [alignedSource_mixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource-mixed--76c3883e574c711e22ad3f9d.md) | 165 | `result-track:76c3883e574c711e22ad3f9d95ffb16771313035e3517e6a1678acab85b18c6d` |
| 10 | `theorem` | [alignedSource_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource-cumulative--db20bce620f73da505b34f15.md) | 177 | `result-track:db20bce620f73da505b34f15469ef85cce7cc9d23ef9341d2fdc24cc328febcd` |
| 11 | `theorem` | [alignedSource_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/alignedsource-coverage--1e53b850bffb51fb4e20c16f.md) | 189 | `result-track:1e53b850bffb51fb4e20c16f076f22d990993a9de52bd40ec7e02f8059908091` |
| 12 | `def` | [physicalDisclosedCovariance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/physicaldisclosedcovariance--2a6901bbffb35a339ded0321.md) | 200 | `declaration-track:2a6901bbffb35a339ded0321729a64a4e5e1efd4407b224b32f8db3e461883a5` |
| 13 | `theorem` | [physicalDisclosedCovariance_eq_actual_divisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/physicaldisclosedcovariance-eq-actual-divisors--3dd737ab493c55f715c9362b.md) | 206 | `result-track:3dd737ab493c55f715c9362bd3f2b8e7639b281e61b3ec77efee73c900ff8f26` |
| 14 | `def` | [deferredMain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/deferredmain--6d0406b07a199875a52bb2b3.md) | 229 | `declaration-track:6d0406b07a199875a52bb2b3aa0a5bccb38c40315efe0c5a209f9d4b49ec1c73` |
| 15 | `theorem` | [actual_fixed_main_reconstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/actual-fixed-main-reconstruction--57a9863a8bf6115e0e5f3f38.md) | 233 | `result-track:57a9863a8bf6115e0e5f3f38531c53aec0fbef80e70f11af4e5bf2b952c2966a` |
| 16 | `theorem` | [deferredMain_coverage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/deferredmain-coverage--5628f55a8a0482fce3ff0b35.md) | 241 | `result-track:5628f55a8a0482fce3ff0b358cb12173e912475747a1b40084ab057752260f37` |
| 17 | `theorem` | [actual_cumulative_small_prime_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/actual-cumulative-small-prime-identity--c1b3bf5dede4e8235ef2d3fd.md) | 253 | `result-track:c1b3bf5dede4e8235ef2d3fd3e2cb7230d9a3eda7cd843ba55a9ff5c9eae9cb5` |
| 18 | `theorem` | [all_real_prime_cumulative_identity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/all-real-prime-cumulative-identity--5f96893ec50c55b2597fe4d2.md) | 265 | `result-track:5f96893ec50c55b2597fe4d23e3172791033126f07b2f8cad521d59626ae08ee` |
| 19 | `theorem` | [weightedDivisors_reciprocal_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-reciprocal-insert--054db6254926914ba9739607.md) | 277 | `result-track:054db6254926914ba97396079ff1b886cb81e7b623393227c9bc16aff642cb55` |
| 20 | `theorem` | [actual_small_prime_mean_increases](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/actual-small-prime-mean-increases--964fcb9e51fb4fda0a50759a.md) | 296 | `result-track:964fcb9e51fb4fda0a50759ae56b7555293ace751b1bb07694ea059b5155a6b5` |
| 21 | `def` | [maskedMoebius](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/maskedmoebius--4b1871cd384bbd2544d790a5.md) | 330 | `declaration-track:4b1871cd384bbd2544d790a59c8ff876195711f7569d3f781f5eaeb96c14219c` |
| 22 | `def` | [restrictedMertens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/restrictedmertens--e56afa4b20900e5a2126c99b.md) | 333 | `declaration-track:e56afa4b20900e5a2126c99bbe410615eea152c5c6b7e7b978b92b954c3af89c` |
| 23 | `theorem` | [weightedDivisors_summation_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/weighteddivisors-summation-by-parts--914be05eced9561313e2cb9a.md) | 338 | `result-track:914be05eced9561313e2cb9a8c67e629cd65a08ca069156755fb2f9af6745ef3` |
| 24 | `theorem` | [actual_prime_block_summation_by_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7892c191b273c7c7795393a74eedaa873fdcd3b9a6ae8de65b7ad1ebdf62afd0.lean/declarations/actual-prime-block-summation-by-parts--c330394f0f55e13325b841c9.md) | 363 | `result-track:c330394f0f55e13325b841c98fafce068de4f6c1458bc97fbf72704af16945ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
