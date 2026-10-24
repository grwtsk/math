# Verification target: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0bbe5c9629861010ab1be2f9373532eb7dffbb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0bbe5c9629861010ab1be2f9373532eb7dffbb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projection` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/extend--54c0a4208ad228d40289550b.md) | 47 | `declaration-track:54c0a4208ad228d40289550b15a6dd5d5f0fc386ceb4fa1afb80ef31a36e4eba` |
| 2 | `theorem` | [extend_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/extend-apply-self--5308135a283dcb1d7d601750.md) | 53 | `result-track:5308135a283dcb1d7d601750ae0e25e2f99f427a8187f818dd4047dcd0304b4d` |
| 3 | `theorem` | [coe_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/coe-extend--7b4ce88bba8f767a461418d9.md) | 57 | `result-track:7b4ce88bba8f767a461418d93b72d269e8b7fe2e561f91f7d5ad21d8656363ce` |
| 4 | `theorem` | [range_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/range-extend--3f6d0b58a9fa6f54a4bafb04.md) | 60 | `result-track:3f6d0b58a9fa6f54a4bafb0465b1fa26e0bdd85cf981fc54423b20a37d103eea` |
| 5 | `def` | [sumExtendIndex](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/sumextendindex--76efc06d884ba0abe98520e2.md) | 67 | `declaration-track:76efc06d884ba0abe98520e2bbc9d9eb9ab105d030a431961b7f6a4036064ef3` |
| 6 | `def` | [sumExtend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/sumextend--280a86c3bef760687913e09d.md) | 71 | `declaration-track:280a86c3bef760687913e09d015d7303af581a7c3012324af5ecb164defcb41e` |
| 7 | `theorem` | [subset_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/subset-extend--ad7dd4638f53965479b44f00.md) | 83 | `result-track:ad7dd4638f53965479b44f00ced7dd4fe087903551d61fd2609011fdb26b5da1` |
| 8 | `def` | [extendLe](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/extendle--8dac9449536c64fd30fd40bc.md) | 88 | `declaration-track:8dac9449536c64fd30fd40bca3b409570342d843ca23ccb127ab5387041ac2ce` |
| 9 | `theorem` | [extendLe_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/extendle-apply-self--9a7ddd7aae5b99548dca05d2.md) | 94 | `result-track:9a7ddd7aae5b99548dca05d20b60dbb2ae1485fc22e4a656bccb51c61282979a` |
| 10 | `theorem` | [coe_extendLe](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/coe-extendle--c2d3fe5b4227d4daba1b6683.md) | 99 | `result-track:c2d3fe5b4227d4daba1b6683a57357d890625413500f50ab3d674c1376d81d43` |
| 11 | `theorem` | [range_extendLe](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/range-extendle--106de636ebcba7ec66e458c9.md) | 103 | `result-track:106de636ebcba7ec66e458c933512724d21a24e304663fdd9b13c6b463af18a4` |
| 12 | `theorem` | [subset_extendLe](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/subset-extendle--eeac38cf6b12f54fd20568fb.md) | 107 | `result-track:eeac38cf6b12f54fd20568fb908f25c21d2ba423f22fffaa0a128df14195b71e` |
| 13 | `theorem` | [extendLe_subset](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/extendle-subset--c448b0f3c6debe28ac1a60c9.md) | 111 | `result-track:c448b0f3c6debe28ac1a60c9d09e007489ac4b3125a04c403e6d8dbdd886b5d8` |
| 14 | `def` | [ofSpan](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofspan--9492a13297c605ddeb269a7b.md) | 116 | `declaration-track:9492a13297c605ddeb269a7b7aff4762a92d90a3be463ea744605d862e95847b` |
| 15 | `theorem` | [ofSpan_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofspan-apply-self--1088b8a1cbfdd8899ff0383b.md) | 120 | `result-track:1088b8a1cbfdd8899ff0383b70410a973c1efce8f8dc61392687e013b9de2390` |
| 16 | `theorem` | [coe_ofSpan](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/coe-ofspan--de374c84268e4d1265f0d16f.md) | 126 | `result-track:de374c84268e4d1265f0d16ff724460b567841fd87792089aa0c900344ca93a3` |
| 17 | `theorem` | [range_ofSpan](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/range-ofspan--04501f87192912bb55467111.md) | 129 | `result-track:04501f87192912bb55467111ec9c3254241d6cd4b54614e52993c817587eacc1` |
| 18 | `theorem` | [ofSpan_subset](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofspan-subset--49b133f33c3285e2c4de8378.md) | 133 | `result-track:49b133f33c3285e2c4de8378a20a72cbbf7d19607440a0da7763a2387a93aa8b` |
| 19 | `def` | [ofVectorSpaceIndex](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofvectorspaceindex--5aabb8f7b66b8e91aaaf6fc8.md) | 141 | `declaration-track:5aabb8f7b66b8e91aaaf6fc8f64b315e2d2cb0c05257d9df3c3f90d937278473` |
| 20 | `def` | [ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofvectorspace--6f470596aae9cd63ed435656.md) | 145 | `declaration-track:6f470596aae9cd63ed435656c1f558c037dfa93ebd76095e0ced0d51e0077d79` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/instance--90bb0ff93af466825373afd5.md) | 149 | `declaration-track:90bb0ff93af466825373afd555a3a271cd412daa92b483ed7e877ea48f2f496d` |
| 22 | `theorem` | [ofVectorSpace_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofvectorspace-apply-self--1406c7462168e13d7e82954e.md) | 152 | `result-track:1406c7462168e13d7e82954e9d98f6213fb641c998b3ce3514aaeccdd43db620` |
| 23 | `theorem` | [coe_ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/coe-ofvectorspace--8ac6d8bf52fbb5590e6f954a.md) | 157 | `result-track:8ac6d8bf52fbb5590e6f954aa8c40eb773d4e72de114f8ddbcdf40372355b4fc` |
| 24 | `theorem` | [ofVectorSpaceIndex.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/ofvectorspaceindex-linearindependent--734573c5fb524a4799e207c6.md) | 160 | `result-track:734573c5fb524a4799e207c656683005ac37c9cbdbc8d6b8de3136923b297476` |
| 25 | `theorem` | [range_ofVectorSpace](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/range-ofvectorspace--59038a912383043540f4142e.md) | 166 | `result-track:59038a912383043540f4142ec2a6f31e0090e305e9f16235af3b6ed5f8ae21a8` |
| 26 | `theorem` | [exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/exists-basis--4faf75174c1059f38e19042d.md) | 169 | `result-track:4faf75174c1059f38e19042d9d110cdb89f8b1a6c9d724e8be066591fba8697b` |
| 27 | `theorem` | [VectorSpace.card_fintype](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/vectorspace-card-fintype--465ba0b86ec57605e7deaafc.md) | 182 | `result-track:465ba0b86ec57605e7deaafc65e82fd22744563923ab1ec42fddd2f5c786bfb6` |
| 28 | `theorem` | [nonzero_span_atom](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/nonzero-span-atom--5f5efafd8d1649e98fcc17c2.md) | 192 | `result-track:5f5efafd8d1649e98fcc17c27897d1d39ad00f2bf3baab6cc44a4694b6711d27` |
| 29 | `theorem` | [atom_iff_nonzero_span](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/atom-iff-nonzero-span--0a82d5a49168837ad8cc8be1.md) | 209 | `result-track:0a82d5a49168837ad8cc8be16fb0363c2d48228fc32cce872fbbaf124612b393` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/instance--12cf753125dd16454eb68aee.md) | 223 | `declaration-track:12cf753125dd16454eb68aeef96877694772c803cf9e761228d517add4e67c64` |
| 31 | `theorem` | [LinearMap.exists_leftInverse_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/linearmap-exists-leftinverse-of-injective--636ac7bea5e165f1a377a9d5.md) | 233 | `result-track:636ac7bea5e165f1a377a9d5cd655b34e893e8eccb386d1758d53fbae32cd330` |
| 32 | `theorem` | [Submodule.exists_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/submodule-exists-iscompl--961cfed825f76dc2ea5f2853.md) | 255 | `result-track:961cfed825f76dc2ea5f2853f48880c5b5ac46071460dd10475cf016a1c82e05` |
| 33 | `instance` | [Submodule.complementedLattice](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/submodule-complementedlattice--962d2785dc48fac512e2d1af.md) | 259 | `declaration-track:962d2785dc48fac512e2d1af303ba5afd95429ac060f7db5fddf56ac6d76166e` |
| 34 | `theorem` | [LinearMap.exists_extend](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/linearmap-exists-extend--ef731cc46d557d971dbfad70.md) | 264 | `result-track:ef731cc46d557d971dbfad7009e0d2cf4937b5f259454a99735aca98db01d3e3` |
| 35 | `theorem` | [LinearMap.exists_extend_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/linearmap-exists-extend-of-notmem--2da9c56f6e2ac86698fa5d68.md) | 269 | `result-track:2da9c56f6e2ac86698fa5d68cf25bf040d0555666dce00a06287e316e15bb87d` |
| 36 | `theorem` | [Submodule.exists_le_ker_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/submodule-exists-le-ker-of-notmem--91ee9fd01458e38d1a34224f.md) | 284 | `result-track:91ee9fd01458e38d1a34224f96c6df61a5ad0a4185585bd6bc587f0229680639` |
| 37 | `theorem` | [Submodule.exists_le_ker_of_lt_top](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/submodule-exists-le-ker-of-lt-top--f0d3b55e4fbf78cb9d36c8cc.md) | 295 | `result-track:f0d3b55e4fbf78cb9d36c8cc3dad01e9f2b0e52ce3bee92761b96c5b38686e29` |
| 38 | `theorem` | [quotient_prod_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Variant352348a1f558688c5a4c74af095373384ad426f3f02530e99854cfca810c4995.lean/declarations/quotient-prod-linearequiv--82a2186db6b5d59422d1237a.md) | 301 | `result-track:82a2186db6b5d59422d1237a758bac8d3e174b51da51580c01b4cc165d10133e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
