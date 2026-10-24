# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConstantSheaf.Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9894c0e4db8c10616359c9698b092e14f48708b2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9894c0e4db8c10616359c9698b092e14f48708b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean.json)

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
| 1 | `def` | [constantPresheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantpresheafadj--0485346be6f98bc8821ec504.md) | 54 | `declaration-track:0485346be6f98bc8821ec504caee58a39a1be0eedcc17817dd6c1d5c14f66701` |
| 2 | `def` | [constantSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantsheaf--0da4de1a06aab8aaf8c5211b.md) | 73 | `declaration-track:0da4de1a06aab8aaf8c5211bedf3cfd02e2b1d462ca5bc008685276518db516f` |
| 3 | `def` | [constantSheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantsheafadj--1ac00223bf9b9da69b3a4eaa.md) | 77 | `declaration-track:1ac00223bf9b9da69b3a4eaaac887c424a26abef800a218d25b420b7462f732e` |
| 4 | `class` | [IsConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant--3cdbdcafd8f7f2c84ae879a8.md) | 88 | `declaration-track:3cdbdcafd8f7f2c84ae879a86b180a31dd812ad87bab65a8021de119394ee29b` |
| 5 | `lemma` | [mem_essImage_of_isConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/mem-essimage-of-isconstant--076ad297aa24f4147bc7d131.md) | 91 | `result-track:076ad297aa24f4147bc7d1317dc5ec0616749cc39ee407e157f592a8dadfad30` |
| 6 | `lemma` | [isConstant_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-congr--ef8d8869d150364b74efc2fa.md) | 95 | `result-track:ef8d8869d150364b74efc2fa848586d038595ecb0229bdcf6568e157c789b779` |
| 7 | `lemma` | [isConstant_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-of-iso--cb3cc9e2ef39d8071722fac2.md) | 98 | `result-track:cb3cc9e2ef39d8071722fac2ba143bec1629ea1e95bedafc892a097aea06a5b4` |
| 8 | `lemma` | [isConstant_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-iff-mem-essimage--924d06b646ba1670cfcd9cb2.md) | 101 | `result-track:924d06b646ba1670cfcd9cb2fafa666c07ed38b7b0bec544d1abe1df9dacbdec` |
| 9 | `lemma` | [isConstant_of_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-of-isiso-counit-app--3515dedd38b5cb36ca489381.md) | 107 | `result-track:3515dedd38b5cb36ca489381447d5bd901d7e2852331e13c31dd5fd901fb3146` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/instance--42c4ef877ff599086ceddfbc.md) | 111 | `declaration-track:42c4ef877ff599086ceddfbcf0237bed391c08478180658b386fe274d5e2e576` |
| 11 | `lemma` | [isConstant_iff_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-iff-isiso-counit-app--726982b3d38bc8217ed9cb90.md) | 121 | `result-track:726982b3d38bc8217ed9cb9040b714487d1d5863c923dce8b6b1aac5c3f6abc6` |
| 12 | `lemma` | [isConstant_iff_isIso_counit_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/isconstant-iff-isiso-counit-app--c3ac9fcd4aa8bbac273122fd.md) | 130 | `result-track:c3ac9fcd4aa8bbac273122fdc7bc8781dc9759271c3380f531708b4ebbf90226` |
| 13 | `def` | [equivCommuteConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/equivcommuteconstant--5427ac9762005f3529609cd3.md) | 149 | `declaration-track:5427ac9762005f3529609cd36f9ef30f5856c4be9285f87cd7fc5785388ca620` |
| 14 | `def` | [equivCommuteConstant'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/equivcommuteconstant--c2dffa18862e24da82de20d3.md) | 159 | `declaration-track:c2dffa18862e24da82de20d3ff437658e5d702aaac7ccf32c8d684655b2e75b0` |
| 15 | `lemma` | [Sheaf.isConstant_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/sheaf-isconstant-iff-of-equivalence--311ef1a588a3e1cb9d28865d.md) | 172 | `result-track:311ef1a588a3e1cb9d28865d13988c40a846c1828465997d487ba8b7246a1cd6` |
| 16 | `def` | [constantCommuteCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantcommutecompose--6117f22e6a21d8812b7b43fd.md) | 191 | `declaration-track:6117f22e6a21d8812b7b43fd4ab194bf2cfcbb0920e113ec6daf97b871aafdcd` |
| 17 | `lemma` | [constantCommuteCompose_hom_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantcommutecompose-hom-app-hom--8b22081b0f97d98613b9e55c.md) | 197 | `result-track:8b22081b0f97d98613b9e55cfe44cc56dd262542e729ec255bc653cd204911b2` |
| 18 | `lemma` | [constantSheafAdj_counit_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/constantsheafadj-counit-w--cc247998076e0dcabf495b40.md) | 206 | `result-track:cc247998076e0dcabf495b40ba386601e5d0fda7da5a1646101307b3875d29c8` |
| 19 | `lemma` | [Sheaf.isConstant_of_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/sheaf-isconstant-of-forget--31194d1738f00cc1bb6ec769.md) | 219 | `result-track:31194d1738f00cc1bb6ec769cb016a3bf2e290800430b6af171609329a723b46` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/instance--fac0fdbb0dd5b4ff08e5d5e2.md) | 229 | `declaration-track:fac0fdbb0dd5b4ff08e5d5e2504f4e276a9686e1ed36cf4326db64f084d33fac` |
| 21 | `lemma` | [Sheaf.isConstant_iff_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variante0b28a8c159d7e8dbfc27ae7f2d39458cf805c77723862a8b94e106d5b83089c.lean/declarations/sheaf-isconstant-iff-forget--c25b52a8a61990ec404aa24d.md) | 236 | `result-track:c25b52a8a61990ec404aa24db9309f6e69fecfa1feab99528b367df4d495b116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
