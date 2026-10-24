# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22783391f6497c23885f75ab00c582d6ca0d898",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22783391f6497c23885f75ab00c582d6ca0d898`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FintypeCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.MonoCoprod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ConcreteCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Diagonal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreGaloisCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/pregaloiscategory--97cf1984a003c5faa6694031.md) | 61 | `declaration-track:97cf1984a003c5faa6694031139c0295c95e472bafe6284e2611500a2c9e64ab` |
| 2 | `class` | [FiberFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberfunctor--a05ba5555f0e3cd2c177c7b6.md) | 78 | `declaration-track:a05ba5555f0e3cd2c177c7b626d98579ec7e5c06f5c2a6280ffe5bde6e0ee64f` |
| 3 | `class` | [IsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/isconnected--0e0edca94dd37d6a4b7b8230.md) | 97 | `declaration-track:0e0edca94dd37d6a4b7b82303f0da9f54d94eb9ba192ff81a7706409903cfdb2` |
| 4 | `class` | [PreservesIsConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/preservesisconnected--c9c79bbd9ba00475a6832169.md) | 105 | `declaration-track:c9c79bbd9ba00475a683216999ec1268b494842261c67ea686487be572bffd46` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--910f67e26a7521dd28613cb0.md) | 115 | `declaration-track:910f67e26a7521dd28613cb09278f02c2afceb40f33ba073bf0ecbfcddc46103` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--d33833fb6979a5546eb1d279.md) | 117 | `declaration-track:d33833fb6979a5546eb1d279440cc956948a2cf68c51e89f1c143c145010866c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--6d94d2766dd509bd37d8df66.md) | 119 | `declaration-track:6d94d2766dd509bd37d8df6628fc0b2e0cbdc3d0782a2d94bbc62f939e61f35a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--71af91c41987fa78b8711d71.md) | 122 | `declaration-track:71af91c41987fa78b8711d710e35e71864598bf4a4a0e95c92c929be7a00308a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--12e6b9e4c949b079dc2a2904.md) | 136 | `declaration-track:12e6b9e4c949b079dc2a29045db3a7ffbf06aba1c9fa87adf0dc3b454e7be39c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--09583ccf4c6086fae590dd20.md) | 139 | `declaration-track:09583ccf4c6086fae590dd209224fb28f91c4bb2bc6db70036d256e154e7a1be` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--20050ec38706d76a3ff63e4e.md) | 142 | `declaration-track:20050ec38706d76a3ff63e4e5f505fd745518fa14103d13a48cb5ac072ae21a3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--1c0e949daf2bc10423aa1a30.md) | 146 | `declaration-track:1c0e949daf2bc10423aa1a304451dc66877703a7a7e26b2d911a9865151e905c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--b154a9b8d1eacb5896bbbb5e.md) | 152 | `declaration-track:b154a9b8d1eacb5896bbbb5ed077d1de188c36f457db6dcf9cd117561d81620d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--89cc5195de483373711e973e.md) | 163 | `declaration-track:89cc5195de483373711e973ece7c7dcf19bc4da41d287c0cd99235cecec2db37` |
| 15 | `instance` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/comp-right--c001b29e6ab1ff93b6a3360a.md) | 176 | `declaration-track:c001b29e6ab1ff93b6a3360afd602a96d410e90479b9e7afe2fa5835c35286e7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--84de3d695a8c0842be880ae2.md) | 188 | `declaration-track:84de3d695a8c0842be880ae27aef5be197b5cff794beeee4e271e324969c004d` |
| 17 | `lemma` | [mulAction_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/mulaction-def--d503904470d6fd2eed0ed964.md) | 193 | `result-track:d503904470d6fd2eed0ed9644a5d15b5fbfc44ceafb590f08f74cc496e35021d` |
| 18 | `lemma` | [mulAction_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/mulaction-naturality--15ad840bcf5c2678ed052189.md) | 197 | `result-track:15ad840bcf5c2678ed052189bca047d1edd94969231fab5dd6594f6e493244b8` |
| 19 | `lemma` | [has_non_trivial_subobject_of_not_isConnected_of_not_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/has-non-trivial-subobject-of-not-isconnected-of-not-initial--3d014f47cb887a6c6505f286.md) | 202 | `result-track:3d014f47cb887a6c6505f286fbce10ca61f47caebd92d3c3ae235f6a948e78af` |
| 20 | `lemma` | [card_fiber_eq_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/card-fiber-eq-of-iso--625b49a3f78a008c68ca9c5f.md) | 209 | `result-track:625b49a3f78a008c68ca9c5f5a06bc52287d68964371c68f0969c0929eec032e` |
| 21 | `lemma` | [initial_iff_fiber_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/initial-iff-fiber-empty--c903073c283afc3b73533e93.md) | 216 | `result-track:c903073c283afc3b73533e93e4a1d4b3f0fde648d54f8bba64bd149412c23136` |
| 22 | `lemma` | [not_initial_iff_fiber_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/not-initial-iff-fiber-nonempty--a15bdb392108d0862de5c445.md) | 227 | `result-track:a15bdb392108d0862de5c445a69d7a4003da586deca01d24dd1bda8fcca3bb9c` |
| 23 | `lemma` | [not_initial_of_inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/not-initial-of-inhabited--a3d6c2f30fbef0715eb6aacf.md) | 233 | `result-track:a3d6c2f30fbef0715eb6aacf8ce0c002f9c1fa70d598a6067ee5d2338b1556c0` |
| 24 | `instance` | [nonempty_fiber_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/nonempty-fiber-of-isconnected--710f368dd704510eb08e1c70.md) | 237 | `declaration-track:710f368dd704510eb08e1c704ab9bf2399ef9e0821e857ad36ce5c5a4418a18e` |
| 25 | `def` | [fiberEqualizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberequalizerequiv--66163478a3f93761329a43b3.md) | 244 | `declaration-track:66163478a3f93761329a43b3dd1c8f5eb95b7b97c1a7eb695d24f3c0598065c4` |
| 26 | `lemma` | [fiberEqualizerEquiv_symm_ι_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberequalizerequiv-symm-apply--8d0b53c9881975afbc5008d5.md) | 250 | `result-track:8d0b53c9881975afbc5008d520b7baf053cf569caa2fd6b3d004df58857fd753` |
| 27 | `def` | [fiberPullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberpullbackequiv--2a9079575adcbd9c16166d32.md) | 258 | `declaration-track:2a9079575adcbd9c16166d32a41b72f7de8ddd635ac21c5dd8f56a1993489396` |
| 28 | `lemma` | [fiberPullbackEquiv_symm_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberpullbackequiv-symm-fst-apply--8b59c2d6c3e294a09b53662a.md) | 264 | `result-track:8b59c2d6c3e294a09b53662a423e6f7eb3037ac5f7bf8d71136bb88df7c05a4f` |
| 29 | `lemma` | [fiberPullbackEquiv_symm_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberpullbackequiv-symm-snd-apply--caf55a4161f633d3cdfe71f4.md) | 273 | `result-track:caf55a4161f633d3cdfe71f4cd07f800d15014008b2e14320d7e384e7aedb5c1` |
| 30 | `def` | [fiberBinaryProductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberbinaryproductequiv--c1155a9833d2cfb1c69225ea.md) | 282 | `declaration-track:c1155a9833d2cfb1c69225ea575ff1f2c328e50e4d3615be4cad1acfc5aec23b` |
| 31 | `lemma` | [fiberBinaryProductEquiv_symm_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberbinaryproductequiv-symm-fst-apply--392dd5e95d3993754a76070c.md) | 288 | `result-track:392dd5e95d3993754a76070cfa07e68acbdc603cae0a62dbf0d27cec8abf5835` |
| 32 | `lemma` | [fiberBinaryProductEquiv_symm_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/fiberbinaryproductequiv-symm-snd-apply--792a1f01ca3d13ec97f230f7.md) | 296 | `result-track:792a1f01ca3d13ec97f230f7e3d824e05cb422c9f44639d0f20931fa1f435e08` |
| 33 | `lemma` | [evaluation_injective_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/evaluation-injective-of-isconnected--f12ff43df3cf1500b3e65c0d.md) | 304 | `result-track:f12ff43df3cf1500b3e65c0dee559545e2ffadc38b7001e93678e1624a081d6b` |
| 34 | `lemma` | [evaluation_aut_injective_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/evaluation-aut-injective-of-isconnected--13dfc28f60c9eb149df9c4d1.md) | 313 | `result-track:13dfc28f60c9eb149df9c4d135c507d85bfdf328e176271d97912d88c0054ccf` |
| 35 | `lemma` | [epi_of_nonempty_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/epi-of-nonempty-of-isconnected--2c0fd18e61c1b17db6101d91.md) | 322 | `result-track:2c0fd18e61c1b17db6101d9159ad4548f9c2c1afe29de26c18a48dbcbcb012d2` |
| 36 | `lemma` | [surjective_on_fiber_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/surjective-on-fiber-of-epi--e69a826800f19703f39cf3ff.md) | 328 | `result-track:e69a826800f19703f39cf3ff56f25044ba38840a21fec0ab7e06d1a7b6cae593` |
| 37 | `lemma` | [surjective_of_nonempty_fiber_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/surjective-of-nonempty-fiber-of-isconnected--bf328401be1a98894cb97d6b.md) | 332 | `result-track:bf328401be1a98894cb97d6bb1737ccd7bdf46981474415ac7f8b7479cbcba98` |
| 38 | `instance` | [nonempty_fiber_pi_of_nonempty_of_finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/nonempty-fiber-pi-of-nonempty-of-finite--d5e641fc03bc44cf81e8363e.md) | 340 | `declaration-track:d5e641fc03bc44cf81e8363e127ed1bd70e737cef47a583e90ae873b54eddb9a` |
| 39 | `lemma` | [isIso_of_mono_of_eq_card_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/isiso-of-mono-of-eq-card-fiber--b428639cdb83270e305a12c7.md) | 352 | `result-track:b428639cdb83270e305a12c79792b0ee4b2d883146809d9aedb0e8fb1c243d0e` |
| 40 | `lemma` | [lt_card_fiber_of_mono_of_notIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/lt-card-fiber-of-mono-of-notiso--418760e2a927b4a07982589d.md) | 362 | `result-track:418760e2a927b4a07982589ddff84824d330823f61d96e5fe08b09a600d751b4` |
| 41 | `lemma` | [non_zero_card_fiber_of_not_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/non-zero-card-fiber-of-not-initial--230d9f156c5fce568f1b2bf5.md) | 372 | `result-track:230d9f156c5fce568f1b2bf5e2ed6bb8f1ed9da80d238bcec6221bb65a2cbdea` |
| 42 | `lemma` | [card_fiber_coprod_eq_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/card-fiber-coprod-eq-sum--0c980ab481ffa6e68aa7416d.md) | 380 | `result-track:0c980ab481ffa6e68aa7416dc673e18058a14b9b1a9bda773be89c3c66203d24` |
| 43 | `lemma` | [card_hom_le_card_fiber_of_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/card-hom-le-card-fiber-of-connected--e7d2e1f77964e0708d664bbd.md) | 390 | `result-track:e7d2e1f77964e0708d664bbd4be18dc3139d5376bd55f31763625bbb8e75cc1c` |
| 44 | `lemma` | [card_aut_le_card_fiber_of_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/card-aut-le-card-fiber-of-connected--e2b05d0d4029f489d6d2e4b5.md) | 397 | `result-track:e2b05d0d4029f489d6d2e4b54777265a5bb8120444e19fd6ba5c0755b15c1d57` |
| 45 | `class` | [GaloisCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/galoiscategory--724cca3b8debc4ae59609ee6.md) | 409 | `declaration-track:724cca3b8debc4ae59609ee6486e2db1833d0325b75bd80b73d60028d33af1c8` |
| 46 | `def` | [GaloisCategory.getFiberFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/galoiscategory-getfiberfunctor--c8cf56c17d65192d584dd032.md) | 418 | `declaration-track:c8cf56c17d65192d584dd0322faf7ebc0a9135d17555fe6bb843c4d71c4f410c` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--e36766d8320ba0b4cb3166f3.md) | 422 | `declaration-track:e36766d8320ba0b4cb3166f303924eb58e9726d32ffe8f861cb1db20dd05ac7f` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--c8ad34248a3bd35c6cb94cab.md) | 428 | `declaration-track:c8ad34248a3bd35c6cb94cabcd50b8b257c4dc65b5aa4d5a623960af00e81969` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--3966a304f00e4700eef2a002.md) | 435 | `declaration-track:3966a304f00e4700eef2a002fd405babb2bcb23b63b0a1eb4f48760f114fd41a` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean/declarations/instance--1e1df754bdfe1b9e74158a18.md) | 442 | `declaration-track:1e1df754bdfe1b9e74158a18c1aeb04042b87016544f88252cd53a3bb3c13f28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
