# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConstantSheaf.Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fed3e71146f34e78917b7d66b56abaf7ac866071",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fed3e71146f34e78917b7d66b56abaf7ac866071`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.SheafEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constantPresheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantpresheafadj--662b9959ae20b1cb51d486f9.md) | 41 | `declaration-track:662b9959ae20b1cb51d486f92b08bb226b1a7842a3c0be37cfdbd97564535a3f` |
| 2 | `def` | [constantSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantsheaf--c08ab17732156f1df0a09179.md) | 60 | `declaration-track:c08ab17732156f1df0a09179f3ae423c0a8066831ed598851280af0439fcd380` |
| 3 | `def` | [constantSheafAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantsheafadj--cd4b93ec5bae68a1504026d7.md) | 64 | `declaration-track:cd4b93ec5bae68a1504026d78b92a96c7754d39758e2ec368f3c5d29d09bbb45` |
| 4 | `class` | [IsConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant--9295483303535e029a0e833b.md) | 75 | `declaration-track:9295483303535e029a0e833bc72c03d8b964f7e28e79128e2ff157c7576df9d7` |
| 5 | `lemma` | [mem_essImage_of_isConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/mem-essimage-of-isconstant--28e65dbbaf69d13f3f663413.md) | 78 | `result-track:28e65dbbaf69d13f3f6634134ccf397e0d0cd8f57b99c12711b3b916318aacb7` |
| 6 | `lemma` | [isConstant_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-congr--37ccaa12ce7616c25d581c2f.md) | 82 | `result-track:37ccaa12ce7616c25d581c2f19e6d441eae6fc8c1126ef7fbdbf8003d5472ae7` |
| 7 | `lemma` | [isConstant_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-of-iso--ef9dac3f949e3c7bf9b19ed5.md) | 85 | `result-track:ef9dac3f949e3c7bf9b19ed55c26ed211a9e80d33b933ecc7929854c17f9d58b` |
| 8 | `lemma` | [isConstant_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-iff-mem-essimage--d8885fdef35eafa90930cc29.md) | 88 | `result-track:d8885fdef35eafa90930cc29e7bb5dc5275490ca53f0e2d2b404d8c64dbfdc20` |
| 9 | `lemma` | [isConstant_of_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-of-isiso-counit-app--187537e47eba85827c78fbce.md) | 94 | `result-track:187537e47eba85827c78fbcebd93d6e6336b89a0669bb8507d01268c7b1a4122` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/instance--126457e2b44e62a27e3eb300.md) | 98 | `declaration-track:126457e2b44e62a27e3eb300141b4101cd0432ff44b62e5a848448d04620646c` |
| 11 | `lemma` | [isConstant_iff_isIso_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-iff-isiso-counit-app--7a940e4caa8c98fc945674f3.md) | 108 | `result-track:7a940e4caa8c98fc945674f357fd3777ba6a5bf82d5c944a005e9fcded34f3d5` |
| 12 | `lemma` | [isConstant_iff_isIso_counit_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/isconstant-iff-isiso-counit-app--4c37431c39c1898cb5adf5e5.md) | 117 | `result-track:4c37431c39c1898cb5adf5e57eaae25a242a64ca16b7ea4c2b9911b0a4da8c27` |
| 13 | `def` | [equivCommuteConstant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/equivcommuteconstant--b57e948361095486faa8815f.md) | 136 | `declaration-track:b57e948361095486faa8815f3bc5c222dec67e5eb53480623aadcc677fef2911` |
| 14 | `def` | [equivCommuteConstant'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/equivcommuteconstant--3feb82146d61fd6a1fa0527c.md) | 146 | `declaration-track:3feb82146d61fd6a1fa0527c2af0ae63a5a7f6d3374e6c28a74088f5c88589b4` |
| 15 | `lemma` | [Sheaf.isConstant_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/sheaf-isconstant-iff-of-equivalence--d76a013a7706014cfb0453f3.md) | 159 | `result-track:d76a013a7706014cfb0453f3a2c6edec5ae0a56c5dd15caaa9559ac5703c2c7b` |
| 16 | `def` | [constantCommuteCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantcommutecompose--dec76084f623ca3b23e8a814.md) | 178 | `declaration-track:dec76084f623ca3b23e8a81431dc42d43efbd3baa600f800113fd45833c7da6f` |
| 17 | `lemma` | [constantCommuteCompose_hom_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantcommutecompose-hom-app-val--90a561b1fa5bdf7078483f9c.md) | 184 | `result-track:90a561b1fa5bdf7078483f9c705a2a318b503e54474dad9ce6a30c277524ecef` |
| 18 | `lemma` | [constantSheafAdj_counit_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/constantsheafadj-counit-w--a60aa23df58ff725395716f0.md) | 188 | `result-track:a60aa23df58ff725395716f0a456f108120a42422f1497c7a5d65f6345739ca7` |
| 19 | `lemma` | [Sheaf.isConstant_of_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/sheaf-isconstant-of-forget--bf04964bf95c0667801ca38b.md) | 205 | `result-track:bf04964bf95c0667801ca38b2156c1211df5a4cace7dc1b96d33574dc08b30d9` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/instance--defd110fe4dc1e3dba42f29b.md) | 215 | `declaration-track:defd110fe4dc1e3dba42f29bd8b4ce6a4885dc870ed445e2afe3fc72957c4dcb` |
| 21 | `lemma` | [Sheaf.isConstant_iff_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant4594d84263384cd50eec2549c036e5e257808ea1c2a8aaebc8b350cd671cd150.lean/declarations/sheaf-isconstant-iff-forget--a5516505539783f1d3cf7613.md) | 222 | `result-track:a5516505539783f1d3cf761384bdbe1648bd3bdc825d2c3dc1c29bdd4cc58a7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
