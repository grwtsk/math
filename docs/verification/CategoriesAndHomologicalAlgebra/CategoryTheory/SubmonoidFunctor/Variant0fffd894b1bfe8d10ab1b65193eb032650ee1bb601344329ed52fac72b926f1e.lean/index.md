# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SubmonoidFunctor.Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "644326b2a4d55a9a93133d07cb67f24761c9ee2b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `644326b2a4d55a9a93133d07cb67f24761c9ee2b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean.json)

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
| 1 | `structure` | [SubmonoidFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/submonoidfunctor--ee17c010e9fb711ba1782445.md) | 41 | `declaration-track:ee17c010e9fb711ba1782445f2ffd43847e6fcdb22d133b4602add904c6ca961` |
| 2 | `lemma` | [map_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/map-le--be87d791cc25d6bc0396b7fe.md) | 51 | `result-track:be87d791cc25d6bc0396b7fed2d4dd5eab179c598aea9f8c609dc610a4acec2c` |
| 3 | `def` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/tofunctor--fb831f8dd7a46e353b0674a9.md) | 56 | `declaration-track:fb831f8dd7a46e353b0674a95e813394abfa601ef45562d2da0d7c3ada4744d2` |
| 4 | `def` | [toSubfunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/tosubfunctor--bcbfee391b20646c8e0a2f99.md) | 63 | `declaration-track:bcbfee391b20646c8e0a2f994a92c7e1712310dfa828c46d1d8c7f5ce57bda37` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/instance--55ce60ac344f179e7b445008.md) | 69 | `declaration-track:55ce60ac344f179e7b445008107786947caa69e362666d1cb6817feaf909f01b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/instance--56439cfaa072d103cb830604.md) | 72 | `declaration-track:56439cfaa072d103cb83060418f64cab792ff2e8a13f69072d211a7167281130` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/instance--c14dd3cc1ab5b693f8cf2ec3.md) | 76 | `declaration-track:c14dd3cc1ab5b693f8cf2ec3d552e5a3a87e855b6966f8788b48f62ae2c27942` |
| 8 | `def` | [ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/anonymous--9732396a56e34b30b5b5f919.md) | 108 | `declaration-track:9732396a56e34b30b5b5f91993e4682ff46cd6e8202d02ab9b1528e00dd30259` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/instance--808041a5ad363bffc9f5ef28.md) | 111 | `declaration-track:808041a5ad363bffc9f5ef280ae7d16ebf9c32e69c27717496f2ed16a90451b1` |
| 10 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/image--2757e053db06c537e08041ce.md) | 122 | `declaration-track:2757e053db06c537e08041ce6dc4968c01183245eabc46c9b743b83aa259d124` |
| 11 | `lemma` | [image_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/image-id--ccdefa8f87e2255f3b9a5abd.md) | 131 | `result-track:ccdefa8f87e2255f3b9a5abddfec23bb8b9437634e99c622e53f005f1b0b641e` |
| 12 | `lemma` | [image_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/image-comp--5ef6d381d9b92ca82a79f2ec.md) | 134 | `result-track:5ef6d381d9b92ca82a79f2ec465a3ccb0855d974c068d3da161290d029ccb334` |
| 13 | `def` | [comap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/comap--81ca8daaa5dc78d31f86e9a2.md) | 144 | `declaration-track:81ca8daaa5dc78d31f86e9a2c3c6a3b51a7278ec54ac0566ab8ad67682318913` |
| 14 | `lemma` | [comap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/comap-id--f91154666dea1c86004876bd.md) | 152 | `result-track:f91154666dea1c86004876bd90446013aa13b1ed4861c51aca1ae3841580e823` |
| 15 | `lemma` | [comap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/comap-comp--d2f4c2e12dc298cf501ca7b7.md) | 155 | `result-track:d2f4c2e12dc298cf501ca7b7b9b12f2b9ca596edee23ffcd2f6c7f9060a54fb1` |
| 16 | `lemma` | [image_comap_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/image-comap--dc47c75b41ffbb94ccf870f8.md) | 160 | `result-track:dc47c75b41ffbb94ccf870f8edecefffd7c79158a94ecf1ad1cdcda137f9460f` |
| 17 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/lift--afef2574b39b0d32ee781997.md) | 173 | `declaration-track:afef2574b39b0d32ee781997fe94b98ee34d76657e4c73e882d5af7486f009fd` |
| 18 | `theorem` | [lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SubmonoidFunctor/Variant0fffd894b1bfe8d10ab1b65193eb032650ee1bb601344329ed52fac72b926f1e.lean/declarations/lift--1382f7c37c5eb60d5ecfd74e.md) | 177 | `result-track:1382f7c37c5eb60d5ecfd74ecc091ddca9828657e61e4f79adbe48489c426732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
