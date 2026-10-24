# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d945a8414c05111beb1c818fd2baab6f70c6ab3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d945a8414c05111beb1c818fd2baab6f70c6ab3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean.json)

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
| 1 | `def` | [constCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/constcone--b34dbe1b0de2d4998a2fb232.md) | 60 | `declaration-track:b34dbe1b0de2d4998a2fb232a24cbf362a70fc2688bef26223a04ebc3ef9b482` |
| 2 | `def` | [constCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/constcocone--54eb5461fc120714c52a02eb.md) | 66 | `declaration-track:54eb5461fc120714c52a02eb647851bcd9f2197ba5b323e826bfeaf0a68f23eb` |
| 3 | `def` | [isLimitConstCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/islimitconstcone--a4914c82f422c63c2463f9e2.md) | 76 | `declaration-track:a4914c82f422c63c2463f9e2fccc11540aea7ce82a749cdeb4e0a133d4bd4bb1` |
| 4 | `def` | [isColimitConstCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/iscolimitconstcocone--67ff25537a30147648ac1a36.md) | 89 | `declaration-track:67ff25537a30147648ac1a364eb5012f45cac13e958f5753168b074aa8de27c4` |
| 5 | `instance` | [hasLimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/haslimit-const-of-isconnected--d81bdc6a74b6b2df7de335d7.md) | 98 | `declaration-track:d81bdc6a74b6b2df7de335d733d76d44d45c1297afbe8c3498f2e97476872652` |
| 6 | `instance` | [hasColimit_const_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/hascolimit-const-of-isconnected--500a784c9dd88242c2b39f93.md) | 101 | `declaration-track:500a784c9dd88242c2b39f93672b2c2b245c87423f653168226c409c3ec1a961` |
| 7 | `def` | [Cone.isLimitOfIsIsoLimMapπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/cone-islimitofisisolimmap--08e0dccc20094c2c8e4ba7d0.md) | 114 | `declaration-track:08e0dccc20094c2c8e4ba7d0c0cd9483aa1f9814e008b18e1cf8a3c90afd82a9` |
| 8 | `theorem` | [IsLimit.isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/islimit-isiso-limmap--b06a15c198091ab9ee1232eb.md) | 125 | `result-track:b06a15c198091ab9ee1232eb5aca5fba793b8c3a03082acbd4f02fe373abd205` |
| 9 | `theorem` | [Cone.isLimit_iff_isIso_limMap_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/cone-islimit-iff-isiso-limmap--245633c178cfc2d35a03f8f5.md) | 136 | `result-track:245633c178cfc2d35a03f8f5c921c430d68cebc1932b578d989b4b25f1b7bd5c` |
| 10 | `def` | [Cocone.isColimitOfIsIsoColimMapι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/cocone-iscolimitofisisocolimmap--becc5b4aa085700c1986ef60.md) | 144 | `declaration-track:becc5b4aa085700c1986ef60d0bb0ad00ced029c7815ad4c5b3f339138bc1e8b` |
| 11 | `theorem` | [IsColimit.isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/iscolimit-isiso-colimmap--ef178b725623a17577ef9dec.md) | 150 | `result-track:ef178b725623a17577ef9decf62becab165acb11400aa46e3a6744b659bdeb93` |
| 12 | `theorem` | [Cocone.isColimit_iff_isIso_colimMap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/cocone-iscolimit-iff-isiso-colimmap--7920fe7983d13ec811c37c55.md) | 161 | `result-track:7920fe7983d13ec811c37c556d2e8b4f8b47059dc6b93d30841f43cdb1d9bb55` |
| 13 | `instance` | [widePullbackShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/widepullbackshape-connected--f805971d3a76e0b067badad6.md) | 173 | `declaration-track:f805971d3a76e0b067badad61683690e8d8a3a29628978c3edc7ca74374bbe47` |
| 14 | `instance` | [widePushoutShape_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/widepushoutshape-connected--2bda9e0cadf71f62b8bce4de.md) | 180 | `declaration-track:2bda9e0cadf71f62b8bce4deb9fd926907ec3cbbcec044183527b1a85bfe5375` |
| 15 | `instance` | [parallelPairInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/parallelpairinhabited--3df1c0869390459cbdbae7b3.md) | 187 | `declaration-track:3df1c0869390459cbdbae7b3763ebd41d4d07cc6e948da5da2655a79ffa9241c` |
| 16 | `instance` | [parallel_pair_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/parallel-pair-connected--ec0d5023a2b59139695d09f2.md) | 190 | `declaration-track:ec0d5023a2b59139695d09f2dae03b40fe8ee57caedc008846e9319db7f6e68f` |
| 17 | `def` | [γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/anonymous--2f305d25d9bcbaebef85a17b.md) | 208 | `declaration-track:2f305d25d9bcbaebef85a17b490aec4a80417d5ad4e5e8ed32f1d6dbb526dd28` |
| 18 | `def` | [γ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/anonymous--1060db05398d20f75ef4889c.md) | 213 | `declaration-track:1060db05398d20f75ef4889cb948655d352ee18feec24919e7e3015d29480fc7` |
| 19 | `def` | [forgetCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/forgetcone--70bd53040158c0bbd80f8986.md) | 219 | `declaration-track:70bd53040158c0bbd80f89866fc64ba4fd1a3d127a4fce969fb1459eada537b2` |
| 20 | `lemma` | [prod_preservesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variant36e6f2af51bb913fcb36a15d4abd2dfadcd370dd064da6b13a3f2ed43b0715cd.lean/declarations/prod-preservesconnectedlimits--d6821ee6c86fe26607ec61be.md) | 233 | `result-track:d6821ee6c86fe26607ec61be9ecc2065b0d881a48c26cc6af2042433d10d8775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
