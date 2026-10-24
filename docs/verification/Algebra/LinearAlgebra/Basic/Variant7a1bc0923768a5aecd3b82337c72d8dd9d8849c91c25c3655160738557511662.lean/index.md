# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652422749b11d56199447ed8205413199b72554c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652422749b11d56199447ed8205413199b72554c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.IsPrimary` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime--1a0b05a6f63cfbfe4a482dc5.md) | 49 | `declaration-track:1a0b05a6f63cfbfe4a482dc57e35cce8ed22f4b8df1879584948ea03685490a2` |
| 2 | `theorem` | [isAssociatedPrime_iff_exists_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime-iff-exists-injective-linearmap--86b5f503aaaea38cc6e0f678.md) | 52 | `result-track:86b5f503aaaea38cc6e0f67816897586f222f40b49e02888326fbfb7b2ea79b4` |
| 3 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/associatedprimes--837f0f19139163e233ccadea.md) | 65 | `declaration-track:837f0f19139163e233ccadead0d68870eb1c38390eb5d5710bb6d3a4b9231240` |
| 4 | `theorem` | [AssociatePrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/associateprimes-mem-iff--69ced9b0f7f2051abf39489b.md) | 71 | `result-track:69ced9b0f7f2051abf39489b755816fccdf58835431161cb6189e723ac8dcf36` |
| 5 | `theorem` | [IsAssociatedPrime.isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime-isprime--e21f56f7bf2d4837394d0e8e.md) | 73 | `result-track:e21f56f7bf2d4837394d0e8ed2eb373b4f83671a0cecd5e1ec794e872da310c0` |
| 6 | `theorem` | [IsAssociatedPrime.map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime-map-of-injective--646e06d67600e7775395f77e.md) | 74 | `result-track:646e06d67600e7775395f77e8335f4f7615dc753992e82a22932f3ad9b3f2360` |
| 7 | `theorem` | [LinearEquiv.isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/linearequiv-isassociatedprime-iff--eb3558802f53a1ffcdd4b4c5.md) | 81 | `result-track:eb3558802f53a1ffcdd4b4c58cc624be5ab9be13cce15aabc7af55463bc4af40` |
| 8 | `theorem` | [not_isAssociatedPrime_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/not-isassociatedprime-of-subsingleton--4d3605289febcc96a5f24c03.md) | 86 | `result-track:4d3605289febcc96a5f24c032e17b5c0579ed89e6689cab615c3e15472566403` |
| 9 | `theorem` | [exists_le_isAssociatedPrime_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/exists-le-isassociatedprime-of-isnoetherianring--fee8c34348710974bded0932.md) | 92 | `result-track:fee8c34348710974bded09329648f6062a04e2d643191d867e1133ffeea05d31` |
| 10 | `theorem` | [subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/subset-of-injective--009a3c93204baeac3b8b2bdb.md) | 121 | `result-track:009a3c93204baeac3b8b2bdb52acb86426a9c4f42d21beaed21d637908308448` |
| 11 | `theorem` | [subset_union_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/subset-union-of-exact--a5990cdd72984a301d9aa801.md) | 127 | `result-track:a5990cdd72984a301d9aa801831fc313d51ff126d888b6d3d5c5ac32c95d9784` |
| 12 | `theorem` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/prod--8032a7b2c315ae0a48f554eb.md) | 160 | `result-track:8032a7b2c315ae0a48f554eba586281e306bb2ca9df129b928faf82cd89ace3b` |
| 13 | `theorem` | [LinearEquiv.AssociatedPrimes.eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/linearequiv-associatedprimes-eq--b88edbc1c567cf5735f75c6c.md) | 166 | `result-track:b88edbc1c567cf5735f75c6cfa4b3a479c4ee2be9b772b0ddc0f794df9569a1a` |
| 14 | `theorem` | [associatedPrimes.eq_empty_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/associatedprimes-eq-empty-of-subsingleton--4618568518e9c63dd9936694.md) | 171 | `result-track:4618568518e9c63dd993669418dd84dfae2a43cbcd874fd04f4d590ba2f3c578` |
| 15 | `theorem` | [associatedPrimes.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/associatedprimes-nonempty--b792153b81bfad2b9e5eeb42.md) | 177 | `result-track:b792153b81bfad2b9e5eeb421d4784c1719d556faeae92d2d5a9c01e14b160c1` |
| 16 | `theorem` | [biUnion_associatedPrimes_eq_zero_divisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/biunion-associatedprimes-eq-zero-divisors--a6cf67fd3216a38791c4512d.md) | 183 | `result-track:a6cf67fd3216a38791c4512d8c6be756e79a9cfb0db8818e1ff9c4a8ac2c58fd` |
| 17 | `theorem` | [IsAssociatedPrime.annihilator_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime-annihilator-le--3f0454befd742b0fa50e2a5d.md) | 195 | `result-track:3f0454befd742b0fa50e2a5da62c17ddb12c7892bf2c96549c82a5e8a612524d` |
| 18 | `theorem` | [IsAssociatedPrime.eq_radical](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/isassociatedprime-eq-radical--8af237b4cf4311682ccc8018.md) | 201 | `result-track:8af237b4cf4311682ccc8018fe0fd5971fb8c627bf1fa08ec05a2c4f72354d91` |
| 19 | `theorem` | [associatedPrimes.eq_singleton_of_isPrimary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7a1bc0923768a5aecd3b82337c72d8dd9d8849c91c25c3655160738557511662.lean/declarations/associatedprimes-eq-singleton-of-isprimary--8c8908b24c031b02b62b63ad.md) | 221 | `result-track:8c8908b24c031b02b62b63ad6277301ca49c244f2926f1bd1f66f48ffa3fefbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
