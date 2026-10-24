# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f598a6794c2bcb47b23a5d5b599b75884bc469fe",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f598a6794c2bcb47b23a5d5b599b75884bc469fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime--b922e9d525e68e929c5d2620.md) | 62 | `declaration-track:b922e9d525e68e929c5d2620ec56da338bc9feaed008c90b7358352c83f14759` |
| 2 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes--81e7675823917b5753b2883a.md) | 66 | `declaration-track:81e7675823917b5753b2883a138735a7a3f3d44f862a4dce3306e221abe679bc` |
| 3 | `theorem` | [isAssociatedPrime_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-def--d85cd7d33fa803fa4a5fea7e.md) | 71 | `result-track:d85cd7d33fa803fa4a5fea7edc39f7b3220f9b9e88b9b71c35944913ce3a99d7` |
| 4 | `theorem` | [isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-iff--353edfb4db43b9e9e1c82273.md) | 75 | `result-track:353edfb4db43b9e9e1c822738dd1ec2195464d871df55ccf95450172bf6a8460` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/instance--c152f0cee96c93220b918495.md) | 85 | `declaration-track:c152f0cee96c93220b9184957c0014c48ae89cc1386752f8be7689648defc110` |
| 6 | `theorem` | [AssociatePrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associateprimes-mem-iff--170026580dd6d17351ce20b6.md) | 87 | `result-track:170026580dd6d17351ce20b66e9e92ccd159ebcb16a2fc95a47dbd0068746592` |
| 7 | `def` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime--a079c62ee851c99ae3a6c969.md) | 98 | `declaration-track:a079c62ee851c99ae3a6c96919b705bfc728b012a6e60412a34708326d126b6d` |
| 8 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes--663b0f62398feed259e3c29f.md) | 103 | `declaration-track:663b0f62398feed259e3c29fd28574e905f850845200ed7d09dd2c8c88d62c9a` |
| 9 | `theorem` | [AssociatedPrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes-mem-iff--0c7c04f693edbf5528ddb278.md) | 108 | `result-track:0c7c04f693edbf5528ddb278a7caeae3ac67d5e4d29fbe6871de7146a2e2ab76` |
| 10 | `theorem` | [IsAssociatedPrime.isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-isprime--0c6b6845151a84cf7b7c7f0c.md) | 110 | `result-track:0c6b6845151a84cf7b7c7f0c59f0c689710fa85c656ca47cb0cbf7d0e942cbf9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/instance--8a0b54c879108f9528a3c5bc.md) | 112 | `declaration-track:8a0b54c879108f9528a3c5bcd6d771b14f646f2ef46bc0f9247ba90ac822d4fe` |
| 12 | `theorem` | [isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-iff--bad96f2dd401e0725191c924.md) | 114 | `result-track:bad96f2dd401e0725191c9249c0798842873f941333308ec48bf885f0dd4cbc6` |
| 13 | `theorem` | [IsAssociatedPrime.map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-map-of-injective--6e040d1927f0dcec856b4666.md) | 118 | `result-track:6e040d1927f0dcec856b4666e9dfa950f3d98d16e71e86973f66d44120a48bf9` |
| 14 | `theorem` | [LinearEquiv.isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/linearequiv-isassociatedprime-iff--1a4ba1e95c6f37458e4f1b15.md) | 125 | `result-track:1a4ba1e95c6f37458e4f1b15b1e90fbcbbc302fb787cc4543d36a3859eca996f` |
| 15 | `theorem` | [not_isAssociatedPrime_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/not-isassociatedprime-of-subsingleton--4f5595fc7598fdfcd4c4e308.md) | 130 | `result-track:4f5595fc7598fdfcd4c4e308b596aeccc76dadb7d9aa71af5f7e69ad4e752f75` |
| 16 | `theorem` | [exists_le_isAssociatedPrime_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/exists-le-isassociatedprime-of-isnoetherianring--24bba674c11a04afda326c27.md) | 136 | `result-track:24bba674c11a04afda326c27d9c998dd5aeec5e340532646b62b0d42a9b0fecf` |
| 17 | `theorem` | [subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/subset-of-injective--7b104ed74bf906f6f434d40a.md) | 162 | `result-track:7b104ed74bf906f6f434d40ae2a2b310a81d94dbfb2c05ad0276f4b01750e6ed` |
| 18 | `theorem` | [subset_union_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/subset-union-of-exact--bc8ff549563cf6f9ba5efb36.md) | 168 | `result-track:bc8ff549563cf6f9ba5efb36c38fb37e2e9ca75ac870063c3b75a6cee9b40223` |
| 19 | `theorem` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/prod--247d5a3ef2e0942fd156c29f.md) | 203 | `result-track:247d5a3ef2e0942fd156c29f7e615e71cd5547c4a8b4677efd49a29fa4dba948` |
| 20 | `theorem` | [LinearEquiv.AssociatedPrimes.eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/linearequiv-associatedprimes-eq--67cfb800e4c8b1f677266084.md) | 209 | `result-track:67cfb800e4c8b1f677266084bdc91e2457bc38935253da393169cfe0a869f8de` |
| 21 | `theorem` | [associatedPrimes.eq_empty_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes-eq-empty-of-subsingleton--56d530e340f1d98b7da2dd58.md) | 214 | `result-track:56d530e340f1d98b7da2dd58dc9920e0ccb6bd76b5f9f21e41fc7d61ba9538ff` |
| 22 | `theorem` | [associatedPrimes.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes-nonempty--b6b725d235e59e496d19f2ff.md) | 220 | `result-track:b6b725d235e59e496d19f2ffa627df4a23d720c01ac26f61e9f4c5e8297418d7` |
| 23 | `theorem` | [biUnion_associatedPrimes_eq_zero_divisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/biunion-associatedprimes-eq-zero-divisors--1f2de21ed0692330bb30b9b9.md) | 226 | `result-track:1f2de21ed0692330bb30b9b93631a35b65a95750aefe26b63b2d61d564f75c9c` |
| 24 | `theorem` | [biUnion_associatedPrimes_eq_compl_nonZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/biunion-associatedprimes-eq-compl-nonzerodivisors--56bce2012484dc3913ba92f5.md) | 237 | `result-track:56bce2012484dc3913ba92f5470e25b47a0f0932f17d9056acb1c3fb08de7e04` |
| 25 | `theorem` | [IsAssociatedPrime.annihilator_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-annihilator-le--17a99b300a6e050c05c1eac4.md) | 244 | `result-track:17a99b300a6e050c05c1eac4a66e798caf120dee411ea1110a82973e8ddbe175` |
| 26 | `theorem` | [isAssociatedPrime_iff_exists_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-iff-exists-injective-linearmap--218bb367eda47e9ba17c016f.md) | 254 | `result-track:218bb367eda47e9ba17c016f82096faf53ea77449999bf70e052d5ceed98fac7` |
| 27 | `theorem` | [IsAssociatedPrime.eq_radical](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/isassociatedprime-eq-radical--540090e46e852624f364b478.md) | 265 | `result-track:540090e46e852624f364b4783640dc1c2733f54b97e0735b594c8bd134d6c569` |
| 28 | `theorem` | [associatedPrimes.eq_singleton_of_isPrimary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteaf5b99954303ffe1218de5a1f10f04e82b51dd0448a2ca60bf3a95a7828dd49.lean/declarations/associatedprimes-eq-singleton-of-isprimary--875a1d607b9220692db5e6b3.md) | 281 | `result-track:875a1d607b9220692db5e6b3f403834f47d5d995b06bd520a10ee63201b679c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
