# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeletal.Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c193f2f2e4b0f22e8b2745c9e78a0e75b84335a8",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c193f2f2e4b0f22e8b2745c9e78a0e75b84335a8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean.json)

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
| 1 | `def` | [Skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeletal--91e7af3a4f5524ab31571666.md) | 50 | `declaration-track:91e7af3a4f5524ab31571666564790e0ce62429686dd29a9eb4227191b655abd` |
| 2 | `structure` | [IsSkeletonOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/isskeletonof--1c8c2639bd0796aaf892ade1.md) | 57 | `declaration-track:1c8c2639bd0796aaf892ade1d540212f4755cf02153e899134a370d3afefac75` |
| 3 | `theorem` | [Functor.eq_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/functor-eq-of-iso--b7582eb290fcec070379b47a.md) | 69 | `result-track:b7582eb290fcec070379b47af29dde17faa50455cbe9fd78013eadb0c6d69397` |
| 4 | `theorem` | [functor_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/functor-skeletal--3621e0523b9a49b0f82fbe73.md) | 77 | `result-track:3621e0523b9a49b0f82fbe738adaf3103ab26a8dac49bd9f37320aae4df39758` |
| 5 | `def` | [Skeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeleton--9f8964605d719f510dd0d421.md) | 86 | `declaration-track:9f8964605d719f510dd0d4212cd8c271098482d3c7bd823de7bdcbeca90db33d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/instance--77f8f9caaae0d8e806ad8541.md) | 89 | `declaration-track:77f8f9caaae0d8e806ad8541f919e0ef03f8ed93d8c9eb4b0d34a6499c21e41b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/instance--a8697b48ac6e2eee28a7b5e3.md) | 93 | `declaration-track:a8697b48ac6e2eee28a7b5e31bb52191ad2d1d78caeacb64c0e21cd432fe8b1c` |
| 8 | `def` | [fromSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/fromskeleton--f5f8ecae0b40a6bcbae07940.md) | 98 | `declaration-track:f5f8ecae0b40a6bcbae079409f650a3d10fee429ec334c980700b70a849961b0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/instance--abddc1dc5198a98421a21715.md) | 103 | `declaration-track:abddc1dc5198a98421a217158bb45fdfc6b68ed166f1101cb45f216ffcede28c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/instance--87f507fa261795df8dcca446.md) | 105 | `declaration-track:87f507fa261795df8dcca446f9a69405bc3d4a9ada22bc6c3a407281ed1ba13a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/instance--f8b1a2f5a5fdde7c89a9e4c6.md) | 108 | `declaration-track:f8b1a2f5a5fdde7c89a9e4c6732f763b56301a4905bae15fb117f85055a3c0a8` |
| 12 | `instance` | [fromSkeleton.isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/fromskeleton-isequivalence--1b89a1d7a8dc80b6bf57b674.md) | 111 | `declaration-track:1b89a1d7a8dc80b6bf57b67453ab0e9ca1f60af762221fbf365a113c7db75d77` |
| 13 | `def` | [skeletonEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeletonequivalence--d4c1f85f7f9ae945a7fded23.md) | 115 | `declaration-track:d4c1f85f7f9ae945a7fded2388b3bf30b48a471c995f7f1ad11376d71176bfe1` |
| 14 | `theorem` | [skeleton_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeleton-skeletal--f98ed377186c642980045dd3.md) | 119 | `result-track:f98ed377186c642980045dd3fdce60443e7234424efead42ece20bc4ad4015be` |
| 15 | `def` | [skeletonIsSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeletonisskeleton--dc4ff4a14b57ac5e35685714.md) | 126 | `declaration-track:dc4ff4a14b57ac5e356857146ceb467d35ba3c1ec3fdc104d16cc14794009a89` |
| 16 | `def` | [Equivalence.skeletonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/equivalence-skeletonequiv--71e987e17d8d97d09ddcf38d.md) | 137 | `declaration-track:71e987e17d8d97d09ddcf38d1c38d3926e6a20b1a852b7b381e144930825c132` |
| 17 | `def` | [ThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/thinskeleton--2a3ac75b597ec32181c19311.md) | 151 | `declaration-track:2a3ac75b597ec32181c19311172e8510b0d0de08bae938a65ecd68a79c8cdbb8` |
| 18 | `instance` | [inhabitedThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/inhabitedthinskeleton--2c65885f1f3fce03aabffa5f.md) | 155 | `declaration-track:2c65885f1f3fce03aabffa5f087b2991f6e1dba2526aac692a4c495436544a3c` |
| 19 | `instance` | [ThinSkeleton.preorder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/thinskeleton-preorder--48a5c65c47b8f481c136c308.md) | 159 | `declaration-track:48a5c65c47b8f481c136c30839ba661aef1181947a9dd304389071a6742627a0` |
| 20 | `def` | [toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/tothinskeleton--2ae1aeb2aa107b9e0517f82d.md) | 178 | `declaration-track:2ae1aeb2aa107b9e0517f82d604c22acd7a8325fb5fe352a1c98e7ecf8229cb8` |
| 21 | `instance` | [thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/thin--8089c559e3b1d07164edef9d.md) | 192 | `declaration-track:8089c559e3b1d07164edef9de43b9bd83ca9aa08ecd0081eba3c49de071b695d` |
| 22 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map--d25436345f89f188984d090f.md) | 202 | `declaration-track:d25436345f89f188984d090f04e069c13f1a48625c6c73150dee4abe2beb2c1b` |
| 23 | `theorem` | [comp_toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/comp-tothinskeleton--d9b4c320fae22c7e607b2e86.md) | 207 | `result-track:d9b4c320fae22c7e607b2e86a753ddeb2196c850d966bb030cc044f1a1b6a1b0` |
| 24 | `def` | [mapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/mapnattrans--e986cedfbc9b42adffd0a13a.md) | 212 | `declaration-track:e986cedfbc9b42adffd0a13ac61aa072392675b8c10e58446a2f1d699f8f7b98` |
| 25 | `def` | [map₂ObjMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-objmap--c29139335889164491de4d9e.md) | 228 | `declaration-track:c29139335889164491de4d9ef1c0c569dd65e3d9da6bcd1b21a6ddbe3bf23257` |
| 26 | `def` | [map₂Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-functor--9bdd27db69e9c95b4469ca3d.md) | 235 | `declaration-track:9bdd27db69e9c95b4469ca3dff1ef198d503d03117d121c8fb96c4cff5e63469` |
| 27 | `def` | [map₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-nattrans--0dc476cdf505e7ccd6f3aae4.md) | 245 | `declaration-track:0dc476cdf505e7ccd6f3aae438833c5c60637c34c1dae537c81707ecd3fd0929` |
| 28 | `def` | [map₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map--c4572d92e85dcf9936106e18.md) | 256 | `declaration-track:c4572d92e85dcf9936106e1851de767f9be1add5d6ecafa70766df13ca8243c5` |
| 29 | `instance` | [toThinSkeleton_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/tothinskeleton-faithful--54143bd3214e1c00732f84a8.md) | 267 | `declaration-track:54143bd3214e1c00732f84a8895983f1e3b597323889b731729f1126ed89fd89` |
| 30 | `def` | [fromThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/fromthinskeleton--ede793573da7760a696ff3f8.md) | 272 | `declaration-track:ede793573da7760a696ff3f81854834169537fafd8bf9d3a63bc5512a956fc80` |
| 31 | `instance` | [fromThinSkeletonEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/fromthinskeletonequivalence--1571d09826ab19a4f4c3e902.md) | 279 | `declaration-track:1571d09826ab19a4f4c3e9022c0fce368a3ad83397e714f92d1b165f0d8ad6d7` |
| 32 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/equivalence--000898a9f0b327ea6ef37ce4.md) | 287 | `declaration-track:000898a9f0b327ea6ef37ce49d91f36ac572ed700c057b3682e819b2b7ee0f7d` |
| 33 | `theorem` | [equiv_of_both_ways](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/equiv-of-both-ways--41f1e94f73331076a55ecf1e.md) | 293 | `result-track:41f1e94f73331076a55ecf1ef18026990c67cf83b7fdcf2274fcd72d8af887b3` |
| 34 | `instance` | [thinSkeletonPartialOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/thinskeletonpartialorder--8774db1643f80e2cdc1b3bf8.md) | 297 | `declaration-track:8774db1643f80e2cdc1b3bf8112623c7f6e6326adcadc3b049099d55ab5d1548` |
| 35 | `theorem` | [skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/skeletal--44e2ab6a7580a4beee1620d4.md) | 306 | `result-track:44e2ab6a7580a4beee1620d485667f216ced6a8885c6f5a52b1917b24c3116f2` |
| 36 | `theorem` | [map_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-comp-eq--eca19449bc25f58facef21df.md) | 310 | `result-track:eca19449bc25f58facef21dff7ebbe3ad48ea9b4f351768a781cc994d31f6487` |
| 37 | `theorem` | [map_id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-id-eq--0d1aa8a162bc8760ac9cdc36.md) | 315 | `result-track:0d1aa8a162bc8760ac9cdc3697ddbcf80ec455846f1931024733cf20dca37a94` |
| 38 | `theorem` | [map_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/map-iso-eq--80442913a6c6013bf089038f.md) | 320 | `result-track:80442913a6c6013bf089038f6c6b6c7c33c60faa62128fd60a0175191ece0eab` |
| 39 | `def` | [thinSkeletonIsSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/thinskeletonisskeleton--0c6a123efdf86bab2aafd856.md) | 327 | `declaration-track:0c6a123efdf86bab2aafd856897d1c43012f8ac6ee90c233f84e5ee36341a598` |
| 40 | `instance` | [isSkeletonOfInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/isskeletonofinhabited--270faa276bbf3550b2023236.md) | 333 | `declaration-track:270faa276bbf3550b2023236cf4c41fd9392d798dbba23c5a5f8034067752896` |
| 41 | `def` | [lowerAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/loweradjunction--4749f1825aad4bdba7dbb8e0.md) | 343 | `declaration-track:4749f1825aad4bdba7dbb8e04bc396a55af6467181c4cb372224fe1465016ccd` |
| 42 | `def` | [Equivalence.thinSkeletonOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/declarations/equivalence-thinskeletonorderiso--91f9f0415b299f5f828cedfd.md) | 370 | `declaration-track:91f9f0415b299f5f828cedfd7ca4e7648b3751b69c83af4db61046c052723c62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
