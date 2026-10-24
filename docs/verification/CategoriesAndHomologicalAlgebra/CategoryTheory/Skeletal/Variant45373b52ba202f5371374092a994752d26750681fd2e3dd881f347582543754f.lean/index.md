# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeletal.Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d2c1e24392aa1f1bd81d5fd6d4ceead2786e341",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d2c1e24392aa1f1bd81d5fd6d4ceead2786e341`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsomorphismClasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Thin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeletal--f1e33222339b3777cef810b4.md) | 46 | `declaration-track:f1e33222339b3777cef810b48fc3541bc48f9fa371f0efcfa460e2b2273efee7` |
| 2 | `structure` | [IsSkeletonOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/isskeletonof--d6f26e10ec4e25af79e779b6.md) | 52 | `declaration-track:d6f26e10ec4e25af79e779b6cb16b1f6deb77e4c9a103916ec7597d78f31cabc` |
| 3 | `theorem` | [Functor.eq_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/functor-eq-of-iso--095607603286a8c2ebac2aee.md) | 63 | `result-track:095607603286a8c2ebac2aee36a822850542e50ca50d25928300a6c1d625669b` |
| 4 | `theorem` | [functor_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/functor-skeletal--952ad9d0fbd272ff3ec1eb81.md) | 70 | `result-track:952ad9d0fbd272ff3ec1eb81cf3416fd5541d47ef082984ee61f13e76f89243c` |
| 5 | `def` | [Skeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeleton--371502a5f3c3db23a68a60f2.md) | 78 | `declaration-track:371502a5f3c3db23a68a60f24fb5e03578895c188ddeeb691377b52cb1c76480` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--b5e66fb5d54de912972f6f0b.md) | 82 | `declaration-track:b5e66fb5d54de912972f6f0b83b0619f3f16fe5a8849835884ed9fb878063aa3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--03a5aa87c2f9102c19e0da9d.md) | 85 | `declaration-track:03a5aa87c2f9102c19e0da9d53c0dd1b79da6d788e237d1a9ee22b99f6100a58` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--7218daa566289bfb81e57c71.md) | 88 | `declaration-track:7218daa566289bfb81e57c71ed07e2b3baaaf68dbdf942221e24456ef7df2370` |
| 9 | `def` | [fromSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/fromskeleton--0b4cf66f269d49dcc675a13b.md) | 93 | `declaration-track:0b4cf66f269d49dcc675a13b9db931f56483f00dcbb3146e2c221b5974eb9b5b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--b9cfc686c00fca691a5cc6b9.md) | 98 | `declaration-track:b9cfc686c00fca691a5cc6b9e3227a098ad94dc5faf340659c437cd08c9bc2a7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--5b9f12e38ba3933cfe604361.md) | 100 | `declaration-track:5b9f12e38ba3933cfe60436141f3484e8f55b6e4c0c6494d686520b2a432112d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/instance--ac73b480cd1563059aaa6d80.md) | 103 | `declaration-track:ac73b480cd1563059aaa6d80f1a4de592e83862fffcc3a02b44ce81654c92735` |
| 13 | `instance` | [fromSkeleton.isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/fromskeleton-isequivalence--2cb9030b50f845c093c66117.md) | 105 | `declaration-track:2cb9030b50f845c093c6611741fb3a3358b0a4dc4ff3d069c129d5ca8fb6e503` |
| 14 | `abbrev` | [toSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/toskeleton--06c95f4fa11ded73e84c3e3d.md) | 110 | `declaration-track:06c95f4fa11ded73e84c3e3d0d08c9a80a8259ed1dc0293229d45f305c7b8ced` |
| 15 | `def` | [preCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/precounitiso--e83b58f0825837452c85b294.md) | 113 | `declaration-track:e83b58f0825837452c85b294e1de82b838f6ca2acb07827c19dd97a46f7f9507` |
| 16 | `def` | [toSkeletonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/toskeletonfunctor--f0e0749853a421c08497b1ce.md) | 119 | `declaration-track:f0e0749853a421c08497b1cee255de23130f3d155ac625b5978bc5bbf53e2e01` |
| 17 | `def` | [skeletonEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeletonequivalence--3d491db534942db3764b70cd.md) | 126 | `declaration-track:3d491db534942db3764b70cd1c3bb159f643b76ea14584b2611623e35008733d` |
| 18 | `theorem` | [skeleton_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeleton-skeletal--1da0f31ee80e01fab5dc6f9b.md) | 135 | `result-track:1da0f31ee80e01fab5dc6f9b0587d761854f8d405abfc1b02258b8958d36b897` |
| 19 | `lemma` | [skeleton_isSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeleton-isskeleton--378ec7f79f7ea7a7061c14af.md) | 141 | `result-track:378ec7f79f7ea7a7061c14afcfc5d73f8091f3f098cf7d354d17529a6e576a57` |
| 20 | `def` | [Equivalence.skeletonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/equivalence-skeletonequiv--1107769f57fa612172a67290.md) | 151 | `declaration-track:1107769f57fa612172a67290e13001b3f2338176f27fa99836378ac099b9bcf4` |
| 21 | `def` | [ThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/thinskeleton--742b42923756fe8edbfe576a.md) | 164 | `declaration-track:742b42923756fe8edbfe576a51b99ee64772fe1b067dd16ad08227cbb4762e33` |
| 22 | `instance` | [inhabitedThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/inhabitedthinskeleton--1bc5fe7d8904c9c15142bdc8.md) | 167 | `declaration-track:1bc5fe7d8904c9c15142bdc806115dab0472fb58f35a1a46080811702fef5efb` |
| 23 | `instance` | [ThinSkeleton.preorder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/thinskeleton-preorder--f07d8022450b5a6139b65884.md) | 170 | `declaration-track:f07d8022450b5a6139b658848fdf0ff739205acbe1a96e17706378a5fd21ca40` |
| 24 | `def` | [toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/tothinskeleton--a5d04189c2198cbbc9df77da.md) | 187 | `declaration-track:a5d04189c2198cbbc9df77dace4241044f3a0945134a5c97c1a5fea1b2cca051` |
| 25 | `instance` | [thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/thin--bbc23b49e5983ac5a946c835.md) | 200 | `declaration-track:bbc23b49e5983ac5a946c835fb528810eecc764f5785f58566cd890b65e20371` |
| 26 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map--13daade9196b55d31130c73f.md) | 209 | `declaration-track:13daade9196b55d31130c73f3374b4159fbb24482d4a12ba38dc9ba2fd422611` |
| 27 | `theorem` | [comp_toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/comp-tothinskeleton--c76abd2734d9f18dd6b622f9.md) | 213 | `result-track:c76abd2734d9f18dd6b622f9c6f5c228d63bbe42f75c8150084ac548b226eae7` |
| 28 | `def` | [mapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/mapnattrans--6b8042962010c9747e025b06.md) | 217 | `declaration-track:6b8042962010c9747e025b06affac82ec6d35ae3a382b321a9f0986372e3e4c0` |
| 29 | `def` | [map₂ObjMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-objmap--d605ed7325f31be62246d428.md) | 232 | `declaration-track:d605ed7325f31be62246d4283d61531aeb76afd7990e9a58edfd7d63925a299b` |
| 30 | `def` | [map₂Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-functor--f91b42e92ccf32e7f44b486f.md) | 239 | `declaration-track:f91b42e92ccf32e7f44b486fc55717d665f7cd0ee1d8495e8c5a33632763082c` |
| 31 | `def` | [map₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-nattrans--d28fee9e2033da5b95872492.md) | 249 | `declaration-track:d28fee9e2033da5b95872492fc06a59ade8ac5faf68df9d58892ce69a1dacb62` |
| 32 | `def` | [map₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map--95f8ee0c6f4da9683fd00d51.md) | 260 | `declaration-track:95f8ee0c6f4da9683fd00d51489b612d4119c74dbef81482e56d4ea5a2508807` |
| 33 | `instance` | [toThinSkeleton_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/tothinskeleton-faithful--13f61ad06655e2121c6e0dbb.md) | 270 | `declaration-track:13f61ad06655e2121c6e0dbbb8d568fef343a3237851621803aa7946eebfb98c` |
| 34 | `def` | [fromThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/fromthinskeleton--cc67ae1c5b7d650420e85732.md) | 274 | `declaration-track:cc67ae1c5b7d650420e85732b474a864d9c5b48852c39bea0eef60e4424fc974` |
| 35 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/equivalence--0823890d6799f7e9333b680b.md) | 281 | `declaration-track:0823890d6799f7e9333b680be50157eb51cf07a5c5311a7ccf54b2aa68d5c2c9` |
| 36 | `instance` | [fromThinSkeleton_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/fromthinskeleton-isequivalence--901601119f1c5bea3b8c1d65.md) | 288 | `declaration-track:901601119f1c5bea3b8c1d65a670b7d5ad7d5046ce47a3beb1893afe25af5b37` |
| 37 | `theorem` | [equiv_of_both_ways](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/equiv-of-both-ways--39d83ead32e17029f3ed2636.md) | 293 | `result-track:39d83ead32e17029f3ed2636373c747da3dd5c47e3cecb623ec0cb787fcf1fdd` |
| 38 | `instance` | [thinSkeletonPartialOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/thinskeletonpartialorder--1613c6e47de9a2418d39b446.md) | 296 | `declaration-track:1613c6e47de9a2418d39b446453672dd33cc9abcb5403c4c24f4d9e9d03f81eb` |
| 39 | `theorem` | [skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/skeletal--afc5a9639674e71ec4418abd.md) | 304 | `result-track:afc5a9639674e71ec4418abd8a39a36174a87e584741c4bb9630b6ad16742fae` |
| 40 | `theorem` | [map_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-comp-eq--9abaadab027078c2a1655e51.md) | 307 | `result-track:9abaadab027078c2a1655e516d12075cacac26ae8bd493a8d1dce45e27648f8e` |
| 41 | `theorem` | [map_id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-id-eq--9550ab572d1f9444bc80f16e.md) | 311 | `result-track:9550ab572d1f9444bc80f16eb8db709afd2fd009f316b9a34e2a988476686e9b` |
| 42 | `theorem` | [map_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/map-iso-eq--144d6c88f99c0b2b9771ff9a.md) | 315 | `result-track:144d6c88f99c0b2b9771ff9ac7176c81f1771c9dbeb44a81f827466b0054ea70` |
| 43 | `lemma` | [thinSkeleton_isSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/thinskeleton-isskeleton--8c6d6348f599094f0bc2fe41.md) | 321 | `result-track:8c6d6348f599094f0bc2fe4189e6fe4aa2028cab664b0fd6236cc84af6b74048` |
| 44 | `instance` | [isSkeletonOfInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/isskeletonofinhabited--cc6401368c7c0a0910f88d64.md) | 324 | `declaration-track:cc6401368c7c0a0910f88d6458522f20ef59285df035678118f9934a78e8d132` |
| 45 | `def` | [lowerAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/loweradjunction--b055bb87911470210f42d570.md) | 333 | `declaration-track:b055bb87911470210f42d570c7a4f9de88a0d7a90ac37f426e9c35fd61d1b969` |
| 46 | `def` | [Equivalence.thinSkeletonOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f.lean/declarations/equivalence-thinskeletonorderiso--6048e65c4efcb7cd41b8ec72.md) | 357 | `declaration-track:6048e65c4efcb7cd41b8ec72836c3dd0b00562eb9a1ea6d3234b61e8b1daa505` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
