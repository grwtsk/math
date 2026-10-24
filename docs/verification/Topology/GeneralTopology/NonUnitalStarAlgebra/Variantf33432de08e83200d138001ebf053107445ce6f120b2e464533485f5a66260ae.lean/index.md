# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalStarAlgebra.Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de17860f93568cf756e4b3efe1a5721b929e852",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de17860f93568cf756e4b3efe1a5721b929e852`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean.json)

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
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/instistopologicalsemiring--21e295d0a25d2f4ac7adf335.md) | 45 | `declaration-track:21e295d0a25d2f4ac7adf335e77d248b8178e445e2122476c2e148184f02c1ef` |
| 2 | `instance` | [instIsSemitopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/instissemitopologicalsemiring--9639d60459ded899ed57b853.md) | 49 | `declaration-track:9639d60459ded899ed57b853743d3d2d83b2db5119bd06a5b1f2378517325b9f` |
| 3 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure--39340cabee6958a82e2f2343.md) | 57 | `declaration-track:39340cabee6958a82e2f23433d9abe9ee909eea0a0d3bfd35612d2a8c79eb9ac` |
| 4 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/le-topologicalclosure--15a1e7e2cd9dc7883f37b634.md) | 62 | `result-track:15a1e7e2cd9dc7883f37b63498a4daf71672f2f685d70131e3c336090234a98e` |
| 5 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/isclosed-topologicalclosure--210482c5f3e4785e7999a6a6.md) | 65 | `result-track:210482c5f3e4785e7999a6a6fc3467c568505a081beea42c4a20439bb80511dd` |
| 6 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure-minimal--0ff149c0ed2904cbc444fbda.md) | 68 | `result-track:0ff149c0ed2904cbc444fbdadd729a02aa9f14b3a8b3dba6e15a89e6817267fe` |
| 7 | `theorem` | [topologicalClosure_mono](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure-mono--fc07ab837508b3872b61c3fd.md) | 74 | `result-track:fc07ab837508b3872b61c3fd24d7b640faf0616b4b1c25418c593309bdd2f01b` |
| 8 | `instance` | [isMulCommutative_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/ismulcommutative-topologicalclosure--bd3cf55a187cbdba97780f0a.md) | 78 | `declaration-track:bd3cf55a187cbdba97780f0ac9f90fd184a203902b5c5861153269d62614a87f` |
| 9 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/nonunitalcommsemiringtopologicalclosure--9acee130d1aa5b90a52dedca.md) | 88 | `declaration-track:9acee130d1aa5b90a52dedca95db8d56546c685d0123aa947947fc0e0cd2d17d` |
| 10 | `lemma` | [map_topologicalClosure_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/map-topologicalclosure-le--657613f85ed2fb4586fc8fa0.md) | 98 | `result-track:657613f85ed2fb4586fc8fa066a8ced980272fd7fa5a7a8e135bfa5df3c79f45` |
| 11 | `lemma` | [topologicalClosure_map_le](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure-map-le--fae61128c5c93cad8b3a2d76.md) | 102 | `result-track:fae61128c5c93cad8b3a2d767451ddb95eeb8183db517e2d52bbe172e0d9e1a7` |
| 12 | `lemma` | [topologicalClosure_map](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure-map--7e01debab80ab15958b9b580.md) | 106 | `result-track:7e01debab80ab15958b9b580c131c7a1918614a43d6e1c3c46901b5d243159f4` |
| 13 | `lemma` | [topologicalClosure_adjoin_le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/topologicalclosure-adjoin-le-centralizer-centralizer--cbcb7b354ab84dbe1104b9c3.md) | 112 | `result-track:cbcb7b354ab84dbe1104b9c3f7617ac56e8a2f776184fe3385ce9960f4fde5af` |
| 14 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/instistopologicalring--396f7aa2a2544859dd15640d.md) | 127 | `declaration-track:396f7aa2a2544859dd15640d522ac10969f21e62bccca048b7f914b5a70d819b` |
| 15 | `instance` | [instIsSemitopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/instissemitopologicalring--50b49cf554c6a68f7f506d5b.md) | 131 | `declaration-track:50b49cf554c6a68f7f506d5b17965edce9f6440fff1c863856f0161a4bfd017f` |
| 16 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/nonunitalcommringtopologicalclosure--77053dc32e5f80af66f00796.md) | 143 | `declaration-track:77053dc32e5f80af66f00796319c56b82de12769249e24ddce564a3171f0dcbb` |
| 17 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/elemental--d05a4cbda14f6f0f20b06350.md) | 162 | `declaration-track:d05a4cbda14f6f0f20b06350c9fb66d549ec22f27e62c901a6569136f0de8a1d` |
| 18 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/self-mem--9678bc7cfbd64f9fa4cc53aa.md) | 168 | `result-track:9678bc7cfbd64f9fa4cc53aa7bc5d4b72ba1247a42af8833441f8fac26f6003f` |
| 19 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/star-self-mem--a01b2af6f19e76e7f7ccd608.md) | 172 | `result-track:a01b2af6f19e76e7f7ccd608a3ba9fad85b6b7a7a4ca01079293783ac2233e5b` |
| 20 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/le-of-mem--dbd1c4523b918214a7d76559.md) | 176 | `result-track:dbd1c4523b918214a7d76559264b43014c113bfc0fe03e43626b797fe58de302` |
| 21 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/le-iff-mem--5e134db71154578d5c2b136e.md) | 181 | `result-track:5e134db71154578d5c2b136edbc36d07736518f3cbd38a7b9bf37b329f7ccbda` |
| 22 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/isclosed--3978fa9ff6b652f6fa81f44e.md) | 185 | `result-track:3978fa9ff6b652f6fa81f44ee6b3b0f58d448c1b4fef371f097a571d71f8cf87` |
| 23 | `instance` | [isMulCommutative](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/ismulcommutative--c09c09302a4ec5228bff3559.md) | 188 | `declaration-track:c09c09302a4ec5228bff3559fa765989c4db0738f8763edfe46a0f6b4e4ec7ec` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/instance--d160faeb3810f9e862a30c73.md) | 192 | `declaration-track:d160faeb3810f9e862a30c73a6303261111ead5e5c20e0128e5a2144da9d72b2` |
| 25 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/isclosedembedding-coe--b8150d095577c3059d43c031.md) | 199 | `result-track:b8150d095577c3059d43c0318584604d2ccfd7ad2511c040961e39bd43fd4d30` |
| 26 | `lemma` | [le_centralizer_centralizer](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/declarations/le-centralizer-centralizer--a1cdd274ed11f416509fead5.md) | 204 | `result-track:a1cdd274ed11f416509fead559f6fc8340c91932ed6e01911a2c82f58654f129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
