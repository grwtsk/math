# Verification target: GRWTSK.Topology.GeneralTopology.Clopen.Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6350b9ac3f3b7507094908a2180ddb7bc386a1f0`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Subset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPreconnected.subset_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-subset-isclopen--0cdc4a349bf5f704f0b21d13.md) | 34 | `result-track:0cdc4a349bf5f704f0b21d1305e73f7d703e039eded92a150efd04f4ba8b88fc` |
| 2 | `theorem` | [Sigma.isConnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/sigma-isconnected-iff--35d62892f9dd0d4091b5bd93.md) | 38 | `result-track:35d62892f9dd0d4091b5bd933ae526684b7198202a97a6917803725c675ae6a3` |
| 3 | `theorem` | [Sigma.isPreconnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/sigma-ispreconnected-iff--55e894908c44048654b63695.md) | 49 | `result-track:55e894908c44048654b63695315da244202f43b75799daa64ee8bf55d7ba3659` |
| 4 | `theorem` | [Sum.isConnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/sum-isconnected-iff--b09abbe68cae531c84f2139c.md) | 59 | `result-track:b09abbe68cae531c84f2139c3bac43850637820937163ea30fa7ebcec37abd4d` |
| 5 | `theorem` | [Sum.isPreconnected_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/sum-ispreconnected-iff--9e725561035c9292f11a0f44.md) | 78 | `result-track:9e725561035c9292f11a0f44da31ad6581e74412fcbc837a512715a14b66b394` |
| 6 | `theorem` | [Continuous.exists_lift_sigma](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/continuous-exists-lift-sigma--9e17550e188cc60a09b608d0.md) | 94 | `result-track:9e17550e188cc60a09b608d0adc1a16cfcb556d624b15549fb8457667ee0fb67` |
| 7 | `theorem` | [nonempty_inter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/nonempty-inter--233fd8a4d786fde94c4ba224.md) | 104 | `result-track:233fd8a4d786fde94c4ba2243893c120ab7a81c3b45806bae8ce446a7d2eb604` |
| 8 | `theorem` | [isClopen_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-iff--5d1bf16e7c3df8935f2b9f84.md) | 108 | `result-track:5d1bf16e7c3df8935f2b9f84532d91dbaa238ec6f19111ddca3997ce4d2c5245` |
| 9 | `theorem` | [IsClopen.eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-eq-univ--ffab7a05b5bed671b3e02fac.md) | 120 | `result-track:ffab7a05b5bed671b3e02facd4637fc079baf05158c12cdf5438f02ad166b0a1` |
| 10 | `lemma` | [isClopen_preimage_val](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-preimage-val--a6dc3b24708d1036e0165fdf.md) | 125 | `result-track:a6dc3b24708d1036e0165fdf76f819bcd8329f6cde50a194e1a548d6965585be` |
| 11 | `lemma` | [subsingleton_of_disjoint_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/subsingleton-of-disjoint-isclopen--557e82ed65cba4101379473e.md) | 142 | `result-track:557e82ed65cba4101379473e77fec74922cceb4febec4be3bc41a7332a34479a` |
| 12 | `lemma` | [subsingleton_of_disjoint_isOpen_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/subsingleton-of-disjoint-isopen-iunion-eq-univ--2adb0e8618e6dbb7e094a52d.md) | 158 | `result-track:2adb0e8618e6dbb7e094a52dbb6d95a260a3b4f1059cf2419dd9ca17699a785e` |
| 13 | `lemma` | [subsingleton_of_disjoint_isClosed_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/subsingleton-of-disjoint-isclosed-iunion-eq-univ--76f83b8feab3f7a0c307fb3b.md) | 170 | `result-track:76f83b8feab3f7a0c307fb3be0497b93b7d75fe898c8c5db438f8e379639c09f` |
| 14 | `theorem` | [frontier_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/frontier-eq-empty-iff--4de988805dec56d69e78c8c6.md) | 182 | `result-track:4de988805dec56d69e78c8c6dcaf06da6dc7627b46d58fcb68ba9698ca43e798` |
| 15 | `theorem` | [nonempty_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/nonempty-frontier-iff--fdc92d58de39d3c9f18b40b4.md) | 186 | `result-track:fdc92d58de39d3c9f18b40b4733fe94c1e2d19b078276822faa612e514cb152d` |
| 16 | `lemma` | [PreconnectedSpace.induction₂'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/preconnectedspace-induction--7894b5dccad7a7cadf5acd0d.md) | 193 | `result-track:7894b5dccad7a7cadf5acd0d472e3e1cf4ffadfd1dfee7a32101e68845dcf348` |
| 17 | `lemma` | [PreconnectedSpace.induction₂](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/preconnectedspace-induction--41ad23ab8827993498d653c0.md) | 213 | `result-track:41ad23ab8827993498d653c0db17603d76501c070974e51485531548e6df55cc` |
| 18 | `lemma` | [IsPreconnected.induction₂'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-induction--783f4fa1bcc96613f6b695ed.md) | 223 | `result-track:783f4fa1bcc96613f6b695ed90cfd44218c030b05f2c0f755fa756b7629ce9e0` |
| 19 | `lemma` | [IsPreconnected.induction₂](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-induction--0be8337df58389021e2a96ab.md) | 240 | `result-track:0be8337df58389021e2a96ab78df9fe8a5fefdd46c19315c26dd5c64a3a1550b` |
| 20 | `theorem` | [isPreconnected_iff_subset_of_disjoint](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-iff-subset-of-disjoint--c818f33ef30dcd437ad3556f.md) | 251 | `result-track:c818f33ef30dcd437ad3556ff255cd9fbe869bfaeea3a4d405810e04fe4c1372` |
| 21 | `theorem` | [isConnected_iff_sUnion_disjoint_open](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isconnected-iff-sunion-disjoint-open--ffbb80dd21ffe6e3ed8967ae.md) | 276 | `result-track:ffbb80dd21ffe6e3ed8967ae6860dfdd220fc212a4abcd0997e6584064da1309` |
| 22 | `theorem` | [disjoint_or_subset_of_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/disjoint-or-subset-of-isclopen--8ce7968f94075d993a8daadc.md) | 298 | `result-track:8ce7968f94075d993a8daadca8eb70d036168140ff62e20102d382ad27e16596` |
| 23 | `theorem` | [isPreconnected_iff_subset_of_disjoint_closed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-iff-subset-of-disjoint-closed--b27953f7ee87dec5346cdf0e.md) | 305 | `result-track:b27953f7ee87dec5346cdf0ea2bd48e5e702c87d3f522d20d3aab61ed90f8382` |
| 24 | `theorem` | [isPreconnected_iff_subset_of_fully_disjoint_closed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-iff-subset-of-fully-disjoint-closed--c5642263e83f566eacde1ac6.md) | 331 | `result-track:c5642263e83f566eacde1ac6c4d946d37768a65b6bc9542891dab3115e07ce23` |
| 25 | `theorem` | [IsClopen.connectedComponent_subset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-connectedcomponent-subset--0d4dd9624209cd9b8968c92a.md) | 345 | `result-track:0d4dd9624209cd9b8968c92a0ebc3df1acab5dd33cb579337e1cd3b617a97ee2` |
| 26 | `theorem` | [connectedComponent_subset_iInter_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedcomponent-subset-iinter-isclopen--24c69ad28a4b9ca349c3f161.md) | 351 | `result-track:24c69ad28a4b9ca349c3f161523d79b8ed0842da459dc067b06a3f5776d1f5f9` |
| 27 | `theorem` | [IsClopen.biUnion_connectedComponent_eq](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-biunion-connectedcomponent-eq--1c7a4fe54a10918d2520faa2.md) | 356 | `result-track:1c7a4fe54a10918d2520faa2d20c6a01853216f1f9ab00505fba5e7c7d9d1288` |
| 28 | `lemma` | [IsClopen.biUnion_connectedComponentIn](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isclopen-biunion-connectedcomponentin--20d5b1686e9a4e2c33716a82.md) | 364 | `result-track:20d5b1686e9a4e2c33716a824d81d366d04896cab96837d31e4a345d6403c6dc` |
| 29 | `theorem` | [preimage_connectedComponent_connected](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/preimage-connectedcomponent-connected--c45ddd593561636ea6700884.md) | 380 | `result-track:c45ddd593561636ea670088494c36fd3caf56a53b65ae21782ff3c67dccbcb88` |
| 30 | `theorem` | [Topology.IsQuotientMap.preimage_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/topology-isquotientmap-preimage-connectedcomponent--bfc572226113b9c83e955090.md) | 454 | `result-track:bfc572226113b9c83e955090308fba59950f2125621fc75be1e63f9ad07ac0b4` |
| 31 | `lemma` | [Topology.IsQuotientMap.image_connectedComponent](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/topology-isquotientmap-image-connectedcomponent--eb8ab5ad0a4b0624b6f94623.md) | 464 | `result-track:eb8ab5ad0a4b0624b6f94623d43620204e5e14ba58cd6939b3d6362526dbc70f` |
| 32 | `def` | [connectedComponentSetoid](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedcomponentsetoid--d2bd6e2c39cfefd49eea1721.md) | 476 | `declaration-track:d2bd6e2c39cfefd49eea17215f5d0de9b8ac60fa077accdad6da2a8da39d801c` |
| 33 | `def` | [ConnectedComponents](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedcomponents--26d8427026ddff3c30653819.md) | 481 | `declaration-track:26d8427026ddff3c30653819cd531aeebe31bcdaec113d05f1a4c8dd6db7c081` |
| 34 | `def` | [mk](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/mk--84eebfe8e73b14ba257c766d.md) | 487 | `declaration-track:84eebfe8e73b14ba257c766d909bf37686318ee087bcd21124b51497b7d75173` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/instance--9599ae67c9501bd5a48711ab.md) | 489 | `declaration-track:9599ae67c9501bd5a48711abe9eb62dc41bbd5a6db795f4d88cfd3e7641955b2` |
| 36 | `theorem` | [coe_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/coe-eq-coe--cb9ed9f785e973014d40d2dd.md) | 492 | `result-track:cb9ed9f785e973014d40d2dde1e18a738e7f71a5a9e567b910486d72127be8a5` |
| 37 | `theorem` | [coe_ne_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/coe-ne-coe--daba87f595781e210fbead35.md) | 496 | `result-track:daba87f595781e210fbead35ffb68513e1c36921298f74e3474c2216c178ae57` |
| 38 | `theorem` | [coe_eq_coe'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/coe-eq-coe--3138a207fb47667e4fe46481.md) | 500 | `result-track:3138a207fb47667e4fe4648192c293d273c56a260dd1e5d7d38d4b9d590c47c3` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/instance--f26246d0b0e5c1732d6bdc86.md) | 503 | `declaration-track:f26246d0b0e5c1732d6bdc868a8918fa9c7cdfa8ab8d3b5dae5d163e5befade0` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/instance--df1f5ecc62f767ed76d30a9b.md) | 506 | `declaration-track:df1f5ecc62f767ed76d30a9b2382f6439bdab9a21fe7e471bdc12bf011b6aaf4` |
| 41 | `theorem` | [surjective_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/surjective-coe--bf7758e1f3e261f9e7b8dccd.md) | 509 | `result-track:bf7758e1f3e261f9e7b8dccdf85b0d2136de2f4f611081f60f941b7a91a56133` |
| 42 | `theorem` | [isQuotientMap_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/isquotientmap-coe--b8b106b7a93dc678109794b3.md) | 512 | `result-track:b8b106b7a93dc678109794b3a972adca5c5ce61cbc73bab139413f72d1762bac` |
| 43 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/continuous-coe--8aa1b877f3bbea5a2d75529e.md) | 519 | `result-track:8aa1b877f3bbea5a2d75529e3c7c954225ee233f3c73437eed70431bd812c36d` |
| 44 | `theorem` | [range_coe](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/range-coe--f2b3cb9f0c74a29a5e35388f.md) | 523 | `result-track:f2b3cb9f0c74a29a5e35388f2cd69d26d5e693dffc796d1723b7a3491b54dbd9` |
| 45 | `theorem` | [connectedComponents_preimage_singleton](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedcomponents-preimage-singleton--b51313ff09035dfbfd14a95b.md) | 530 | `result-track:b51313ff09035dfbfd14a95b5f7537a6a13e198d8df91ec6e5169a2cd00f0bb5` |
| 46 | `theorem` | [connectedComponents_preimage_image](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedcomponents-preimage-image--304717b9e2462817e2ebb4c1.md) | 537 | `result-track:304717b9e2462817e2ebb4c120845edb02fb646b86f536c5842799d945ae3be7` |
| 47 | `theorem` | [isPreconnected_of_forall_constant](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/ispreconnected-of-forall-constant--c906441f86b33ce24fad812d.md) | 547 | `result-track:c906441f86b33ce24fad812d898fb17d0573f67872ca20d3aec1a690065164eb` |
| 48 | `theorem` | [preconnectedSpace_of_forall_constant](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/preconnectedspace-of-forall-constant--e2cf26e81e99cdfdd4a4661a.md) | 562 | `result-track:e2cf26e81e99cdfdd4a4661a325af06d8368a6270a9829ea7cab3aaa1880521e` |
| 49 | `theorem` | [preconnectedSpace_iff_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/preconnectedspace-iff-clopen--73a2684f28a1f9ce03fdb460.md) | 567 | `result-track:73a2684f28a1f9ce03fdb460f82d67bb184d637cf1fcafe3ec7cd3d6bfee5593` |
| 50 | `theorem` | [connectedSpace_iff_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/declarations/connectedspace-iff-clopen--2a6022d129b6bba46ab3fa03.md) | 575 | `result-track:2a6022d129b6bba46ab3fa03087f9769bd50bd7394d01c5448c1226910475386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
