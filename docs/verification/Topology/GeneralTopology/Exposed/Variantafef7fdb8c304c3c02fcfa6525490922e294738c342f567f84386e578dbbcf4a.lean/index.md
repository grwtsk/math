# Verification target: GRWTSK.Topology.GeneralTopology.Exposed.Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeb577ac628930e650069fff67d7e1228380155",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeb577ac628930e650069fff67d7e1228380155`.

Source path: `GRWTSK/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/isexposed--89817ed37bd1bd1a937cfb2b.md) | 60 | `declaration-track:89817ed37bd1bd1a937cfb2b33bdc2a33076f051a6cb9ff644abdba4015ded15` |
| 2 | `def` | [ContinuousLinearMap.toExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/continuouslinearmap-toexposed--817327efea010947a3f1af77.md) | 73 | `declaration-track:817327efea010947a3f1af77bbb1f6b25c2e96223878271729a0ab5251018832` |
| 3 | `theorem` | [ContinuousLinearMap.toExposed.isExposed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/continuouslinearmap-toexposed-isexposed--17c24f8c2e64fae2617b1f23.md) | 77 | `result-track:17c24f8c2e64fae2617b1f230f7cd8f40cb554957ed528452c6057d19dfa7283` |
| 4 | `theorem` | [isExposed_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/isexposed-empty--fe4a6c5aae95001b8c0754d2.md) | 80 | `result-track:fe4a6c5aae95001b8c0754d2991b9d7cce02fb48821c2209d28a3d4615850bb6` |
| 5 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/subset--2a9ca346759455357191718d.md) | 87 | `result-track:2a9ca346759455357191718d84fb66fde1756b58252f0de208856ff3ead73237` |
| 6 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/refl--425885d1a9349718cef8d225.md) | 94 | `result-track:425885d1a9349718cef8d22512eeafcfdefedbc96554a7b9c0dbca42c8cc38c0` |
| 7 | `theorem` | [antisymm](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/antisymm--376922a1f86347f4daf316e8.md) | 98 | `result-track:376922a1f86347f4daf316e8df6ee3688d4c0baedd1a5f29dd27725ae00a2d1c` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/mono--c54e685fd03188c6608e2be9.md) | 106 | `result-track:c54e685fd03188c6608e2be9be30ce6eb9e2f3546becec12723a216d48881577` |
| 9 | `theorem` | [eq_inter_halfspace'](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/eq-inter-halfspace--417ac0ff9f35319bad9715c8.md) | 116 | `result-track:417ac0ff9f35319bad9715c871a4ff2abd7370b6d0a102aeb2451e4e93a1f8bd` |
| 10 | `theorem` | [eq_inter_halfspace](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/eq-inter-halfspace--5dd465f86fc39adf7b8751d2.md) | 127 | `result-track:5dd465f86fc39adf7b8751d21dad420aa8f8eadd237b43db43b1c5752589815c` |
| 11 | `theorem` | [inter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/inter--2a8f5fe5ac0e14a2309a6b64.md) | 139 | `result-track:2a8f5fe5ac0e14a2309a6b6489e8c6945ecf5c7880021a8c76d3df8f6f637aba` |
| 12 | `theorem` | [sInter](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/sinter--a05782c44288036d1bd7d91f.md) | 155 | `result-track:a05782c44288036d1bd7d91f39c41fc51b978111732a9ce6310ff95f07a75d76` |
| 13 | `theorem` | [inter_left](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/inter-left--ba1c3acb14c1524b63bdb401.md) | 168 | `result-track:ba1c3acb14c1524b63bdb401aecf789c9655a36f8aae4c75a4311c7882beb13c` |
| 14 | `theorem` | [inter_right](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/inter-right--f18daf4a83ba1eae0d0c8293.md) | 175 | `result-track:f18daf4a83ba1eae0d0c82937bf18f39781123383cfea99f241c6d94c2cfb73b` |
| 15 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/isclosed--882c099a40063b6dd68d325c.md) | 180 | `result-track:882c099a40063b6dd68d325ce6f0a02ec42447f1b450ef26e07ac044f672aa5f` |
| 16 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/iscompact--0c3166e525dcbaaa2595d0a1.md) | 188 | `result-track:0c3166e525dcbaaa2595d0a1f0db7faf4d28e94a5aad362d0cd2bac179ae5804` |
| 17 | `def` | [Set.exposedPoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/set-exposedpoints--af569418fe5df35bde6834aa.md) | 199 | `declaration-track:af569418fe5df35bde6834aa9a4744dcbcc00909327a83d075b1ab88242fab99` |
| 18 | `theorem` | [exposed_point_def](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/exposed-point-def--32836fb171523a607beb821e.md) | 205 | `result-track:32836fb171523a607beb821ed1f743487459096ac602f1bb7ddb46ac65292701` |
| 19 | `theorem` | [exposedPoints_subset](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/exposedpoints-subset--02358bb0c6bc7e6f093bfcd4.md) | 210 | `result-track:02358bb0c6bc7e6f093bfcd48e4d89e44c1e591e4e9e866494ca9afe53bbc0ce` |
| 20 | `theorem` | [exposedPoints_empty](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/exposedpoints-empty--23da2de6980773388b3548ba.md) | 214 | `result-track:23da2de6980773388b3548ba9d2de246b9ab3e9b02a206ea76efafb723b0c8cc` |
| 21 | `theorem` | [mem_exposedPoints_iff_exposed_singleton](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/mem-exposedpoints-iff-exposed-singleton--ac2ed027485d30a8f35c3b4f.md) | 219 | `result-track:ac2ed027485d30a8f35c3b4f5a290acf79aaa553c0b269e2866fa97be123d214` |
| 22 | `theorem` | [convex](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/convex--448158f6dbcebf0ba033c71e.md) | 242 | `result-track:448158f6dbcebf0ba033c71e21fab1aa7e7c8910822657dbc6a5e28e4cc8e920` |
| 23 | `theorem` | [isExtreme](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/isextreme--b69badfe2263a4348fa99e15.md) | 252 | `result-track:b69badfe2263a4348fa99e1569be254e9c27d1d278c35ac0b05e66293e049462` |
| 24 | `theorem` | [exposedPoints_subset_extremePoints](../../../../../mathematics/Topology/GeneralTopology/Exposed/Variantafef7fdb8c304c3c02fcfa6525490922e294738c342f567f84386e578dbbcf4a.lean/declarations/exposedpoints-subset-extremepoints--dc269699e85a119701261ce7.md) | 267 | `result-track:dc269699e85a119701261ce72dc534ce648b015be07d6900527bac5a1241d4a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
