# Verification target: GRWTSK.Topology.GeneralTopology.Intrinsic.Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c2e8732d6db4461d667d61ee457dd5d45601116",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c2e8732d6db4461d667d61ee457dd5d45601116`.

Source path: `GRWTSK/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.AddTorsorBases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior--6015bd8f8f52c821475752af.md) | 65 | `declaration-track:6015bd8f8f52c821475752af6d7a5f6c73f382f0d0da56ba398eb94957883929` |
| 2 | `def` | [intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier--61bd861d9459374eac99d309.md) | 69 | `declaration-track:61bd861d9459374eac99d30900084a17942188a0fab8df3d1f9b3372a8216100` |
| 3 | `def` | [intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure--8259834ba832a4e55f4a812b.md) | 73 | `declaration-track:8259834ba832a4e55f4a812b52b6aadff1b535a71419618de7b3ee78cd59c640` |
| 4 | `theorem` | [mem_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/mem-intrinsicinterior--2e7cd0e21548018bf862c11c.md) | 79 | `result-track:2e7cd0e21548018bf862c11ca719265480b823ab6b71326663be305bb45bb77e` |
| 5 | `theorem` | [mem_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/mem-intrinsicfrontier--5f51fd440ed198825d357d1d.md) | 84 | `result-track:5f51fd440ed198825d357d1db87371d9ac86709b5161bf47effc6fbfb4bba7f0` |
| 6 | `theorem` | [mem_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/mem-intrinsicclosure--cac114f8f45b9bbf9f232d48.md) | 89 | `result-track:cac114f8f45b9bbf9f232d48938e47692f2016852ae41489b6bb28ead0d66bbe` |
| 7 | `theorem` | [intrinsicInterior_subset](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior-subset--fac008190c995aee794495ce.md) | 93 | `result-track:fac008190c995aee794495ce4eea3f3d83d104f28d40b53779507dcc0e3e867c` |
| 8 | `theorem` | [intrinsicFrontier_subset](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-subset--a3d3818c336d9124a2cabb50.md) | 96 | `result-track:a3d3818c336d9124a2cabb50acbf44f2a0a4515f3cc6122808dd57aa6b29a773` |
| 9 | `theorem` | [intrinsicFrontier_subset_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-subset-intrinsicclosure--ee1422d6aac0cc4287062219.md) | 99 | `result-track:ee1422d6aac0cc428706221919002fdcaba1499112d7fafe6af85e44b1f7dd3b` |
| 10 | `theorem` | [subset_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/subset-intrinsicclosure--3c31396f216708faf8ff7d5b.md) | 102 | `result-track:3c31396f216708faf8ff7d5bdfcf155be720fd0f7c495c4726e9ec9d4fa1afaa` |
| 11 | `theorem` | [intrinsicInterior_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior-empty--4cfcc907847bf189161eafd3.md) | 106 | `result-track:4cfcc907847bf189161eafd3965c8ae69182f29420915f71ca91e446be203151` |
| 12 | `theorem` | [intrinsicFrontier_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-empty--4684db178368d7fb69a65bc6.md) | 109 | `result-track:4684db178368d7fb69a65bc609cef6404d66b54709ca9d354f6574e6420c9eec` |
| 13 | `theorem` | [intrinsicClosure_empty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-empty--7c4af654ab37c80f8b83ef7a.md) | 112 | `result-track:7c4af654ab37c80f8b83ef7a2c35e2e0833de27f7994e4616978dfe75662e2ef` |
| 14 | `theorem` | [intrinsicClosure_nonempty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-nonempty--41e2c762ba64133db0912edc.md) | 115 | `result-track:41e2c762ba64133db0912edc41e79d04d0e53b79c30301e0f617f3c8f9bd5f2d` |
| 15 | `theorem` | [intrinsicInterior_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior-singleton--5809eca6fa77c0e5b17a4b34.md) | 122 | `result-track:5809eca6fa77c0e5b17a4b34b512cde518a978d76f45f785958475d60e02f12b` |
| 16 | `theorem` | [intrinsicFrontier_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-singleton--6a1ab2a2e1c34bb1f6cac96a.md) | 127 | `result-track:6a1ab2a2e1c34bb1f6cac96ae7d53ccc37bc53cc5b24000c15789b4e0a425c2f` |
| 17 | `theorem` | [intrinsicClosure_singleton](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-singleton--245e8da50aceafa328469026.md) | 131 | `result-track:245e8da50aceafa3284690261719f3013937e0be226f17b624ecd1660ed40901` |
| 18 | `theorem` | [intrinsicClosure_mono](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-mono--ada7f66480807e4a4c461656.md) | 140 | `result-track:ada7f66480807e4a4c461656c50444bf8e3fb46ef9e8b5a17ee2187a157bbbde` |
| 19 | `theorem` | [interior_subset_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/interior-subset-intrinsicinterior--0db448d6fd41ad4038411a10.md) | 146 | `result-track:0db448d6fd41ad4038411a10ddc32f334893d24fa47ebc215e7d0ac0e9ababb1` |
| 20 | `theorem` | [intrinsicClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-subset-closure--fe52b33aa8dd260096e0fe0e.md) | 150 | `result-track:fe52b33aa8dd260096e0fe0e97d3ccbd2fcbaac40eba84e53377a234c4b8b8cc` |
| 21 | `theorem` | [intrinsicFrontier_subset_frontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-subset-frontier--1bcd7c489dbd965aa41dc904.md) | 153 | `result-track:1bcd7c489dbd965aa41dc9048bd29b35d6488819fce6042d717b8eb2aa0a9bc1` |
| 22 | `theorem` | [intrinsicClosure_subset_affineSpan](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-subset-affinespan--25a557499db72bd01ba9f4c3.md) | 156 | `result-track:25a557499db72bd01ba9f4c37e893eed6c2db9bfa79924ed34ed214874a7cc0d` |
| 23 | `theorem` | [intrinsicClosure_diff_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-diff-intrinsicfrontier--f0d141cd1ed51525d2e781fd.md) | 160 | `result-track:f0d141cd1ed51525d2e781fd6e69e5ce77d9bae5fc112de63c030471db2a35b1` |
| 24 | `theorem` | [intrinsicClosure_diff_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-diff-intrinsicinterior--bdca191cbf4121844328e9fa.md) | 166 | `result-track:bdca191cbf4121844328e9fa20a362109d2f78d2534f1afd63d815f112ad5f8e` |
| 25 | `theorem` | [intrinsicInterior_union_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior-union-intrinsicfrontier--f49250d2bf4d7e055e6dfa68.md) | 171 | `result-track:f49250d2bf4d7e055e6dfa683e0677391c040092ba58f7aa1a78fb83e0bdfe98` |
| 26 | `theorem` | [intrinsicFrontier_union_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicfrontier-union-intrinsicinterior--af2423ca0dcc6401b040640b.md) | 177 | `result-track:af2423ca0dcc6401b040640bcbeb1b83b3db32ed25a1a27771664f9a711f87c1` |
| 27 | `theorem` | [isClosed_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/isclosed-intrinsicclosure--ac35b2622a5d0bc49512286a.md) | 181 | `result-track:ac35b2622a5d0bc49512286a2307922e89c80c262ee0650aa3aeb327968323a4` |
| 28 | `theorem` | [isClosed_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/isclosed-intrinsicfrontier--da7dc7fcb2cb0d2a3e16f24e.md) | 185 | `result-track:da7dc7fcb2cb0d2a3e16f24ebdfeb57c606ec6de089d7a2fa01dc911f7d82dde` |
| 29 | `theorem` | [affineSpan_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/affinespan-intrinsicclosure--7324f7256638c79dc659a41c.md) | 190 | `result-track:7324f7256638c79dc659a41cc5226ca5d4123628674ecebc9599030e0f0f2a56` |
| 30 | `theorem` | [IsClosed.intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/isclosed-intrinsicclosure--240cc3fa288268a5bcdc96de.md) | 195 | `result-track:240cc3fa288268a5bcdc96dedcad4901962357d3636eb99b09bd5954e9d1d213` |
| 31 | `theorem` | [intrinsicClosure_idem](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-idem--62ddd0aef04685d3c9ea0674.md) | 201 | `result-track:62ddd0aef04685d3c9ea067447ee3259622f1adaf38511afd8be51f438ff6e25` |
| 32 | `theorem` | [image_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/image-intrinsicinterior--68cb98a7e7e32dae4cfc53f2.md) | 222 | `result-track:68cb98a7e7e32dae4cfc53f2a267ee066cdf8af75b345bcf8202691df4e7d25f` |
| 33 | `theorem` | [image_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/image-intrinsicfrontier--bc9f8e98a78da87071694a6b.md) | 235 | `result-track:bc9f8e98a78da87071694a6be358cfd090bca0c31de7b6c0c2f66b2f19707918` |
| 34 | `theorem` | [image_intrinsicClosure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/image-intrinsicclosure--9248c4baddb163bd339fce1b.md) | 248 | `result-track:9248c4baddb163bd339fce1bb2bef023609bb83ba9b954fdecdd02baeccf44d5` |
| 35 | `theorem` | [intrinsicClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicclosure-eq-closure--23258ecbc50de2d8dbbbb480.md) | 268 | `result-track:23258ecbc50de2d8dbbbb48052facbb1df54ca1704afd49c8c7e3d1dbe36ce81` |
| 36 | `theorem` | [closure_diff_intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/closure-diff-intrinsicinterior--cecf2c2c1079ca95f345ac03.md) | 285 | `result-track:cecf2c2c1079ca95f345ac03ba9e92065cdad582153b51052291b95456287f71` |
| 37 | `theorem` | [closure_diff_intrinsicFrontier](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/closure-diff-intrinsicfrontier--c1bf1da79b2a218f8990c1e1.md) | 290 | `result-track:c1bf1da79b2a218f8990c1e1a58dd708b6c08355d5d9f826c537adc7d25d1c7e` |
| 38 | `theorem` | [aux](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/aux--9f3f992ea9cfffb706ae49d2.md) | 296 | `result-track:9f3f992ea9cfffb706ae49d20bcd508af97552b3e9f2958ddb437e3cc0cf6121` |
| 39 | `theorem` | [Set.Nonempty.intrinsicInterior](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/set-nonempty-intrinsicinterior--dab6095d7b6e14d2aa55a157.md) | 303 | `result-track:dab6095d7b6e14d2aa55a157644a75df6f10c62a56d7887c793ff0c332ddcbc2` |
| 40 | `theorem` | [intrinsicInterior_nonempty](../../../../../mathematics/Topology/GeneralTopology/Intrinsic/Variant9bbeacd62aa6a5585d0363b8cb7d41c948da525d9e53f4694e74af24da486707.lean/declarations/intrinsicinterior-nonempty--72387e6e334c50a656934217.md) | 316 | `result-track:72387e6e334c50a65693421745d2ccf4f31ea1a1e09224d37f00cc2889f53daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
