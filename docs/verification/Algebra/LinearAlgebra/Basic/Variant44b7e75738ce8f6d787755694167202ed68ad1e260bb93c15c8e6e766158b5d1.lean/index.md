# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d63d91eff45acf4396851c10aca8866163adaba3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d63d91eff45acf4396851c10aca8866163adaba3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime--6f3f00f794be1e9129b5e2b1.md) | 41 | `declaration-track:6f3f00f794be1e9129b5e2b110737591566667a14005bbfa2590a75fca4462ba` |
| 2 | `theorem` | [isAssociatedPrime_iff_exists_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime-iff-exists-injective-linearmap--10223b0e0aaa9c47761e5d50.md) | 44 | `result-track:10223b0e0aaa9c47761e5d502d1bef9d737bad6e6f2cfda16f752c4976f44ca0` |
| 3 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/associatedprimes--0ad7dcfa0e2c8b88bb57a4d7.md) | 57 | `declaration-track:0ad7dcfa0e2c8b88bb57a4d75f1c2b365310a1307e2b0e8159eea4c4f509b493` |
| 4 | `theorem` | [AssociatePrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/associateprimes-mem-iff--a0dfffc3bd88d86682304760.md) | 63 | `result-track:a0dfffc3bd88d866823047603dcfe3ae40b6edc7011731108da443beeee9f6fd` |
| 5 | `theorem` | [IsAssociatedPrime.isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime-isprime--d788035d6571e56af18326b7.md) | 65 | `result-track:d788035d6571e56af18326b705edb12f275865aeffe2b22254ce088b36cc2b9f` |
| 6 | `theorem` | [IsAssociatedPrime.map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime-map-of-injective--e69624598725b1cbce280132.md) | 66 | `result-track:e69624598725b1cbce2801326bb4c9ee29395c90efa3e475dfe03de4da619351` |
| 7 | `theorem` | [LinearEquiv.isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/linearequiv-isassociatedprime-iff--3e40052d58604c86570839ea.md) | 73 | `result-track:3e40052d58604c86570839ea4132a54f60c6d3b181f09b4455ff194092b68c93` |
| 8 | `theorem` | [not_isAssociatedPrime_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/not-isassociatedprime-of-subsingleton--674c6bf8f35df274e8413bea.md) | 78 | `result-track:674c6bf8f35df274e8413bea3014a1c5f7b671d48952eeb1a7d6e3313e1899ff` |
| 9 | `theorem` | [exists_le_isAssociatedPrime_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/exists-le-isassociatedprime-of-isnoetherianring--0e45b69be346e0a6c15b9edf.md) | 84 | `result-track:0e45b69be346e0a6c15b9edf045fa8fb7d2ccf3ea4cf3a55b26441443bfec106` |
| 10 | `theorem` | [subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/subset-of-injective--c6d399a52b7ce89dec1bdefc.md) | 113 | `result-track:c6d399a52b7ce89dec1bdefce010f594cdcbeb23c73589474b816ff01ce54c10` |
| 11 | `theorem` | [subset_union_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/subset-union-of-exact--6ec1804b78317121972c4ad5.md) | 119 | `result-track:6ec1804b78317121972c4ad59e9d5b4eae73cdf391387f08ac628cd6243b97d0` |
| 12 | `theorem` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/prod--a77d664eedb15acad3058333.md) | 152 | `result-track:a77d664eedb15acad3058333cdc053bc5771495ecae81b256c1649a30f82987b` |
| 13 | `theorem` | [LinearEquiv.AssociatedPrimes.eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/linearequiv-associatedprimes-eq--67bc9ef557163dcd75af3bd2.md) | 158 | `result-track:67bc9ef557163dcd75af3bd22c8abce46f44992a5d3242beeabf46acfb123a85` |
| 14 | `theorem` | [associatedPrimes.eq_empty_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/associatedprimes-eq-empty-of-subsingleton--877b47df9efb31654f32b12d.md) | 163 | `result-track:877b47df9efb31654f32b12d00bd22f425eee977d14f9e5ad699e5a8efe1a021` |
| 15 | `theorem` | [associatedPrimes.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/associatedprimes-nonempty--bc729dfaa001a2d672e88577.md) | 169 | `result-track:bc729dfaa001a2d672e88577928c4dcdbca1192b00da13e5e27ac31542f69d80` |
| 16 | `theorem` | [biUnion_associatedPrimes_eq_zero_divisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/biunion-associatedprimes-eq-zero-divisors--6f9f33d813d7d4cd789db1ae.md) | 175 | `result-track:6f9f33d813d7d4cd789db1aeb9962214fb9b9722592cd108ae85784a5ea03741` |
| 17 | `theorem` | [IsAssociatedPrime.annihilator_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime-annihilator-le--917e81c357ea672902ceda2a.md) | 187 | `result-track:917e81c357ea672902ceda2a8b859298e97f1664ec53a0148ac73dc7fbb4bd58` |
| 18 | `theorem` | [IsAssociatedPrime.eq_radical](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/isassociatedprime-eq-radical--2d675e415034f7f8c1e1e46d.md) | 193 | `result-track:2d675e415034f7f8c1e1e46d4bd443960cdbbde341f1c3700463fc37d10ac853` |
| 19 | `theorem` | [associatedPrimes.eq_singleton_of_isPrimary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant44b7e75738ce8f6d787755694167202ed68ad1e260bb93c15c8e6e766158b5d1.lean/declarations/associatedprimes-eq-singleton-of-isprimary--b3af3ca295e3ee9f9fa22b4f.md) | 213 | `result-track:b3af3ca295e3ee9f9fa22b4f7b1baaa4fbdf94f3013108b7d43e887cff0eaa7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
