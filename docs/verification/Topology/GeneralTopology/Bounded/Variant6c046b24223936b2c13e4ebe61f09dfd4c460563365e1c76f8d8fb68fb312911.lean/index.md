# Verification target: GRWTSK.Topology.GeneralTopology.Bounded.Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bebf5c1a9868dca69e5bbcdeb9bb9cffae8d3773",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bebf5c1a9868dca69e5bbcdeb9bb9cffae8d3773`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded--1245458457b8dcfa60b61c5d.md) | 61 | `declaration-track:1245458457b8dcfa60b61c5de242ac98ad264192eba178373cc34dddc396fef1` |
| 2 | `theorem` | [isVonNBounded_empty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-empty--f4f45a597ffe6aab2c0e0b42.md) | 67 | `result-track:f4f45a597ffe6aab2c0e0b42ecdb2e289717d01d497955f38822186b76f105cb` |
| 3 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff--4e6f4026ff19c1b03f5c0420.md) | 71 | `result-track:4e6f4026ff19c1b03f5c04207d7ccc686da584b903c10e3b07f2447af32edcbc` |
| 4 | `theorem` | [_root_.Filter.HasBasis.isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/root-filter-hasbasis-isvonnbounded-iff--dd02f74200bb77a4d86ca6cb.md) | 74 | `result-track:dd02f74200bb77a4d86ca6cb6223aaa6898286a77813b3cee15aab4af7a77a8d` |
| 5 | `theorem` | [IsVonNBounded.subset](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-subset--faba2536b42537f11d9581ac.md) | 81 | `result-track:faba2536b42537f11d9581ace3bf5d8fe6e568243e847ade53c21328f65c6272` |
| 6 | `theorem` | [isVonNBounded_union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-union--a9d00d99e5b008b1fdbe5c09.md) | 85 | `result-track:a9d00d99e5b008b1fdbe5c09a95134852a10504a1070843fb5cc59a16c96be6e` |
| 7 | `theorem` | [IsVonNBounded.union](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-union--1fec5aea2b38b4863380455f.md) | 90 | `result-track:1fec5aea2b38b4863380455f160092fe05750da5d77690d3c3d95c49a1b6fb88` |
| 8 | `theorem` | [IsVonNBounded.of_boundedSpace](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-boundedspace--b49a5b4edb6df81d11f53171.md) | 94 | `result-track:b49a5b4edb6df81d11f5317153e9156bb34a51053a11f3e4c0146d7ba328dfa5` |
| 9 | `theorem` | [IsVonNBounded.of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-subsingleton--6f90dbe50c3cb6581b3d98aa.md) | 98 | `result-track:6f90dbe50c3cb6581b3d98aac5286ad977effe90f2eef11b049e1c94d37b0dbd` |
| 10 | `theorem` | [isVonNBounded_iUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iunion--b4879d31f786367e52f14ef5.md) | 104 | `result-track:b4879d31f786367e52f14ef56a45a308984440db97676074b85fc0cb344a5e6a` |
| 11 | `theorem` | [isVonNBounded_biUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-biunion--1e87a7973eb9439f9af12d1c.md) | 108 | `result-track:1e87a7973eb9439f9af12d1c8deb4c695ec8c4ea8c3e80da8a562c91b2d5267b` |
| 12 | `theorem` | [isVonNBounded_sUnion](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-sunion--8dd653858e0a3eb781dd5545.md) | 113 | `result-track:8dd653858e0a3eb781dd554581e76e8083001bd839bd307b0b14d4517d9bdb63` |
| 13 | `theorem` | [IsVonNBounded.add](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-add--5701d355cb2c91399da0be49.md) | 124 | `result-track:5701d355cb2c91399da0be49f896aa09871b99746e7b1b25d9f4655fa50c4d8d` |
| 14 | `theorem` | [IsVonNBounded.neg](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-neg--d39e09b78b155e13b78cfcad.md) | 136 | `result-track:d39e09b78b155e13b78cfcade657b20a4de0419834dab61ee9a467347f9720aa` |
| 15 | `theorem` | [isVonNBounded_neg](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-neg--db7a2abc5beac0c3f7d84d87.md) | 141 | `result-track:db7a2abc5beac0c3f7d84d87ee178a6210d7db134b71a2161a95bb887bae383a` |
| 16 | `theorem` | [IsVonNBounded.sub](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-sub--7d54c32a3f2117c2671da6ee.md) | 146 | `result-track:7d54c32a3f2117c2671da6eec6379d39293c8bc0dcd33c7c2b605a6d08416f34` |
| 17 | `theorem` | [IsVonNBounded.of_topologicalSpace_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-topologicalspace-le--2cd81899ed2715eee56ffeaf.md) | 161 | `result-track:2cd81899ed2715eee56ffeaf477decafee2df41c5fd4b4bd047d33c414d15fc8` |
| 18 | `lemma` | [isVonNBounded_iff_tendsto_smallSets_nhds](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff-tendsto-smallsets-nhds--1e380beabb2f147b12e313ed.md) | 167 | `result-track:1e380beabb2f147b12e313edde56aef0166a536c3049537558a6e0834c54122d` |
| 19 | `lemma` | [isVonNBounded_iff_absorbing_le](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff-absorbing-le--74ce9e6db97d1067409d11fa.md) | 176 | `result-track:74ce9e6db97d1067409d11fa749e4f4b74d8e490a5e464362f0064d59c87937d` |
| 20 | `lemma` | [isVonNBounded_pi_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-pi-iff--708c5527e83c34050835c45c.md) | 181 | `result-track:708c5527e83c34050835c45c33e67bbf541240b9210ff3712acb73d24c9eb8e0` |
| 21 | `theorem` | [IsVonNBounded.image](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-image--d801f726142cba528573080f.md) | 194 | `result-track:d801f726142cba528573080fa370ec21912d9a14bff40221851d809b331a0ca8` |
| 22 | `theorem` | [IsVonNBounded.smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-smul-tendsto-zero--33141c4be7a82f71a0f4b928.md) | 207 | `result-track:33141c4be7a82f71a0f4b928f819d4c53ba1d9176aa9ee36431420f52079136c` |
| 23 | `theorem` | [isVonNBounded_of_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-smul-tendsto-zero--86f54813ebf2a5de3de7ba32.md) | 217 | `result-track:86f54813ebf2a5de3de7ba32a12769b790961cc4fd72022340e51700f307f531` |
| 24 | `theorem` | [isVonNBounded_iff_smul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff-smul-tendsto-zero--790d628033583c5e79aa6a3a.md) | 241 | `result-track:790d628033583c5e79aa6a3adc00ea1aefa1a7095c175ff5268ba2d8a26889e6` |
| 25 | `theorem` | [IsVonNBounded.extend_scalars](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-extend-scalars--35be42b37dd88a3de0596e27.md) | 252 | `result-track:35be42b37dd88a3de0596e270d73b617307f832f1ab03e79301e5486b595fd31` |
| 26 | `theorem` | [isVonNBounded_singleton](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-singleton--701c7d6e7f6a7ccb21ff093d.md) | 269 | `result-track:701c7d6e7f6a7ccb21ff093d16705a509ec1f5069e82c42f8dbac69363aa3d7b` |
| 27 | `theorem` | [isVonNBounded_insert](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-insert--40b88b72a55c6e8e8c9420ab.md) | 273 | `result-track:40b88b72a55c6e8e8c9420ab076ca77ef4b1cfbfaf77d470df1aeb634f4d3f36` |
| 28 | `theorem` | [IsVonNBounded.vadd](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-vadd--a4a200e3866981302ba2534f.md) | 283 | `result-track:a4a200e3866981302ba2534f3e528941d694adb956e8cbbac0168a6410ed7410` |
| 29 | `theorem` | [isVonNBounded_vadd](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-vadd--65f8222cee43416b2bae3604.md) | 290 | `result-track:65f8222cee43416b2bae360471a27d7c2764be68794939df9ab9bd905fef3107` |
| 30 | `theorem` | [IsVonNBounded.of_add_right](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-add-right--e2e6eeee353bf658566a3836.md) | 293 | `result-track:e2e6eeee353bf658566a383694b09203cde6faa8f6a5e4dfb5b8c8be29f2da17` |
| 31 | `theorem` | [IsVonNBounded.of_add_left](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-add-left--d0fc3587db74ed3b168f11cb.md) | 298 | `result-track:d0fc3587db74ed3b168f11cbd28ab459b83c78d56bd836cfc8471759f22e443f` |
| 32 | `theorem` | [isVonNBounded_add_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-add-of-nonempty--847d8bf8db5374e7fdd57581.md) | 302 | `result-track:847d8bf8db5374e7fdd575812ba01a34ff11251ead4415cde090b113b19465ec` |
| 33 | `theorem` | [isVonNBounded_add](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-add--75e959fd8e7788bb594e7c04.md) | 306 | `result-track:75e959fd8e7788bb594e7c047c3ad771e4cad1cc2f96a88caa92ec7f9de9c3db` |
| 34 | `theorem` | [isVonNBounded_add_self](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-add-self--40efdcbb29646a5393601418.md) | 313 | `result-track:40efdcbb29646a5393601418118895e312c0f438c2d626f724508d01d9cf4cbc` |
| 35 | `theorem` | [IsVonNBounded.of_sub_left](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-sub-left--dcd51de0eb45ea4b0f081cdd.md) | 316 | `result-track:dcd51de0eb45ea4b0f081cdd2f02c054e8e75a24adf71916a2b26e76295cd0f1` |
| 36 | `theorem` | [IsVonNBounded.of_sub_right](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-sub-right--2b7947b2601122e660b7cbc5.md) | 326 | `result-track:2b7947b2601122e660b7cbc5b6d416679eaa96da13c2b4706fc8e3ab52aa0a78` |
| 37 | `theorem` | [isVonNBounded_sub_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-sub-of-nonempty--620f20d2cd9dfa02907001c3.md) | 330 | `result-track:620f20d2cd9dfa02907001c394317cb0ba96223c1031ff712ba96aa703052b3c` |
| 38 | `theorem` | [isVonNBounded_sub](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-sub--101a1283f21c13c22ab9b5d0.md) | 334 | `result-track:101a1283f21c13c22ab9b5d0be3e3ab830994143870b4194b47333af9fefc4bc` |
| 39 | `theorem` | [isVonNBounded_covers](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-covers--0c008205d9cece3c66a54c4a.md) | 341 | `result-track:0c008205d9cece3c66a54c4a28f3a99da4db967cd575f9481b52c4dc4480a711` |
| 40 | `abbrev` | [vonNBornology](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/vonnbornology--a118e1ca7e7f54c8666b6bce.md) | 352 | `declaration-track:a118e1ca7e7f54c8666b6bcefacd395e0d5b9ee46d9e79459245552ef16508cc` |
| 41 | `theorem` | [isBounded_iff_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isbounded-iff-isvonnbounded--f82841c0c21eb6f5150577d8.md) | 359 | `result-track:f82841c0c21eb6f5150577d805167668c8b2a9a6966d7ce36de8ed2c9ec8df52` |
| 42 | `theorem` | [TotallyBounded.isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/totallybounded-isvonnbounded--09c03ad7e4ef0e5f56b08cb4.md) | 372 | `result-track:09c03ad7e4ef0e5f56b08cb4954f1d89f9574218804e405399f642c56d4b376e` |
| 43 | `theorem` | [Filter.Tendsto.isVonNBounded_range](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/filter-tendsto-isvonnbounded-range--15c12af94c5e3ba123f0295d.md) | 398 | `result-track:15c12af94c5e3ba123f0295d1fce83a4931648ccae77d1427e9719e043c058fc` |
| 44 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/bornology-isvonnbounded-restrict-scalars-of-nontrivial--c0a2c50b8dcd30c5bd8482c1.md) | 406 | `result-track:c0a2c50b8dcd30c5bd8482c1c7fe74d391ecfd17a7542c984f513edd534b0183` |
| 45 | `theorem` | [Bornology.IsVonNBounded.restrict_scalars](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/bornology-isvonnbounded-restrict-scalars--0485e1c10063e26c0588747e.md) | 418 | `result-track:0485e1c10063e26c0588747eaa7f05b0efee634b972ce6cacea691d504e79f79` |
| 46 | `theorem` | [isVonNBounded_of_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-of-isbounded--c1319976bf9dfad2900b63b4.md) | 439 | `result-track:c1319976bf9dfad2900b63b4ad415c52709ddf4aae7afac332973aa6d406344d` |
| 47 | `theorem` | [isVonNBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-ball--a697f71a6b2fd8403bb18186.md) | 448 | `result-track:a697f71a6b2fd8403bb181864885cb61c0036e9ecf259572c57d6328e483198f` |
| 48 | `theorem` | [isVonNBounded_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-closedball--1dbf3d02af5f66fb408d545c.md) | 451 | `result-track:1dbf3d02af5f66fb408d545c62f59567c04204a28d363a34551b05d84c79d009` |
| 49 | `theorem` | [isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff--a56cb9839dadca449bf3ca2d.md) | 460 | `result-track:a56cb9839dadca449bf3ca2d7c45d920579c57f445842e31f405aab6c800cb03` |
| 50 | `theorem` | [isVonNBounded_iff'](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isvonnbounded-iff--80daeb583989c26a35c64993.md) | 469 | `result-track:80daeb583989c26a35c6499302fe4b57bd6d2eb1ce24087985d4038d4ae035bf` |
| 51 | `theorem` | [image_isVonNBounded_iff](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/image-isvonnbounded-iff--7a53175e4f73d574f00647a5.md) | 473 | `result-track:7a53175e4f73d574f00647a5f74b568915d9d1fdd3a949b5ce3ac546187de053` |
| 52 | `theorem` | [vonNBornology_eq](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/vonnbornology-eq--eba7f93ba6f6b3bafc31f50f.md) | 479 | `result-track:eba7f93ba6f6b3bafc31f50f80fa4d03d51ecd36e44bab823faa6b63424d3a89` |
| 53 | `theorem` | [isBounded_iff_subset_smul_ball](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isbounded-iff-subset-smul-ball--107866a9e9ead47b84f741aa.md) | 485 | `result-track:107866a9e9ead47b84f741aaf25cc9531523f3632049f4e7eed6f56e0c755726` |
| 54 | `theorem` | [isBounded_iff_subset_smul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Bounded/Variant6c046b24223936b2c13e4ebe61f09dfd4c460563365e1c76f8d8fb68fb312911.lean/declarations/isbounded-iff-subset-smul-closedball--8afc1559957ab2f2560cb888.md) | 496 | `result-track:8afc1559957ab2f2560cb88878b52943775d40140fc8170b058a41d77177a2dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
