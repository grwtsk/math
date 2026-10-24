# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8dde70abd1967882e83eab3cbc4314c21efbace",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8dde70abd1967882e83eab3cbc4314c21efbace`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.SMul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/affinebasis--208d899910ee4dac0c53370a.md) | 48 | `declaration-track:208d899910ee4dac0c53370ac373c867753e677a38ac3c04066703dad66f5275` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instance--ac7f17198f603cfa5987ada0.md) | 63 | `declaration-track:ac7f17198f603cfa5987ada0efb77382e8c388325b56a66674038d8d2b1c398c` |
| 3 | `instance` | [instFunLike](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instfunlike--adbb1ada739b5518e2afe2e0.md) | 66 | `declaration-track:adbb1ada739b5518e2afe2e0203d2454d28d7f5c93df9d73c22faa19f69ff2d8` |
| 4 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/ext--f2517abb55444a5d8e3a0c9e.md) | 71 | `result-track:f2517abb55444a5d8e3a0c9e2ef21d79a719cbcd9607c357b9a9ebe47ff289d5` |
| 5 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/ind--c6dd7f60dce59f3da706b855.md) | 74 | `result-track:c6dd7f60dce59f3da706b85578350977a9634058b2159db9a7b51087f1f813b3` |
| 6 | `theorem` | [tot](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/tot--edba67034223522a373e66bc.md) | 77 | `result-track:edba67034223522a373e66bc0525f9e5a66424059fb1680f8d6ccea5ca7a59ae` |
| 7 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/nonempty--30eca0c1743d24d9e90988c7.md) | 81 | `result-track:30eca0c1743d24d9e90988c766f3c2abe0b7155fc2057d6036bbb319c10b2ff0` |
| 8 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/reindex--e951dedce9940f72201ad18a.md) | 86 | `declaration-track:e951dedce9940f72201ad18a1100e9d400805fcf76c12a0d6fbf96a896e3c965` |
| 9 | `theorem` | [coe_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coe-reindex--357b37e53f4c1ad7fca4c938.md) | 92 | `result-track:357b37e53f4c1ad7fca4c938b8634287e8d1b98c1ad2b1df5d605ed7fcf15db8` |
| 10 | `theorem` | [reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/reindex-apply--15203d92cf6a384fdce3a125.md) | 96 | `result-track:15203d92cf6a384fdce3a125727ca5cf0729de6ff4f505a560cb6d8821fd2ea0` |
| 11 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/reindex-refl--35f3eaf624e4a52db7a21ed6.md) | 100 | `result-track:35f3eaf624e4a52db7a21ed63bca05c14d2ab8ad5ef4bfa676ecb9c4a0e182f1` |
| 12 | `def` | [basisOf](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/basisof--d0500cb2edc7767fd2b4723e.md) | 108 | `declaration-track:d0500cb2edc7767fd2b4723e1732e50c789fd8e2342563b6c833f9689e63b19c` |
| 13 | `theorem` | [basisOf_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/basisof-apply--8a27d14bda2702aec61a35b9.md) | 121 | `result-track:8a27d14bda2702aec61a35b99cbf6e2093d4ad2120e3fdcf2ba3069e6e925023` |
| 14 | `theorem` | [basisOf_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/basisof-reindex--d23584bbc68728c02560298d.md) | 125 | `result-track:d23584bbc68728c02560298db3bcf89ec9506508618b24424c8e10d7b5fdd902` |
| 15 | `def` | [coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord--d1d4dd97e3ef535276792954.md) | 132 | `declaration-track:d1d4dd97e3ef535276792954fe3d7f93fdb9e53da6b366b6d8aced0b4b67902f` |
| 16 | `theorem` | [linear_eq_sumCoords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/linear-eq-sumcoords--a8ccb87945d84a39b8646503.md) | 140 | `result-track:a8ccb87945d84a39b864650379328ab2963facc3bd665e5fa1f15d0d4ef1986e` |
| 17 | `theorem` | [coord_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-reindex--5b95806069ceceee636a0431.md) | 144 | `result-track:5b95806069ceceee636a0431c08c64d16eebdf1c3db524ba6331d26f7797b255` |
| 18 | `theorem` | [coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply-eq--a94da8b3e1624e3f7adbe150.md) | 149 | `result-track:a94da8b3e1624e3f7adbe150d3a105a985631800524e681a78659255802b7eb9` |
| 19 | `theorem` | [coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply-ne--d208cb8155aa4abe14207173.md) | 154 | `result-track:d208cb8155aa4abe142071734ce1c1fb814e865a5b70e5824c67339c9414da91` |
| 20 | `theorem` | [coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply--0d282bd3beb2fbe5e3767591.md) | 158 | `result-track:0d282bd3beb2fbe5e3767591eda550329f68d10381fcffa7464d3cd38b1e82cf` |
| 21 | `theorem` | [coord_apply_combination_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply-combination-of-mem--ab8d8dc461b59af12dbda9c3.md) | 162 | `result-track:ab8d8dc461b59af12dbda9c3dbeae96f2f0febb829dcbcbfbfe80de62f1a312a` |
| 22 | `theorem` | [coord_apply_combination_of_notMem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply-combination-of-notmem--7efac7a4c646880c226ab38b.md) | 169 | `result-track:7efac7a4c646880c226ab38be6ce71e2848ebdb2d0252a00e979e23fc9383e1e` |
| 23 | `theorem` | [sum_coord_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/sum-coord-apply-eq-one--517084424f34b17e5ab4295b.md) | 179 | `result-track:517084424f34b17e5ab4295bb97fa275ad3d8e0301a5726f636974029f07929d` |
| 24 | `theorem` | [affineCombination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/affinecombination-coord-eq-self--44d504f3ef11fd32cb2ff2f5.md) | 188 | `result-track:44d504f3ef11fd32cb2ff2f5c4160d2afb21fb99177c2092daedf2e83291b887` |
| 25 | `theorem` | [linear_combination_coord_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/linear-combination-coord-eq-self--52592aa221b69135f5ebd0ba.md) | 201 | `result-track:52592aa221b69135f5ebd0ba6f8eaa01fd2334481f1d409b05ed3959414eb5aa` |
| 26 | `theorem` | [ext_elem](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/ext-elem--b58a62fd6f0ac7eded13ee41.md) | 206 | `result-track:b58a62fd6f0ac7eded13ee4102cc50506cac8c5f70e79ad093c7d06b544131f7` |
| 27 | `theorem` | [coe_coord_of_subsingleton_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coe-coord-of-subsingleton-eq-one--e01a238e3b0343a6ecbee5e7.md) | 212 | `result-track:e01a238e3b0343a6ecbee5e775f01dcd32d243f441ae3ff217998e9244d857ed` |
| 28 | `theorem` | [surjective_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/surjective-coord--fd366d73d50e99119a1c48e4.md) | 226 | `result-track:fd366d73d50e99119a1c48e4dd3576107bc4a9b9c1fb87c32d400f3e4b09c950` |
| 29 | `def` | [coords](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coords--03a2e572a8d7d8e60cfcbbe9.md) | 239 | `declaration-track:03a2e572a8d7d8e60cfcbbe923e1c27c170e603d9e7a7a0833276349bef04ce6` |
| 30 | `theorem` | [coords_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coords-apply--03cf74c95d1362898aec09ed.md) | 248 | `result-track:03cf74c95d1362898aec09ed3dd1a2d8e5870f64f511112aeaec9b8753a22c8d` |
| 31 | `instance` | [instVAdd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instvadd--f3f3058089aa7525e65a9f7a.md) | 251 | `declaration-track:f3f3058089aa7525e65a9f7aa0f078637c6146c495745230cf2a48dffab3fe4d` |
| 32 | `lemma` | [coe_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coe-vadd--8b64a3ec4619dbc5022e3ca8.md) | 258 | `result-track:8b64a3ec4619dbc5022e3ca8cbe0ad0875cbfea606e40551683f15f61762a41b` |
| 33 | `lemma` | [basisOf_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/basisof-vadd--d516987d5a859501f97ae89f.md) | 260 | `result-track:d516987d5a859501f97ae89f36c6897fd9f3816a3ea76c75f95053d80a513a52` |
| 34 | `instance` | [instAddAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instaddaction--16930b21f06d1d0f8db7c1d1.md) | 264 | `declaration-track:16930b21f06d1d0f8db7c1d1b3a9a7702d3dbe3fca33a60476ebe8316fafeccc` |
| 35 | `lemma` | [coord_vadd](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-vadd--332e04434656c35e0f42f097.md) | 267 | `result-track:332e04434656c35e0f42f0974ef7e1228291a35e4c209c15f8a28c0007aaea28` |
| 36 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instsmul--211a19a6d91e71b7fe770657.md) | 285 | `declaration-track:211a19a6d91e71b7fe770657b0ae99696d99924ebf36f025b61d5de926f3c4e9` |
| 37 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coe-smul--169759c10b25fb26407e5371.md) | 293 | `result-track:169759c10b25fb26407e53712c669849e73790c95efc81ba06de6d59785d71d8` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instance--69d0c74cd5bb3944a6429fa1.md) | 297 | `declaration-track:69d0c74cd5bb3944a6429fa1e96364cd1f42ea01f7c09ca35e53c95a23a7c6a3` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instance--01cf920ff6933b8d1a301ca4.md) | 302 | `declaration-track:01cf920ff6933b8d1a301ca4cbdfdc80c2a7d94d08814b2b758b2d8d6364215d` |
| 40 | `lemma` | [basisOf_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/basisof-smul--9bf5c2e371fdfbcb5010f770.md) | 305 | `result-track:9bf5c2e371fdfbcb5010f770321ba81765f1342f512f7b26c38f6947028226ac` |
| 41 | `lemma` | [reindex_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/reindex-smul--c272986ccfbfbdf7f7b8516c.md) | 308 | `result-track:c272986ccfbfbdf7f7b8516c0cd347350ae8a2f8278319611656f1f0b0428545` |
| 42 | `lemma` | [coord_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-smul--b5d1b3a41c71bf5dee0c885b.md) | 312 | `result-track:b5d1b3a41c71bf5dee0c885bfd1b024e0a0bbe6a3a659a78e4abb7a5cd6739a8` |
| 43 | `instance` | [instMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/instmulaction--fe1d58cb3fa2b78b796cf5ba.md) | 318 | `declaration-track:fe1d58cb3fa2b78b796cf5baf7dd247af30a3bac2546436675e0deedaf005d08` |
| 44 | `theorem` | [coord_apply_centroid](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/coord-apply-centroid--8a3718c57b140ffc7be8b9bd.md) | 329 | `result-track:8a3718c57b140ffc7be8b9bd43aebf20baa82e148581397aa95ed33137dbf793` |
| 45 | `theorem` | [exists_affine_subbasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/exists-affine-subbasis--f13a855b1422898644db0616.md) | 335 | `result-track:f13a855b1422898644db06167895f9138d0ac2aa1171066e6c85594487ef0154` |
| 46 | `theorem` | [exists_affineBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/declarations/exists-affinebasis--f025de49849d834fb4ab4848.md) | 343 | `result-track:f025de49849d834fb4ab4848f84255bc522d718acd411bea1a6e7960ee13b7b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
