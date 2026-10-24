# Verification target: GRWTSK.Topology.GeneralTopology.CompletelyRegular.Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f97dddee5dc39432fdf44eb47b44115a99d816",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f97dddee5dc39432fdf44eb47b44115a99d816`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Indicator` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace--d14c11765e2318359c4c2163.md) | 78 | `declaration-track:d14c11765e2318359c4c21631199a4dec287ff35fc078fa6b8a9b2a583cf702b` |
| 2 | `lemma` | [completelyRegularSpace_iff_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-iff-isopen--dc2a89c00077dcdb72e63fce.md) | 82 | `result-track:dc2a89c00077dcdb72e63fce059fc214090b291b2a08c726a4f81dbadc10b0e2` |
| 3 | `lemma` | [CompletelyRegularSpace.completely_regular_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-completely-regular-isopen--3bc931e2cfc121fde31bad2c.md) | 89 | `result-track:3bc931e2cfc121fde31bad2c612b931df82ee04a988bb26dcb65a2e50dbf5ce8` |
| 4 | `instance` | [CompletelyRegularSpace.instRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-instregularspace--dec5154089b66710b83d9653.md) | 94 | `declaration-track:dec5154089b66710b83d9653117db1bb22245a30340c03c738626591c3071f04` |
| 5 | `instance` | [NormalSpace.instCompletelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/normalspace-instcompletelyregularspace--53f3ee8ffb5135919a901694.md) | 103 | `declaration-track:53f3ee8ffb5135919a90169480a00d0611ec855680ba2fb57b8baa5da1c4d93b` |
| 6 | `lemma` | [Topology.IsInducing.completelyRegularSpace](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/topology-isinducing-completelyregularspace--d715b048b53e2e9839b05043.md) | 119 | `result-track:d715b048b53e2e9839b05043c0dcd7cc812cfd068c70d2e763a351539c78803b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--9e2f35f184cbcd52f03f9156.md) | 131 | `declaration-track:9e2f35f184cbcd52f03f9156faf088101a10ee7c5fb37ec2d1e60565e8b15222` |
| 8 | `lemma` | [completelyRegularSpace_induced](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-induced--0e0e8391beaaf82b6cf8bd00.md) | 134 | `result-track:0e0e8391beaaf82b6cf8bd0034e9574df225520f67636066d4795242a033e46b` |
| 9 | `lemma` | [completelyRegularSpace_iInf](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-iinf--4a12012d374be4b39ab11c19.md) | 139 | `result-track:4a12012d374be4b39ab11c19900a074fcc727afca3d814891ff1cc769233b67e` |
| 10 | `lemma` | [completelyRegularSpace_inf](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-inf--6523b3cfb1b2fe0bae46fe47.md) | 163 | `result-track:6523b3cfb1b2fe0bae46fe4718ba042fdfbcd078a68c882275ce329e18007bc0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--2fada02f76b9128bfa6799b2.md) | 168 | `declaration-track:2fada02f76b9128bfa6799b2ecce5b4491f183acbc700d5440ba20ed861d97c2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--c1fe1488b455dabbf85ac7ba.md) | 172 | `declaration-track:c1fe1488b455dabbf85ac7bac41586e63dbec32df98c0e7ddbc0ae308474a12b` |
| 13 | `lemma` | [isInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/isinducing-stonecechunit--b824c75dbf84566bc174cf2a.md) | 178 | `result-track:b824c75dbf84566bc174cf2aee4ea56e5a9b4016ae341c29bf8ea96b9452d00c` |
| 14 | `lemma` | [isDenseInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/isdenseinducing-stonecechunit--5b02152991a5d35d9f713779.md) | 195 | `result-track:5b02152991a5d35d9f71377988050055c5b74a7179a171893d5b7cf9ba65f398` |
| 15 | `lemma` | [completelyRegularSpace_iff_isInducing_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-iff-isinducing-stonecechunit--18c5edebdac15bed3754469c.md) | 200 | `result-track:18c5edebdac15bed3754469cbd2de9dee79e1eedf7dddddb45700a8cd04237c9` |
| 16 | `theorem` | [CompletelyRegularSpace.of_isTopologicalBasis_clopens](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-of-istopologicalbasis-clopens--2af020cc258f990782e0cb08.md) | 205 | `result-track:2af020cc258f990782e0cb0850192e98681baee8d263849c89874f959e70341a` |
| 17 | `theorem` | [CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/completelyregularspace-istopologicalbasis-clopens-of-cardinalmk-lt-conti--0e04f0a93260b53752a7d9b2.md) | 215 | `result-track:0e04f0a93260b53752a7d9b2fa82293fde8cd20a6b1f3750d401d10afd727a1d` |
| 18 | `class` | [T35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/t35space--767c5c9c23a77fdb27ad1e64.md) | 236 | `declaration-track:767c5c9c23a77fdb27ad1e6416fc568ef8c6f23c9e95bba12f0a86aed94a38ad` |
| 19 | `instance` | [T35Space.instT3space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/t35space-instt3space--12048bb5fa77f2d6bdc18aad.md) | 238 | `declaration-track:12048bb5fa77f2d6bdc18aadf56698e8b1fc87c62d9cf2c4ada4ae20c230bd32` |
| 20 | `instance` | [T4Space.instT35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/t4space-instt35space--398d004290a85f15f1bba815.md) | 240 | `declaration-track:398d004290a85f15f1bba815e9c83bbf2962167ab1e6fdc0c81dc3c7d28602bb` |
| 21 | `lemma` | [Topology.IsEmbedding.t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/topology-isembedding-t35space--b6185c00ab8173c1d9eed866.md) | 242 | `result-track:b6185c00ab8173c1d9eed866e9e1fbd3f3c6a3815001f328c612c8945fd5142d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--6308636fea4e26595ea48274.md) | 247 | `declaration-track:6308636fea4e26595ea48274d346a865d60f812d8151afbda2ad209f9a59b7a3` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--2b4fc00c1956293d3819a97f.md) | 249 | `declaration-track:2b4fc00c1956293d3819a97f102b67e12a7d4aee4e3e8381ccc3bccd0322e958` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/instance--71455bc44d01369f2fb5ed06.md) | 252 | `declaration-track:71455bc44d01369f2fb5ed06ff0283cceeca4f52abba351766a3ba832d40a7f1` |
| 25 | `lemma` | [separatesPoints_continuous_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/separatespoints-continuous-of-t35space--ff3c739143537052a7e8f955.md) | 255 | `result-track:ff3c739143537052a7e8f9552cdc356bf8f8dc9c08822d0ed0ae89d22b55ab67` |
| 26 | `lemma` | [separatesPoints_continuous_of_t35Space_Icc](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/separatespoints-continuous-of-t35space-icc--61f0ebe59a8e4957eb172603.md) | 262 | `result-track:61f0ebe59a8e4957eb172603a73878d836417da6485cdfa7ed1f4bf7054e7f56` |
| 27 | `lemma` | [injective_stoneCechUnit_of_t35Space](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/injective-stonecechunit-of-t35space--562870d76170d704d0f1a905.md) | 269 | `result-track:562870d76170d704d0f1a90526c8b32711274ebde2f7c6ff193f605cbeaaff9d` |
| 28 | `lemma` | [isEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/isembedding-stonecechunit--58579cfa72957af293086ca3.md) | 276 | `result-track:58579cfa72957af293086ca31e31b81fbb600abac7fd25eee33467744b3dddbc` |
| 29 | `lemma` | [isDenseEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/isdenseembedding-stonecechunit--f3f3a20908484e9c6b02a8d2.md) | 281 | `result-track:f3f3a20908484e9c6b02a8d2eafa2b20bc1934b4731068aa9a486e21fc6b2ba8` |
| 30 | `lemma` | [t35Space_iff_isEmbedding_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/declarations/t35space-iff-isembedding-stonecechunit--2e79bd590f93d7ff5f379c0f.md) | 286 | `result-track:2e79bd590f93d7ff5f379c0fdddff1c2d482ebaf1bd3162dd5995001269758ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
