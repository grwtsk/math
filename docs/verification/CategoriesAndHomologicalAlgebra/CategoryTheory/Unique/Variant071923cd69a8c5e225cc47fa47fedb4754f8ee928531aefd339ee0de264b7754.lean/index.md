# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unique.Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f88c5ed29d641aa5a11acb2d0830d1ef9dbb06a4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f88c5ed29d641aa5a11acb2d0830d1ef9dbb06a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq--e85482c15d608ec84cad03af.md) | 32 | `declaration-track:e85482c15d608ec84cad03afe4dd91840bf53e1b67b2bbaa7acc725b17c8cff0` |
| 2 | `theorem` | [homEquiv_leftAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/homequiv-leftadjointuniq-hom-app--6f728b11a7f76857a4d6e8e2.md) | 35 | `result-track:6f728b11a7f76857a4d6e8e28eb2ac42c581b10b00e7b7a4c8ad9b9bb034dfa7` |
| 3 | `theorem` | [unit_leftAdjointUniq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/unit-leftadjointuniq-hom--98618443980eafe6e24a2a8a.md) | 40 | `result-track:98618443980eafe6e24a2a8ad9118b6e7b93ef894de85db2e36b562c403e5366` |
| 4 | `theorem` | [unit_leftAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/unit-leftadjointuniq-hom-app--35fb622430bdd8a1de1c3306.md) | 47 | `result-track:35fb622430bdd8a1de1c330605bd02b9e1390f322222a673043f60797181c50a` |
| 5 | `theorem` | [leftAdjointUniq_hom_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-hom-counit--774820f3dd6afb80412c74bd.md) | 53 | `result-track:774820f3dd6afb80412c74bd58a60f2e2a045ca32a38666415f5f0084d572078` |
| 6 | `theorem` | [leftAdjointUniq_hom_app_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-hom-app-counit--849b11ed7056bfe47be1bc7c.md) | 64 | `result-track:849b11ed7056bfe47be1bc7c47e98e213b43e754902a3e6e42aad2dcd0e599e9` |
| 7 | `theorem` | [leftAdjointUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-inv-app--695fe1171dc4438451d74f48.md) | 70 | `result-track:695fe1171dc4438451d74f488d76d3858e96c44bb4f1ebeefb30b0370756e17b` |
| 8 | `theorem` | [leftAdjointUniq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-trans--f0f8dbd48f92744919631c38.md) | 75 | `result-track:f0f8dbd48f92744919631c38fae630edd42790d048165fd58d4e4d9f0cb14d55` |
| 9 | `theorem` | [leftAdjointUniq_trans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-trans-app--9481231052ad62bc561c5041.md) | 82 | `result-track:9481231052ad62bc561c5041186f8f488c17001029cc1bfa3270aaa99f7924bd` |
| 10 | `theorem` | [leftAdjointUniq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/leftadjointuniq-refl--fe571cc85cf7cba151f4bc08.md) | 90 | `result-track:fe571cc85cf7cba151f4bc084e5e4ab3f9b874507ffb8bd7c2c4c5b56134dbc8` |
| 11 | `def` | [rightAdjointUniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq--f175e5f7e85d705eeb05cfd4.md) | 95 | `declaration-track:f175e5f7e85d705eeb05cfd460262ef80c4fd066d20fb234c791ae7860abcf0a` |
| 12 | `theorem` | [homEquiv_symm_rightAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/homequiv-symm-rightadjointuniq-hom-app--5706737f32130bd99a9af1d7.md) | 98 | `result-track:5706737f32130bd99a9af1d725ea02adcb5027a228a82a298a8f84ed2f40821e` |
| 13 | `theorem` | [unit_rightAdjointUniq_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/unit-rightadjointuniq-hom-app--c61e15f60b3483558593d384.md) | 104 | `result-track:c61e15f60b3483558593d384f6c43a69f9932fb786cf55e22f3521211d273c68` |
| 14 | `theorem` | [unit_rightAdjointUniq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/unit-rightadjointuniq-hom--bd8937cde78a86d995b36ebd.md) | 113 | `result-track:bd8937cde78a86d995b36ebda577ffb18b6cd6224292e32ddece4f9caac6d531` |
| 15 | `theorem` | [rightAdjointUniq_hom_app_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-hom-app-counit--01fa7c173d7613dd3fb27156.md) | 119 | `result-track:01fa7c173d7613dd3fb27156e95e943690e61fe3cca1ca121775fd6daa558b24` |
| 16 | `theorem` | [rightAdjointUniq_hom_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-hom-counit--66e971ce2a42366ca2e40d86.md) | 125 | `result-track:66e971ce2a42366ca2e40d86f573a6d451d41ff2e74d449094d24415c96bb6c9` |
| 17 | `theorem` | [rightAdjointUniq_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-inv-app--0cced98b3ec81910a5e8276f.md) | 130 | `result-track:0cced98b3ec81910a5e8276f57d114e1ffd8d31afbe39a5a3ef3c4db83a65c5e` |
| 18 | `theorem` | [rightAdjointUniq_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-trans--13a445d9223036d65349c87d.md) | 135 | `result-track:13a445d9223036d65349c87d5fa51e0db64957de1cd82977137372c405105604` |
| 19 | `theorem` | [rightAdjointUniq_trans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-trans-app--3b3af74f6c0c1106aab9ad07.md) | 142 | `result-track:3b3af74f6c0c1106aab9ad07885c3233c0509cad8d7eb51a3d3dc668368c1dbd` |
| 20 | `theorem` | [rightAdjointUniq_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unique/Variant071923cd69a8c5e225cc47fa47fedb4754f8ee928531aefd339ee0de264b7754.lean/declarations/rightadjointuniq-refl--d85ba57fca3230d56f93d72e.md) | 151 | `result-track:d85ba57fca3230d56f93d72ecc55e378a857dbcfd450a567986c524c33b9da6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
