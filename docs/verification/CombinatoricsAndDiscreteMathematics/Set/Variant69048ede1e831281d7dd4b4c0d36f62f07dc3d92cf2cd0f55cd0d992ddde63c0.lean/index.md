# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Set.Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd7446bdee129cc1faeb97429d1b4af55a52e8b3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd7446bdee129cc1faeb97429d1b4af55a52e8b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConvexSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset--3e94a8ea39abe07d2515abd4.md) | 43 | `declaration-track:3e94a8ea39abe07d2515abd41e08ed1a5cdb045f4b519417f6411bd76c5a8fc2` |
| 2 | `lemma` | [IsConvexSet.of_sConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-of-sconvexcomb-mem--3355d0c67540a587d745072e.md) | 45 | `result-track:3355d0c67540a587d745072e45ab5e50c7fe6b773ea5a088f84eaf8a2bb60e0a` |
| 3 | `lemma` | [IsConvexSet.sConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-sconvexcomb-mem--9d900236977e39b34860dc66.md) | 49 | `result-track:9d900236977e39b34860dc66c7d91e7bcd81b8aa0b25dea28e61717542fe456f` |
| 4 | `lemma` | [IsConvexSet.iConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-iconvexcomb-mem--1c525630b79e1fc9f50e770d.md) | 52 | `result-track:1c525630b79e1fc9f50e770dcb37cbc688130f41ae8e0705687203e3e2fb4717` |
| 5 | `lemma` | [IsConvexSet.convexCombPair_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-convexcombpair-mem--096d2d800d0748227d8ee64b.md) | 59 | `result-track:096d2d800d0748227d8ee64b17248783fbc10f02f6633dc1b8205cb6a0cc668e` |
| 6 | `lemma` | [IsConvexSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-empty--4e925ff173ebee00fef58076.md) | 66 | `result-track:4e925ff173ebee00fef58076997bdf9c70d8a5575759d62c2fa8d2860e133d7d` |
| 7 | `lemma` | [IsConvexSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-univ--6219c1246c45006ac4f9b7b2.md) | 67 | `result-track:6219c1246c45006ac4f9b7b2916b573923b2c5998d63e1be9e92d3e7fd3ddafa` |
| 8 | `lemma` | [IsConvexSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-singleton--6aa2171eab6ef33f38e5f421.md) | 69 | `result-track:6aa2171eab6ef33f38e5f421a119fdfe533f93ef9911c56de9e65c3916f903af` |
| 9 | `lemma` | [IsConvexSet.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-of-subsingleton--6d9cc92f0f38b1de15fda4b8.md) | 72 | `result-track:6d9cc92f0f38b1de15fda4b871e7e32f9ea036d9b931ad198e2aabb2bcfc5e2a` |
| 10 | `lemma` | [IsConvexSet.inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-inter--5cc798a38d91a2748af5a6a1.md) | 75 | `result-track:5cc798a38d91a2748af5a6a10d97a6b8465c0e7271e3d4a18f0f3f3866c1ef43` |
| 11 | `lemma` | [IsConvexSet.sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-sinter--f3f345940eb804ea3cf66bbb.md) | 79 | `result-track:f3f345940eb804ea3cf66bbb95731477d485683f29465d06be6aa8970a8cb945` |
| 12 | `lemma` | [IsConvexSet.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-iinter--d2d2607b5e2ef4dd122fecf9.md) | 82 | `result-track:d2d2607b5e2ef4dd122fecf95f46b2cca73a445455b39f1cb645111c6f8115c1` |
| 13 | `lemma` | [IsConvexSet.iInter₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-iinter--422d31225257f01553b7aef9.md) | 85 | `result-track:422d31225257f01553b7aef97a865526e2ffaf49255c6f8fe0a632d9c1883383` |
| 14 | `lemma` | [IsConvexSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-sunion--f406b8f305208fc89213e4af.md) | 89 | `result-track:f406b8f305208fc89213e4afbf8c2ed83fb89f23af0b4e10160bc439dd403337` |
| 15 | `lemma` | [IsConvexSet.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-iunion--d9f647df2f7959f55735dfc8.md) | 98 | `result-track:d9f647df2f7959f55735dfc8365e00345b0e2b78aa050d181eefb1a27a6f2e44` |
| 16 | `lemma` | [IsConvexSet.preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-preimage--cc1311303e471628ce5567bb.md) | 102 | `result-track:cc1311303e471628ce5567bbd862714194e741a2f711a3b86e8ff2c9402a1d12` |
| 17 | `lemma` | [IsConvexSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-image--f54a615775faaa604eed1d07.md) | 108 | `result-track:f54a615775faaa604eed1d0739aa5111ef807d763bfe569116ee5d970aef0418` |
| 18 | `def` | [ConvexSpace.subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/convexspace-subtype--90ca6d992162440f2e490c6b.md) | 135 | `declaration-track:90ca6d992162440f2e490c6b4f17e1574d8b590609549b7319e5f311874b0ce4` |
| 19 | `lemma` | [isAffineMap_subtypeVal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isaffinemap-subtypeval--70760df6babd1f756084e1b9.md) | 140 | `result-track:70760df6babd1f756084e1b9c277deb7d833efad62d2801de4e3fb77f2d0ed62` |
| 20 | `lemma` | [subtypeVal_sConvexComb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/subtypeval-sconvexcomb--3e23e96d09d119e23012390a.md) | 147 | `result-track:3e23e96d09d119e23012390aad9cde0748976e7749c0a59bc280078d7198ee08` |
| 21 | `lemma` | [subtypeVal_iConvexComb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/subtypeval-iconvexcomb--a45180dfed831243f81820fc.md) | 152 | `result-track:a45180dfed831243f81820fc4b0265b53243c82fb57c322802cceac665eccc2d` |
| 22 | `lemma` | [subtypeVal_convexCombPair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/subtypeval-convexcombpair--d3c8f413be1ce130589772a1.md) | 159 | `result-track:d3c8f413be1ce130589772a1167b09202c8ef0e7540f0ea964c79ca4ff851cc8` |
| 23 | `lemma` | [IsConvexSet.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-prod--9775f6c0da66313053126ee0.md) | 165 | `result-track:9775f6c0da66313053126ee0c7fbf222138bd3df95feb559310fcde258d3c4c9` |
| 24 | `lemma` | [IsConvexSet.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-pi--421d94caba02e54376662e3b.md) | 173 | `result-track:421d94caba02e54376662e3bff53ea9adbe34b79dfd5054dc37e5a3a28526ad5` |
| 25 | `lemma` | [IsConvexSet.of_convexCombPair_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/declarations/isconvexset-of-convexcombpair-mem--fe890163add807785c8cb90c.md) | 187 | `result-track:fe890163add807785c8cb90cd25e0d4068b61090eb5a250c84fc35364f91b39a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
