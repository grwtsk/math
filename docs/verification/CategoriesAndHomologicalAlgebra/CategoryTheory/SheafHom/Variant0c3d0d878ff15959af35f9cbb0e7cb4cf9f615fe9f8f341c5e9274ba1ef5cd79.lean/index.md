# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafHom.Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5598ac0240a6fed722c1a5081473d984680ca477",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5598ac0240a6fed722c1a5081473d984680ca477`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean.json)

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
| 1 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhom--6c37b77444d4e4e6f9e7da1b.md) | 47 | `declaration-track:6c37b77444d4e4e6f9e7da1b4f93b11b6e886f2918e9f7b2c93e95dc3bac665a` |
| 2 | `lemma` | [presheafHom_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhom-map-app--677f13cb898f0e453bff215c.md) | 64 | `result-track:677f13cb898f0e453bff215c7de1ed63d3b341ed895e8aaf9f369549f0bc8ffc` |
| 3 | `lemma` | [presheafHom_map_app_op_mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhom-map-app-op-mk-id--e3cc35c55ccf663a46b08706.md) | 73 | `result-track:e3cc35c55ccf663a46b08706215841d60e1188c7aeb852987dde0deba015c1d2` |
| 4 | `def` | [presheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhomsectionsequiv--48dff6204a2cc4bfcf17b875.md) | 83 | `declaration-track:48dff6204a2cc4bfcf17b875ec0784b220d1f494b214b1069f0a3c7fe966b3e7` |
| 5 | `lemma` | [PresheafHom.isAmalgamation_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhom-isamalgamation-iff--3cc44a82bc8e070c72081d85.md) | 107 | `result-track:3cc44a82bc8e070c72081d858ce7ab723440dea22fe144e5b255b4acb1f8a3ee` |
| 6 | `lemma` | [exists_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/exists-app--d2685274627b2e2b442576cb.md) | 137 | `result-track:d2685274627b2e2b442576cbaae6f9f527569871681adede5c23fbffa884d3e8` |
| 7 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/app--34379c8dbdd4d61e973de3a1.md) | 161 | `declaration-track:34379c8dbdd4d61e973de3a13a084f83e929f75d38bc71dc68255c46fa8c5712` |
| 8 | `lemma` | [app_cond](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/app-cond--b9f2cd6cc48ac8e936810f66.md) | 164 | `result-track:b9f2cd6cc48ac8e936810f6694ad38f6cde3bc60c8a0f2d90b0747298747ee45` |
| 9 | `lemma` | [presheafHom_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheafhom-issheaffor--8931b9b88ed3c4ffc08a09ca.md) | 176 | `result-track:8931b9b88ed3c4ffc08a09cad8931b30a2efe940c0fc3c99825cac7ecb88baa5` |
| 10 | `lemma` | [Presheaf.IsSheaf.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/presheaf-issheaf-hom--a12823ea4325c8afe356e851.md) | 213 | `result-track:a12823ea4325c8afe356e851dbcd8fb8be30a0af04eeacb8dd3e8b3a1092451a` |
| 11 | `def` | [sheafHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/sheafhom--b18392c8fcfaf5625cad4c5a.md) | 223 | `declaration-track:b18392c8fcfaf5625cad4c5aaf7733b8754c20cc6d7a62362ebb9724748a388c` |
| 12 | `def` | [sheafHom'Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/sheafhom-iso--43d8531f2af840a6fc42d2d0.md) | 234 | `declaration-track:43d8531f2af840a6fc42d2d0f4736aad29f0855aa69f7338cb9df10faca98d0c` |
| 13 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/sheafhom--53730d98439b4e0edf13c706.md) | 242 | `declaration-track:53730d98439b4e0edf13c7068514da4b899cfcb84b92fa02917fa4d07a2697cf` |
| 14 | `def` | [sheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/sheafhomsectionsequiv--7fffc1237e40b88722f7c8e6.md) | 247 | `declaration-track:7fffc1237e40b88722f7c8e653c11403ad9a52773d6a8956a6fb52e6a851a0e7` |
| 15 | `lemma` | [sheafHomSectionsEquiv_symm_apply_coe_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant0c3d0d878ff15959af35f9cbb0e7cb4cf9f615fe9f8f341c5e9274ba1ef5cd79.lean/declarations/sheafhomsectionsequiv-symm-apply-coe-apply--f57e4c2a1b707ae51e071620.md) | 253 | `result-track:f57e4c2a1b707ae51e071620fc0655c34e5c4c873b9b0b1bd17b12d71058efe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
