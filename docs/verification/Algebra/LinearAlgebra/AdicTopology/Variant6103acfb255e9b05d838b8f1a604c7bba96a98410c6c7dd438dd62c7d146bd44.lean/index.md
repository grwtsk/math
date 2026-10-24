# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f81c9a83922ebb2667f169a2c37f86f0e058ba",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f81c9a83922ebb2667f169a2c37f86f0e058ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.UniformRing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/adic-basis--ee7dcdeeb28f54e9068d1138.md) | 68 | `result-track:ee7dcdeeb28f54e9068d11382fcf2f3d09dedd385ec069653bac86ad78c552a9` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/ringfilterbasis--713d4923b6c7182c0481ee99.md) | 91 | `declaration-track:713d4923b6c7182c0481ee99547efd7453eda5ca555b1818236f61d6cdf03534` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/adictopology--73f3ebfec3d07231ec9e072b.md) | 97 | `declaration-track:73f3ebfec3d07231ec9e072bd8967a743dc7ddded36383fce24cf2b1ac5b645c` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/nonarchimedean--087dc44c01382d8da9aba1a8.md) | 100 | `result-track:087dc44c01382d8da9aba1a8c83eb8d514d4086e9c2ae04de10ac92a94681733` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/hasbasis-nhds-zero-adic--15d7c20d68cf3819118dc0d6.md) | 104 | `result-track:15d7c20d68cf3819118dc0d67f25cbd0474bb6ecd0a8be4281670f825a534a9b` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/hasbasis-nhds-adic--2da6dd521643220eef590230.md) | 117 | `result-track:2da6dd521643220eef5902301defc150abf22789ede504de1ac092ac1bdb6e74` |
| 7 | `theorem` | [isLinearTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/islineartopology--2b2a0613a620f6579084f283.md) | 124 | `result-track:2b2a0613a620f6579084f28390c0d2b33630d4c75871b32a3e81d84409f2854d` |
| 8 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/adic-module-basis--b2ab6cab6f621ac5e03fbe5c.md) | 130 | `result-track:b2ab6cab6f621ac5e03fbe5c4de9f96fc3cbfb41681828eed4d6126074c5a400` |
| 9 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/adicmoduletopology--d8e7981f1565ce4a8358d01d.md) | 145 | `declaration-track:d8e7981f1565ce4a8358d01d938172bd0efa4199647dcdbf4937fa9b2688b9a1` |
| 10 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/openaddsubgroup--8a93326be6b6dd4ee9c4fe9b.md) | 151 | `declaration-track:8a93326be6b6dd4ee9c4fe9be7527ec95777ffec5c90e093973a8dbbbd9436e1` |
| 11 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/isadic--dcaf573ac4ccfcfe063ed64d.md) | 164 | `declaration-track:dcaf573ac4ccfcfe063ed64dcbe426f546938c7f64a2e0f1d7b92ccdfa54ebed` |
| 12 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/isadic-iff--796005b6069df4e2bae83764.md) | 169 | `result-track:796005b6069df4e2bae837648192f96a20d3fe27aee6c1aea20ab254cb8270da` |
| 13 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/is-ideal-adic-pow--ffe99a1fc2489c057b58cf8f.md) | 199 | `result-track:ffe99a1fc2489c057b58cf8fe797076064d36a611fe61e48e9a7a0714a781eb7` |
| 14 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/is-bot-adic-iff--605e0666349b095567007f6b.md) | 216 | `result-track:605e0666349b095567007f6bfd7daf8549cf484dfdae2f624e4fc47e52a14111` |
| 15 | `theorem` | [IsAdic.hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/isadic-hasbasis-nhds-zero--29f59ee0656a14d65f4081f8.md) | 231 | `result-track:29f59ee0656a14d65f4081f8a07d2fe591ee9cc0ecc3b32f1691b95066dab66f` |
| 16 | `theorem` | [IsAdic.hasBasis_nhds](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/isadic-hasbasis-nhds--e36ceb5e6d7dbd0c601c0578.md) | 236 | `result-track:e36ceb5e6d7dbd0c601c0578e107653381fa26bc3da6d5d42462501f4051a31f` |
| 17 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/withideal--da0e3e95d21691ca06af16cf.md) | 243 | `declaration-track:da0e3e95d21691ca06af16cfd70aa2094a86397bd1d4436a156c83a1d31a1e43` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/instance--16f0bea45a05e90e14bd8858.md) | 251 | `declaration-track:16f0bea45a05e90e14bd8858de7f117a482e77b3dee16ad4f7c3f08348120bde` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/instance--51586556ca1124b073a6396e.md) | 254 | `declaration-track:51586556ca1124b073a6396efee9c6bc34cc47bc20ac6cb5fc8c6d7fe7019df3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/instance--23218cebef348ce3bb16b739.md) | 257 | `declaration-track:23218cebef348ce3bb16b7396f9b14f0f80e64c15a38c5cd38afa1558237e7be` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/instance--175ff51e8db4256757941e44.md) | 260 | `declaration-track:175ff51e8db4256757941e44fc8faf83aa5ea7411690bf190172cc997b266f92` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/instance--a9abd627c234800e5fda050b.md) | 263 | `declaration-track:a9abd627c234800e5fda050baf31c749f31c9b039af247b992b8158f71cec4fe` |
| 23 | `theorem` | [uniformContinuous_of_map_le](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/uniformcontinuous-of-map-le--65f574d55c43de44c360ef09.md) | 266 | `result-track:65f574d55c43de44c360ef09d9193fb1b0c3faf8f14b84f0f434f1322c587058` |
| 24 | `def` | [uniformEquiv](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/uniformequiv--2aaad0dd53f05de9cb06e690.md) | 275 | `declaration-track:2aaad0dd53f05de9cb06e690c5782bf9d7cf4f508a4a90c06652bc46ec6a046a` |
| 25 | `lemma` | [isTopologicallyNilpotent_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/istopologicallynilpotent-of-mem--371d47cece26b097cc285974.md) | 282 | `result-track:371d47cece26b097cc2859740f9c1333614fdb027baa40fc3b2342d44d951526` |
| 26 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/topologicalspacemodule--18edd8e09add1c6c2a1628ba.md) | 290 | `declaration-track:18edd8e09add1c6c2a1628baba3455b96578829ef3d20abc23671606e8e7ae9f` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/example--c4069eb693569799d59d8d04.md) | 297 | `declaration-track:c4069eb693569799d59d8d04b55d554667313c83001155e4fbd73ca0b9390ad7` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/example--d392a97bef2e50ea74bee15f.md) | 299 | `declaration-track:d392a97bef2e50ea74bee15f079d3d6245008352cdae28d8a6e9ee04a2dae48b` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/example--de9d1da37625ce1c49440e62.md) | 301 | `declaration-track:de9d1da37625ce1c49440e620efbe67f392e8497c2b3f533e5395428bf78baf5` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/example--61b9930b898a93b08c602e54.md) | 304 | `declaration-track:61b9930b898a93b08c602e54ae57d851dda47d3b7cd86bbaae8780e22a98849f` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Variant6103acfb255e9b05d838b8f1a604c7bba96a98410c6c7dd438dd62c7d146bd44.lean/declarations/example--4101e8ed6813fc7c7cf99b8a.md) | 307 | `declaration-track:4101e8ed6813fc7c7cf99b8ae7748c70a0ecdef1675e2fb3704dfc83720e77e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
