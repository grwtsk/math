# Verification target: GRWTSK.Geometry.ConvexGeometry.Join.Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "974774fa923505766768d307791735359c146a8d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `974774fa923505766768d307791735359c146a8d`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin--8521b4dd0793abd0fb9795c8.md) | 37 | `declaration-track:8521b4dd0793abd0fb9795c89074c8b38d6da6cd40eb9fdc070dbeb40ecd462f` |
| 2 | `theorem` | [mem_convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/mem-convexjoin--fd6a6de003cdf8c7b7d5c743.md) | 42 | `result-track:fd6a6de003cdf8c7b7d5c7435e7c7ae19f99061b0058fac5f3a0ab535b4423c6` |
| 3 | `theorem` | [convexJoin_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-comm--18dfe91907e2e3ccc283c2ee.md) | 45 | `result-track:18dfe91907e2e3ccc283c2ee60a59153379ae619909035653dd9fbc490a3f966` |
| 4 | `theorem` | [convexJoin_mono](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-mono--44cba0c9a61e5d4e0c1890b5.md) | 48 | `result-track:44cba0c9a61e5d4e0c1890b5f94df31187a2a4f74c918b188257c8c784fa349d` |
| 5 | `theorem` | [convexJoin_mono_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-mono-left--6f363c081193a0fff26ccb12.md) | 51 | `result-track:6f363c081193a0fff26ccb129108e579a0b9558f6a74900d495b6ab2bffc2cae` |
| 6 | `theorem` | [convexJoin_mono_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-mono-right--221a61d886c04e00c1e5c6c8.md) | 54 | `result-track:221a61d886c04e00c1e5c6c8d82ba44bbe1793662a2c1b010dec97620df43d71` |
| 7 | `theorem` | [convexJoin_empty_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-empty-left--11764288130687f7b7a817d2.md) | 58 | `result-track:11764288130687f7b7a817d24a0347ea10f8d28445e69f32fb928c96f05d534f` |
| 8 | `theorem` | [convexJoin_empty_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-empty-right--36ddedac2d1ca5782dabafa7.md) | 61 | `result-track:36ddedac2d1ca5782dabafa71671a807a4b8b82f6214d5ec54e0ef6587908bc6` |
| 9 | `theorem` | [convexJoin_singleton_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-singleton-left--fb18ef2663c84a278d0e85f3.md) | 64 | `result-track:fb18ef2663c84a278d0e85f31ba73d00777579b86900dcdd5f613200dc17ebb5` |
| 10 | `theorem` | [convexJoin_singleton_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-singleton-right--63d5c830e82fce0e39e0dff8.md) | 68 | `result-track:63d5c830e82fce0e39e0dff8e5126712ab1a7373bfff5799b0187c3d1216f642` |
| 11 | `theorem` | [convexJoin_singletons](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-singletons--4744859dacb7851ca7027435.md) | 71 | `result-track:4744859dacb7851ca70274354277f21486e7aafc125059e1cfd270300cd0725e` |
| 12 | `theorem` | [convexJoin_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-union-left--9652f7f43279f1fab171b70c.md) | 74 | `result-track:9652f7f43279f1fab171b70c30e0354c87b75c6b0790b53fe68554e76563fc7a` |
| 13 | `theorem` | [convexJoin_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-union-right--900d180985d7e1fef2628791.md) | 79 | `result-track:900d180985d7e1fef2628791b43adc11b2e45a4ff1601d86f5a13b85f55621fa` |
| 14 | `theorem` | [convexJoin_iUnion_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-iunion-left--f6553ff318c4f239d29fc117.md) | 84 | `result-track:f6553ff318c4f239d29fc1171f4cc3aca80215e5b7aa74cf9911ff7c83f82f85` |
| 15 | `theorem` | [convexJoin_iUnion_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-iunion-right--e7ae9d2e028ca6180d441ff2.md) | 90 | `result-track:e7ae9d2e028ca6180d441ff284eaadc54b1d722e3ca6d2a723c598b74ee2f0db` |
| 16 | `theorem` | [segment_subset_convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/segment-subset-convexjoin--aead22ed16235a40ec74308b.md) | 94 | `result-track:aead22ed16235a40ec74308b17af5a0a28c63394593194a7fd53e78f617725bf` |
| 17 | `theorem` | [subset_convexJoin_left](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/subset-convexjoin-left--cc8ad4948621d859510edddd.md) | 100 | `result-track:cc8ad4948621d859510edddd8aad4d36a19de0b2c16afead69617713e44ed34f` |
| 18 | `theorem` | [subset_convexJoin_right](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/subset-convexjoin-right--067496607f5bed10639448cd.md) | 104 | `result-track:067496607f5bed10639448cdce8a1af1acbbb545309528fb7e816f016e7bc625` |
| 19 | `theorem` | [convexJoin_subset](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-subset--d8c87f06cc4e4c15e0deec9f.md) | 109 | `result-track:d8c87f06cc4e4c15e0deec9faa0872ed497d7199ee84d4cd9589071c8018095b` |
| 20 | `theorem` | [convexJoin_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-subset-convexhull--28af48b5c623d1e5db7588de.md) | 112 | `result-track:28af48b5c623d1e5db7588de7888c06126e23d16781d3ea91d5158a34a47d319` |
| 21 | `theorem` | [convexJoin_assoc_aux](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-assoc-aux--4e6993eb4a49ad42e5d1e062.md) | 124 | `result-track:4e6993eb4a49ad42e5d1e062b8424acf03cc778bd56062a525403d7e46f99b16` |
| 22 | `theorem` | [convexJoin_assoc](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-assoc--19790f4cc1b9f7b88cfb685c.md) | 138 | `result-track:19790f4cc1b9f7b88cfb685ca607a167ec9ace8cded72b09dff2c2fce89dfa7d` |
| 23 | `theorem` | [convexJoin_left_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-left-comm--ce7f695a9b37d83e07c61b74.md) | 144 | `result-track:ce7f695a9b37d83e07c61b74060b7c78618b611fdd091f4435f8a2cdeb0e4851` |
| 24 | `theorem` | [convexJoin_right_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-right-comm--8d6f53b8f16bbcfabdb44610.md) | 148 | `result-track:8d6f53b8f16bbcfabdb4461000feac7730745f0a222799cf4ba6a832305dbe9c` |
| 25 | `theorem` | [convexJoin_convexJoin_convexJoin_comm](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-convexjoin-convexjoin-comm--11c61c962a8a4125be912ca0.md) | 152 | `result-track:11c61c962a8a4125be912ca01bfabc38305bd148430c2bced0fcbb82f8f1b7ae` |
| 26 | `theorem` | [Convex.convexJoin](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convex-convexjoin--7226ec9aa79fd9b15be6c2a5.md) | 157 | `result-track:7226ec9aa79fd9b15be6c2a5241cad0a8753e5e1cbfd785363c2241545ee93e3` |
| 27 | `theorem` | [Convex.convexHull_union](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convex-convexhull-union--ec97c63f1e0b3a28f0e47734.md) | 169 | `result-track:ec97c63f1e0b3a28f0e477347be0b63000569beee8c15422a5e5e06dbe1cd0c4` |
| 28 | `theorem` | [convexHull_union](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexhull-union--39aa464613282d2fbc4b2370.md) | 175 | `result-track:39aa464613282d2fbc4b2370521748127843bb1375591b8a98ff203ce1628e14` |
| 29 | `theorem` | [convexHull_insert](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexhull-insert--f98686b369860042760cffa8.md) | 180 | `result-track:f98686b369860042760cffa85e2f4025843b530922cca7dced5cb16053898950` |
| 30 | `theorem` | [convexJoin_segments](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-segments--60838cf9cb98d7e3a03eca09.md) | 184 | `result-track:60838cf9cb98d7e3a03eca095f6d8d25ed7d6b254578a860271743e3170e1572` |
| 31 | `theorem` | [convexJoin_segment_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-segment-singleton--f8772ef3e924291f6d774dc0.md) | 190 | `result-track:f8772ef3e924291f6d774dc00f7995c18e8c28b984b2910e6a23ece8745ff50f` |
| 32 | `theorem` | [convexJoin_singleton_segment](../../../../../mathematics/Geometry/ConvexGeometry/Join/Variant9d9040ba0a346dc9466d28adde468722c7ecc5f0095f3fbcdf4b55004c4b769d.lean/declarations/convexjoin-singleton-segment--8a444be323ae9d388989471c.md) | 194 | `result-track:8a444be323ae9d388989471c0a651857a05662574e7da270e8f24c3b2e45ccff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
