# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DirectionalChain.Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26a31c436f6389942ee6ef49e3242d87bbced86b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26a31c436f6389942ee6ef49e3242d87bbced86b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DirectionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/directionsystem--e64898ad1a4871c88e1e68b1.md) | 43 | `declaration-track:e64898ad1a4871c88e1e68b147a3b8fb26a5a5bb372811fecb5ccb71eb117b07` |
| 2 | `structure` | [Chain0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/chain0--5566d590dc085be20ddeea28.md) | 61 | `declaration-track:5566d590dc085be20ddeea28f8d83d59a56e8651fcd4713558be13db6485066f` |
| 3 | `structure` | [Chain1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/chain1--fec2201764f179bb0896b695.md) | 65 | `declaration-track:fec2201764f179bb0896b6952603840aab5e8f4e1a751fbc507b501617a0c505` |
| 4 | `def` | [Chain0.coeffAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/chain0-coeffat--a20e4d68cab3b39dfb48f08c.md) | 69 | `declaration-track:a20e4d68cab3b39dfb48f08ce40b7ffe7aa6402a4df68988a079285ff962084a` |
| 5 | `def` | [edgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/edgeboundary--184ecbd857167f601cddeecb.md) | 78 | `declaration-track:184ecbd857167f601cddeecb3ce320a2d7e2548c5c55478536c824796712a9ae` |
| 6 | `def` | [Chain1.boundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/chain1-boundary--137eb2706212a2d54bb33f09.md) | 83 | `declaration-track:137eb2706212a2d54bb33f09ab813e6b10a10428acf604d711c1c46967efd73d` |
| 7 | `def` | [Chain1.Closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/chain1-closed--d3745f762d47c072725cb6b5.md) | 93 | `declaration-track:d3745f762d47c072725cb6b528b13758cf34bc0cf7201b83c37963cd87d16642` |
| 8 | `structure` | [BoundaryCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/boundarycertificate--c80e5d948c2f80de0cacabdb.md) | 100 | `declaration-track:c80e5d948c2f80de0cacabdb4b39a48d60f4cd422a6a85c1eb2b430ca954248c` |
| 9 | `structure` | [NonBoundaryCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/nonboundarycertificate--015cf8025d6c460dcd908a3f.md) | 109 | `declaration-track:015cf8025d6c460dcd908a3f765a1b38db9bb53b736220bdc79548ea9edddce8` |
| 10 | `structure` | [OppositeDirectionPair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/oppositedirectionpair--d629120a391a845950ef4f8c.md) | 116 | `declaration-track:d629120a391a845950ef4f8c289b6279f791c45682709e02c79207df8f693f44` |
| 11 | `def` | [OppositeDirectionPair.edgeCircle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/oppositedirectionpair-edgecircle--196c468e8c6a170bd918f612.md) | 125 | `declaration-track:196c468e8c6a170bd918f61281f4ed964381d3a4fbe2195dd7e266f600e750a0` |
| 12 | `structure` | [EdgeCircleClosureCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/edgecircleclosurecertificate--70410aed08e5803cb4315fd6.md) | 130 | `declaration-track:70410aed08e5803cb4315fd671d852f90e7360aa5685547cfaad634315edecd2` |
| 13 | `inductive` | [BinaryVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binaryvertex--433dd7617d3dc2fe686886d5.md) | 139 | `declaration-track:433dd7617d3dc2fe686886d5382dccfcb28e508944399770685270186cb9e0ca` |
| 14 | `inductive` | [BinaryEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binaryedge--46450024b5b2fe4b8a56eb73.md) | 145 | `declaration-track:46450024b5b2fe4b8a56eb73badfbf85abe9113ad2aeb719b4e6608583e12d30` |
| 15 | `def` | [binaryDirectionSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binarydirectionsystem--3b146cf22b0499ba46fe23bd.md) | 153 | `declaration-track:3b146cf22b0499ba46fe23bdcf9156153654244bdaf2cfd52850b8327f314110` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/instance--9b283420a03f1c4429d4a1ef.md) | 191 | `declaration-track:9b283420a03f1c4429d4a1ef9312df584359d653276fb9e591e873f620192729` |
| 17 | `def` | [binaryOppositePair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binaryoppositepair--4fb7c8708aead2d22cf4bd85.md) | 195 | `declaration-track:4fb7c8708aead2d22cf4bd85699f7ab17ae03d410b7aaa8c0df863339973da25` |
| 18 | `theorem` | [binary_edgeCircle_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binary-edgecircle-closed--3c3a6f45683b5fc79222016b.md) | 207 | `result-track:3c3a6f45683b5fc79222016b2ee7c553c86e66a894888968e076f1f9588f3185` |
| 19 | `def` | [binaryEdgeCircleClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant50084664dd691508bf746975f467dba1fb3f1448993861c4b7b6ee0fec00fc6b.lean/declarations/binaryedgecircleclosure--704d51a3515a9ee0c54127bf.md) | 213 | `declaration-track:704d51a3515a9ee0c54127bf20a9d277fa561a0cb9f5ac8eefbecaa98750a163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
