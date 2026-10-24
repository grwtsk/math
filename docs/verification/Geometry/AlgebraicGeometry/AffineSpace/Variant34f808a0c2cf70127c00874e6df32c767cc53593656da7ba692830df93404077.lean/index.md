# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineSpace.Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1b022efd62bd4272fcdae489380da7dd764a8f6",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1b022efd62bd4272fcdae489380da7dd764a8f6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean.json)

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
| 1 | `def` | [AffineSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/affinespace--e56b5c5f7def9bd329aa2510.md) | 53 | `declaration-track:e56b5c5f7def9bd329aa25108c40b650da6e6a75c376c709d227244e97b0cdee` |
| 2 | `lemma` | [of_mvPolynomial_int_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/of-mvpolynomial-int-ext--b3ef7fe3a7161bcceec1f74a.md) | 62 | `result-track:b3ef7fe3a7161bcceec1f74a47f8662850867d203a622f17bf683ccd9403d9f4` |
| 3 | `instance` | [over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/over--7f1a544b8847096bdef1db23.md) | 75 | `declaration-track:7f1a544b8847096bdef1db233e3862e1424e2ad89f7b9661f0b793ae8ff5660a` |
| 4 | `def` | [toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/tospecmvpoly--70e99e50b0909542c55bddc6.md) | 79 | `declaration-track:70e99e50b0909542c55bddc654b7ab21e4b4a9c5d1a86878f13dd89c6584ec9b` |
| 5 | `def` | [toSpecMvPolyIntEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/tospecmvpolyintequiv--bea4af426c228c39aa3cd16e.md) | 87 | `declaration-track:bea4af426c228c39aa3cd16e1fad6301443ba5633edb2a875c3b22901125409b` |
| 6 | `lemma` | [toSpecMvPolyIntEquiv_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/tospecmvpolyintequiv-comp--e996d800453d7578af6cdc41.md) | 103 | `result-track:e996d800453d7578af6cdc41e0cb13f4bf49449f50ecb2355dba57867eec9c8a` |
| 7 | `def` | [coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/coord--8afb20ef4f8b78778e153964.md) | 108 | `declaration-track:8afb20ef4f8b78778e153964e9897f911ca624713beec903ca63f19e134f58bb` |
| 8 | `def` | [homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/homofvector--1d54b6722a83eaf6fd822537.md) | 115 | `declaration-track:1d54b6722a83eaf6fd822537986ee368dd42a5be23744f20e762c5b9af9bd0ce` |
| 9 | `lemma` | [homOfVector_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/homofvector-over--05e703130cfc0b99c32a9e62.md) | 121 | `result-track:05e703130cfc0b99c32a9e6221f0e4c48f48a52103d2713ab21da2bc4e1dfadd` |
| 10 | `lemma` | [homOfVector_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/homofvector-tospecmvpoly--12b4b0e42683e0220b2bd996.md) | 125 | `result-track:12b4b0e42683e0220b2bd9967df62280c1d63bab5dac5854b03709f3407f12c7` |
| 11 | `lemma` | [homOfVector_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/homofvector-apptop-coord--9dfa2fc509424c1ad77f3c53.md) | 130 | `result-track:9dfa2fc509424c1ad77f3c53b9baf542d3de4d89543d20b6416f1780ae095a43` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/hom-ext--6bd936fc2da5bc7f4cafa4bd.md) | 136 | `result-track:6bd936fc2da5bc7f4cafa4bdb4cb4d56374684efb42f9e83bdf93b1ff4663c3f` |
| 13 | `lemma` | [comp_homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/comp-homofvector--0ce8500aa74c432d5376e98c.md) | 148 | `result-track:0ce8500aa74c432d5376e98c60f1084492c1e09be9a5ee97988395d981c9ef5f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--53719d048f022b8e1d7f2a2d.md) | 156 | `declaration-track:53719d048f022b8e1d7f2a2d33ddb1d3dc4d9f3be4d76c40ef86df25a10534b4` |
| 15 | `def` | [homOverEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/homoverequiv--1bdb2e53c05272a6cad473d3.md) | 161 | `declaration-track:1bdb2e53c05272a6cad473d3e3756f69c63ab705541ae95690633d3843c7fc80` |
| 16 | `def` | [isoOfIsAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isoofisaffine--df918e9524cac7726746ad19.md) | 178 | `declaration-track:df918e9524cac7726746ad19118b425d6f00069d065f99de2f5793b23ad1f577` |
| 17 | `lemma` | [isoOfIsAffine_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isoofisaffine-hom-apptop--e452595fa279c650946f462b.md) | 214 | `result-track:e452595fa279c650946f462b6abc7c2d7d2be19b5b0ea2a6a7a9ff9a62ce5861` |
| 18 | `lemma` | [isoOfIsAffine_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isoofisaffine-inv-apptop-coord--7d889abb5be8ff4881ceff99.md) | 221 | `result-track:7d889abb5be8ff4881ceff9967ceffd45a090c6d0e3bea504daff103c134a142` |
| 19 | `lemma` | [isoOfIsAffine_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isoofisaffine-inv-over--e512be9e9b6310517c076e88.md) | 226 | `result-track:e512be9e9b6310517c076e8893129a8ca68270cec46c8f975c73dadae63be572` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--d5e40e6fd5b90cfd065603cc.md) | 230 | `declaration-track:d5e40e6fd5b90cfd065603cc584e8a79135abc4e0bf94639b566c398ca679fa3` |
| 21 | `def` | [SpecIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/speciso--838ab5cff6ab4e76ba2fa621.md) | 234 | `declaration-track:838ab5cff6ab4e76ba2fa621720a294870cc4300152ae198cbf3c020346448ed` |
| 22 | `lemma` | [SpecIso_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/speciso-hom-apptop--53dc6874525e76848e586aa5.md) | 240 | `result-track:53dc6874525e76848e586aa538ec119689d3f22dce80bc2f6917d2fc3d7ff516` |
| 23 | `lemma` | [SpecIso_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/speciso-inv-apptop-coord--5af0216f6d2af6b74aae3e4e.md) | 249 | `result-track:5af0216f6d2af6b74aae3e4e5bce84e76ef8ca98983a8abe2140fcb99bd37ee6` |
| 24 | `lemma` | [SpecIso_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/speciso-inv-over--e0eb6399c990ec86de10245c.md) | 259 | `result-track:e0eb6399c990ec86de10245c293dd19b8e7ded649573798f1a02a937c67dc978` |
| 25 | `def` | [map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map--99036f7248f558f3dfd34946.md) | 273 | `declaration-track:99036f7248f558f3dfd34946f96cb0225a5576cc61a51eccaad336137236ece9` |
| 26 | `lemma` | [map_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-over--13045c84565fd1102f48d24d.md) | 277 | `result-track:13045c84565fd1102f48d24d4169c24300f461fe5a9cb47f8b87e8a8119a533f` |
| 27 | `lemma` | [map_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-apptop-coord--96e3844d2497baa2795a06d5.md) | 281 | `result-track:96e3844d2497baa2795a06d5dbb54fd9f8067dfb9c9db7049eb9c58f5c493803` |
| 28 | `lemma` | [map_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-tospecmvpoly--56330a397986c6ddd188b161.md) | 286 | `result-track:56330a397986c6ddd188b161e58eb5023c20be82ba212a0bf903162cfaf109e5` |
| 29 | `lemma` | [map_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-id--241540855edb549df4ea1299.md) | 293 | `result-track:241540855edb549df4ea1299c8cd8d357f52d6354cbbb1eefc5c9fe2ec9c7c10` |
| 30 | `lemma` | [map_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-comp--c7f2301dbd0f4b7d14d2c604.md) | 298 | `result-track:c7f2301dbd0f4b7d14d2c60433b28c846518df655de8b3c9a1aa43ded52c5c9a` |
| 31 | `lemma` | [map_SpecMap](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-specmap--8935af0bc09936bf854ae87f.md) | 305 | `result-track:8935af0bc09936bf854ae87fb0f1356807b21e0bf9d0ed2c8ac0757ee0d7dd90` |
| 32 | `def` | [mapSpecMap](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/mapspecmap--dd2a5861ef3c2cb76fc59fbf.md) | 323 | `declaration-track:dd2a5861ef3c2cb76fc59fbf0875d3371fbce79f01fc05fe884e1af4b88aba10` |
| 33 | `lemma` | [isPullback_map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/ispullback-map--f539dd8b3b78590af9e86cb1.md) | 329 | `result-track:f539dd8b3b78590af9e86cb1043a5719cc3c6f02b780244c89edbfcbf3ce0139` |
| 34 | `def` | [reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/reindex--0c697cff0db72d77027fe904.md) | 337 | `declaration-track:0c697cff0db72d77027fe9045751407bf0b820d5acdae7c186c6269bf3d66223` |
| 35 | `lemma` | [reindex_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/reindex-over--5ae85cd880821c8bf5f27bea.md) | 341 | `result-track:5ae85cd880821c8bf5f27bea0fd7ee7e268628f5bd322a81d0c6757744811373` |
| 36 | `lemma` | [reindex_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/reindex-apptop-coord--7c35e3bfd4f9614d8cc8e99a.md) | 346 | `result-track:7c35e3bfd4f9614d8cc8e99af1b49438cefb23ccff9f44b79ebca6b0a6e27256` |
| 37 | `lemma` | [reindex_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/reindex-id--cd10635581dc5bb4d57844a2.md) | 351 | `result-track:cd10635581dc5bb4d57844a2aa6e7c57c2e23060b1d4748442522d7b2af273e8` |
| 38 | `lemma` | [reindex_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/reindex-comp--4a2ca87804a717591b8bca67.md) | 356 | `result-track:4a2ca87804a717591b8bca67a8b69ab7c411f5cdb5ba4ae92c4aff6c6c5fe6d8` |
| 39 | `lemma` | [map_reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/map-reindex--0b906d61696e8ec565a5baaa.md) | 362 | `result-track:0b906d61696e8ec565a5baaa50b1f5b593124bf5021cad0b9bab35517105918a` |
| 40 | `def` | [functor](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/functor--bd6b43573b76cc888bad7b57.md) | 368 | `declaration-track:bd6b43573b76cc888bad7b576d3316e3aba5d6e6630f65030793e77bf8a2af07` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--9de0edcda9b149f0f1ea7bf1.md) | 378 | `declaration-track:9de0edcda9b149f0f1ea7bf18f8a9017f19ffa60a888a0339b7456b30bf7336d` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--b61429c3c1d6cd33ffaba7c7.md) | 381 | `declaration-track:b61429c3c1d6cd33ffaba7c7b814761bf4044bb81091da3e43c91d1400db2531` |
| 43 | `instance` | [smoothOfRelativeDimension](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/smoothofrelativedimension--7cbf7f87f1f201f2a8078ffb.md) | 390 | `declaration-track:7cbf7f87f1f201f2a8078ffb62958791cf1b16614b38ac88ce35e66e5294b347` |
| 44 | `lemma` | [smoothOfRelativeDimension_of_card_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/smoothofrelativedimension-of-card-eq--d1952ff5ad6b7ebe75aa8b3a.md) | 402 | `result-track:d1952ff5ad6b7ebe75aa8b3a8918e1eab6df27814e03b1dd11a5172319479d90` |
| 45 | `instance` | [smoothOfRelativeDimension_fin](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/smoothofrelativedimension-fin--ce747a0faefd250f9c5ae9a4.md) | 407 | `declaration-track:ce747a0faefd250f9c5ae9a40153d9a01bc2821aac259f243870e073a16fbc2f` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--487e1720e890f2a739656d68.md) | 411 | `declaration-track:487e1720e890f2a739656d68e393e6e8aed9d302b6b158e2a67e7d0387fb8ae7` |
| 47 | `lemma` | [isOpenMap_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isopenmap-over--a03d5f61d940a9ce460685f2.md) | 413 | `result-track:a03d5f61d940a9ce460685f227cb744ce34cfc0ecc85bef91c2b8df9fd6fc8d9` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--3154bb401d187d9e895f9c43.md) | 427 | `declaration-track:3154bb401d187d9e895f9c43b5b09f36ea3b03e5ffb50aca4c960aa20df1dd46` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--3de2d82acf0f819a6dc2372c.md) | 434 | `declaration-track:3de2d82acf0f819a6dc2372c988b1dca7ee86665a169fc1e43e54e7d66eaf59a` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--9166a76bcfde8db9586fc48d.md) | 437 | `declaration-track:9166a76bcfde8db9586fc48d7653752f5ceec8fb4098c40899d617f43e0ffe62` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--2ae22f5e2d218007c74864d7.md) | 445 | `declaration-track:2ae22f5e2d218007c74864d775864d59e003ac8d3da5c22a9d8e1ad6a4310c00` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--27caaf6c516912152b70ef49.md) | 455 | `declaration-track:27caaf6c516912152b70ef49a182a6257a8f85db3bbd2fc55a00f89d10f82614` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--efbe4614932353d64dee979d.md) | 458 | `declaration-track:efbe4614932353d64dee979d9199825e394c4356b9c574b1b59b3ea76a82cf27` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/instance--9fa224b45d2e8e38dc58500a.md) | 462 | `declaration-track:9fa224b45d2e8e38dc58500a3eb07678ca4d804a16f8f38953af641d6c392033` |
| 55 | `lemma` | [isIntegralHom_over_iff_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/isintegralhom-over-iff-isempty--3fe9672efac6ba9aa3909ae2.md) | 473 | `result-track:3fe9672efac6ba9aa3909ae25f339c4314e8f052f23393ffd0b33c81d125aa0e` |
| 56 | `lemma` | [not_isIntegralHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/not-isintegralhom--daf70c99180ac939cff7a2e3.md) | 502 | `result-track:daf70c99180ac939cff7a2e3b10a574819a860c62bd5b74b142d9a02f7cbae2a` |
| 57 | `lemma` | [spec_le_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/spec-le-iff--e45e4ca67ec1bc49874a973f.md) | 506 | `result-track:e45e4ca67ec1bc49874a973f0b60db4ed88b69c4e163a242d5a8f3365ff2b7b4` |
| 58 | `example` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant34f808a0c2cf70127c00874e6df32c767cc53593656da7ba692830df93404077.lean/declarations/example--fd93efe0d957d7e866f868c2.md) | 513 | `declaration-track:fd93efe0d957d7e866f868c2f9d4b7cc4101091ce2630b4ab345bc5d6c6c9a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
