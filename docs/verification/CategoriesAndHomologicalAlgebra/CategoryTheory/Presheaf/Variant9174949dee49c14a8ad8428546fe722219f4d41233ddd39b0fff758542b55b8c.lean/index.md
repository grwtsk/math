# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c05fd334f9bb8cc171acd0b9bcbd12d27ad080f8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c05fd334f9bb8cc171acd0b9bcbd12d27ad080f8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/presheafofmodules--739c8f8a14e7d0c6024e4380.md) | 43 | `declaration-track:739c8f8a14e7d0c6024e43805e25785af3bec333f214489f3391af15d33118e9` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/obj--7027262fbdd3d057d2b9a7c3.md) | 56 | `declaration-track:7027262fbdd3d057d2b9a7c37ad25d93fc41bd571d2cd07ed471b6963d66aa8a` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/map--e69113cac05dfd40c717e261.md) | 64 | `declaration-track:e69113cac05dfd40c717e2613a830433d624306aa35fbb9c74f75b1f6cbb24ae` |
| 4 | `theorem` | [map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/map-apply--6f6a36e14e8e052b0decbdef.md) | 70 | `result-track:6f6a36e14e8e052b0decbdef2d7400391cc003ed606bd2c901cee9066d6051ee` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--d9ab1539e4cca74ffeb96693.md) | 74 | `declaration-track:d9ab1539e4cca74ffeb96693bc8c6373ff66b9033f96ea791b21de85a082cb9a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--f1f4417ce5516dc9e22e6309.md) | 77 | `declaration-track:f1f4417ce5516dc9e22e630975af70d97e8eaf536a47cddb8fb584636bb7454b` |
| 7 | `theorem` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/map-id--ba7010a72b52657e10023f6c.md) | 82 | `result-track:ba7010a72b52657e10023f6caf3fb5e329cf8f7a413c48f1804cf00acddb9960` |
| 8 | `theorem` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/map-comp--6a3568306a9e000c7b500543.md) | 88 | `result-track:6a3568306a9e000c7b5005434eb4013c76e162b0e1e892081aaab4a13ba2009b` |
| 9 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/hom--ce8520fbb71444d5148fac1a.md) | 94 | `declaration-track:ce8520fbb71444d5148fac1a3d0f16f8e37f800841327ecd9211dd7797eb2d36` |
| 10 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/id--623bb2d503c7af60e804682e.md) | 101 | `declaration-track:623bb2d503c7af60e804682e7ce12d9719c16df62ef0f8edf60bdd3bbdad0f0d` |
| 11 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/comp--f48cf93dbffca1a381fd77be.md) | 106 | `declaration-track:f48cf93dbffca1a381fd77bec2549c1da57af1d674a4bb30cda3eeffaf2ce01b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--46bc782855e877f794ec675b.md) | 112 | `declaration-track:46bc782855e877f794ec675b4240cebf7dfd5e992072c963bd1e96cd65557580` |
| 13 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/app--74b38f085bde25a1841f2de4.md) | 124 | `declaration-track:74b38f085bde25a1841f2de4c3a6cafc6adfd2e7f7811b38eef63c756c07a491` |
| 14 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/comp-app--2c2c44cac2aa4e2a0f41f8a6.md) | 129 | `result-track:2c2c44cac2aa4e2a0f41f8a63686b5632539576ab1bbab4159a0d42331590679` |
| 15 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/ext--e758847d27f3b1e4e1eb6a7a.md) | 133 | `result-track:e758847d27f3b1e4e1eb6a7a1500000b3c99f9e46a4732182dfafcd47097f28a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--90958bcea319375abfe19465.md) | 139 | `declaration-track:90958bcea319375abfe19465767a418bd33d17dbf743effad06ebab9e2e1610b` |
| 17 | `lemma` | [zero_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/zero-app--6d8e59ca70a9e8e91afd076a.md) | 146 | `result-track:6d8e59ca70a9e8e91afd076a97a9ee565271e6a9c275b4ae9845e28a904df35d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--d31fcb3e8ac54baa10db7184.md) | 150 | `declaration-track:d31fcb3e8ac54baa10db718421063afcad687e71b8b8fadbcf0beddd82d166b0` |
| 19 | `lemma` | [add_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/add-app--d766f6e7afb304bfbb91cb85.md) | 155 | `result-track:d766f6e7afb304bfbb91cb85dda7f2aa292b35c1b0f9cb6e8d61b1a8b1b1cb82` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--0205201185a4266dd11e4ada.md) | 157 | `declaration-track:0205201185a4266dd11e4adabe30200dfce3d5b153c00e9ae73dbc61996b846d` |
| 21 | `lemma` | [sub_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/sub-app--b00e0af7230b8bd59aa70e2e.md) | 163 | `result-track:b00e0af7230b8bd59aa70e2e98315dc51877a0c7cff99f1c54ce371ac0f188a0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--80caba686c28830b9190489b.md) | 165 | `declaration-track:80caba686c28830b9190489b6032b774a52fa046639fb0c6200cc107886e398e` |
| 23 | `lemma` | [neg_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/neg-app--3a910a50da4f18097028e36d.md) | 171 | `result-track:3a910a50da4f18097028e36d3cc208bf3fe0039190b315609d36182d44ad33ee` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--6677839e90b29381096d07b9.md) | 173 | `declaration-track:6677839e90b29381096d07b9fc5eb5248f05b81899f20d6f0cc8de2cbe7e3cac` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--2c3b39b4ab38744c0472227b.md) | 181 | `declaration-track:2c3b39b4ab38744c0472227b7302d0596d047e238201f3b6eb7ff9a774abe0aa` |
| 26 | `def` | [toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/topresheaf--88d145250dd001224c7dd8b1.md) | 193 | `declaration-track:88d145250dd001224c7dd8b1d0f14d86ac6db437290ef7e7769550f1ee39ecf2` |
| 27 | `lemma` | [toPresheaf_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/topresheaf-map-app--484e02556349c44b77788dc7.md) | 200 | `result-track:484e02556349c44b77788dc70d28c491b5c0eec5a62fc66fceedaf471a19f59c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--167ad0daf67a324e466d2e88.md) | 204 | `declaration-track:167ad0daf67a324e466d2e88a150d654b52e5595a79e3e49d69f5d92546399e6` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant9174949dee49c14a8ad8428546fe722219f4d41233ddd39b0fff758542b55b8c.lean/declarations/instance--eb9531394f21626c94be94e8.md) | 206 | `declaration-track:eb9531394f21626c94be94e8d7c13e8a8ccdb9f9e2699fbd06398d74d9c8bdd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
