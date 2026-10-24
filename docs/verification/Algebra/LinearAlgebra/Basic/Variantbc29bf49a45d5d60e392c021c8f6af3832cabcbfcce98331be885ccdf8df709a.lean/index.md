# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean.json)

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
| 1 | `structure` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime--0f8c84019584149f201b7052.md) | 70 | `declaration-track:0f8c84019584149f201b7052e5e89b4b51603653a09d760672ddd8d1919b4db4` |
| 2 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes--4be95defd4e7784eb2dfff91.md) | 74 | `declaration-track:4be95defd4e7784eb2dfff91dcba793f852551a446470b9e799e04d9b86fde24` |
| 3 | `theorem` | [isAssociatedPrime_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-def--31842d459c25ab4cc2f91fb3.md) | 79 | `result-track:31842d459c25ab4cc2f91fb3784acb80411f204755da09bd7d5e41b4fa037515` |
| 4 | `theorem` | [isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-iff--f9a9733dd4d210f5b6cb2c0b.md) | 83 | `result-track:f9a9733dd4d210f5b6cb2c0b0f2a5a659d7ae01563e1482f7d50912c44397e36` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/instance--ed56f3c5971539db06790513.md) | 93 | `declaration-track:ed56f3c5971539db06790513e7c11d64c5d8e34df7ab633853d3896b95fd6334` |
| 6 | `theorem` | [AssociatePrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associateprimes-mem-iff--5e2c05cef585ac86591080dc.md) | 95 | `result-track:5e2c05cef585ac86591080dcd000c5607ef7eabe03390f46cc0f290dbd18e867` |
| 7 | `def` | [IsAssociatedPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime--cecf13dad38cdf7aed042161.md) | 106 | `declaration-track:cecf13dad38cdf7aed042161bb4ef9ffee2c1d9f2a2c3841e8905bb693a43a26` |
| 8 | `def` | [associatedPrimes](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes--8af445d25d271de700eeab50.md) | 111 | `declaration-track:8af445d25d271de700eeab508a0577e93cc1c900871f0c7d1523442f986f661c` |
| 9 | `theorem` | [AssociatedPrimes.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes-mem-iff--30d931f06167f7fd68d864a3.md) | 116 | `result-track:30d931f06167f7fd68d864a362b0d51c800b570d13dfc02a48214c91508faef7` |
| 10 | `theorem` | [IsAssociatedPrime.isPrime](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-isprime--aa49382b872905c41cdee261.md) | 118 | `result-track:aa49382b872905c41cdee261531fd6c0f332620ef85b7c5a5e636a5bae76fe60` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/instance--13d2d78da12a3a09d19c82cc.md) | 120 | `declaration-track:13d2d78da12a3a09d19c82ccf0076868c4fff6b0aefee4193e7dcd7d252db582` |
| 12 | `theorem` | [isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-iff--d0501c8ab06882f3252445bb.md) | 122 | `result-track:d0501c8ab06882f3252445bbf5db3466eba72d61004e16c5771aad0ba92e8dcf` |
| 13 | `theorem` | [IsAssociatedPrime.map_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-map-of-injective--ce91c8bc9d475e1862b62989.md) | 126 | `result-track:ce91c8bc9d475e1862b62989c2a7fd45a4e3d3b9d2c55f6b6f9f2a8dcbf10047` |
| 14 | `theorem` | [LinearEquiv.isAssociatedPrime_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/linearequiv-isassociatedprime-iff--7d4c22bdd565016f56712469.md) | 133 | `result-track:7d4c22bdd565016f5671246929c6ad71fe00c91009fed628976a4538f3eb7e3b` |
| 15 | `theorem` | [not_isAssociatedPrime_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/not-isassociatedprime-of-subsingleton--5b53ca3867ec1bb67e5e9887.md) | 138 | `result-track:5b53ca3867ec1bb67e5e98871893059b242e6f59a4621493e2ccc6b923264ea6` |
| 16 | `theorem` | [exists_le_isAssociatedPrime_of_isNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/exists-le-isassociatedprime-of-isnoetherianring--52ed415780d6e9eaf4e5683f.md) | 144 | `result-track:52ed415780d6e9eaf4e5683f9800ba821fb5cc3514d747310e9dd72125e6328e` |
| 17 | `theorem` | [subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/subset-of-injective--ab5d0ad795be14815176139c.md) | 170 | `result-track:ab5d0ad795be14815176139c113d572b47e3d73532f60908fc1b931951a4da83` |
| 18 | `theorem` | [subset_union_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/subset-union-of-exact--abdd59c53fdbf20cfa99acf8.md) | 176 | `result-track:abdd59c53fdbf20cfa99acf8dec36373f9afb7a1ef274bfeee9c469ddff7ec83` |
| 19 | `theorem` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/prod--7c57af961067398bd6a40bd9.md) | 211 | `result-track:7c57af961067398bd6a40bd911366a2f4c47e0b8d868fe8db361892afd6ce435` |
| 20 | `theorem` | [LinearEquiv.AssociatedPrimes.eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/linearequiv-associatedprimes-eq--82caf420f84eafa9b98b5345.md) | 217 | `result-track:82caf420f84eafa9b98b5345e6c675091b151142c7c376542018cf602ddca817` |
| 21 | `theorem` | [associatedPrimes.eq_empty_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes-eq-empty-of-subsingleton--bdbb8fb066fdfb0ce5850cfb.md) | 222 | `result-track:bdbb8fb066fdfb0ce5850cfb9c2e07ec2cf39bba9a00a1ae0ecf8b1246905242` |
| 22 | `theorem` | [associatedPrimes.nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes-nonempty--5a1328a32cf6f999b8c3df0e.md) | 228 | `result-track:5a1328a32cf6f999b8c3df0e36a5dc8bfe1000137de29b33ed16f026f2cfbf1d` |
| 23 | `theorem` | [biUnion_associatedPrimes_eq_zero_divisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/biunion-associatedprimes-eq-zero-divisors--d534dcef7e924559ca1431d4.md) | 234 | `result-track:d534dcef7e924559ca1431d422aabc728058828d48ff1cb0d28add05eb882301` |
| 24 | `theorem` | [biUnion_associatedPrimes_eq_compl_nonZeroDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/biunion-associatedprimes-eq-compl-nonzerodivisors--ba50fa1e618f6f07be4516c4.md) | 245 | `result-track:ba50fa1e618f6f07be4516c4752f13cf2fe2875f3833052c06fd611950094cd1` |
| 25 | `theorem` | [IsAssociatedPrime.annihilator_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-annihilator-le--99d8cf577151e403592f62dc.md) | 252 | `result-track:99d8cf577151e403592f62dca899e474352cded385e48945bd311fbb2f9de282` |
| 26 | `theorem` | [isAssociatedPrime_iff_exists_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-iff-exists-injective-linearmap--95be8533790bac6e19bda0df.md) | 262 | `result-track:95be8533790bac6e19bda0dfdb58c355d3cc0dbccec4b3e171ac8a2016f681e2` |
| 27 | `theorem` | [IsAssociatedPrime.eq_radical](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/isassociatedprime-eq-radical--4c526664c7a03e7a59f39d8d.md) | 273 | `result-track:4c526664c7a03e7a59f39d8d4f4c734ae784bed1e43a4da83eeba0f2caac9c14` |
| 28 | `theorem` | [associatedPrimes.eq_singleton_of_isPrimary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/declarations/associatedprimes-eq-singleton-of-isprimary--d437509397dfd06ea1afb8a4.md) | 289 | `result-track:d437509397dfd06ea1afb8a40b6a20241df084232f273af3ebfa542bf06f6409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
