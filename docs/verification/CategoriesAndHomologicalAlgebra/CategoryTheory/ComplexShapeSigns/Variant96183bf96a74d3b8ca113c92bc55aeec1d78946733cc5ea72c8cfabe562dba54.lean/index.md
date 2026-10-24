# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ComplexShapeSigns.Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c0500d11c49ffc429680f3c252124c2e3390785",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c0500d11c49ffc429680f3c252124c2e3390785`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GradedObject.Trifunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TotalComplexShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/totalcomplexshape--c5a68f04ecf41d4d5c005fa5.md) | 46 | `declaration-track:c5a68f04ecf41d4d5c005fa5464237b8cf9b0e3d390f91d7f9e5b22b6ef15ec1` |
| 2 | `abbrev` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--3085d8e798c6676be8ebb774.md) | 63 | `declaration-track:3085d8e798c6676be8ebb77496d173f7f184719e79cfc971200c89f91dd8e563` |
| 3 | `abbrev` | [ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--a78ca49842cece24da493583.md) | 66 | `declaration-track:a78ca49842cece24da49358360ce2739a9ddb2ab29301e2b9e43c2f69e0729ba` |
| 4 | `abbrev` | [ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--a3c1855a41fdca39d997c210.md) | 69 | `declaration-track:a3c1855a41fdca39d997c210908c5aae1e45d092de8d8abefd52f650030e4a4d` |
| 5 | `lemma` | [rel_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/rel--eadde10ac77be1e8716039b4.md) | 73 | `result-track:eadde10ac77be1e8716039b4320efb555b9b5b61a3ec04cc96f5fbf4089108ca` |
| 6 | `lemma` | [next_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/next--b40aab6a74cfe1e16ce217c6.md) | 77 | `result-track:b40aab6a74cfe1e16ce217c66eb0dc46b533ba0d00fc500ade6b5b322ea7274d` |
| 7 | `lemma` | [prev_π₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/prev--3c68e63432b032bd52fdeeba.md) | 81 | `result-track:3c68e63432b032bd52fdeeba10fe700c5fb65b4d1a89f3d49bbf79c84e426902` |
| 8 | `lemma` | [rel_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/rel--eea351934ed3e15a525ba2df.md) | 87 | `result-track:eea351934ed3e15a525ba2df1b38a77e342433d80f24383c17ce79d9820db9cc` |
| 9 | `lemma` | [next_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/next--553330d4a4b4b07798237171.md) | 91 | `result-track:553330d4a4b4b07798237171dcb7d67fe1d7acce38d2b710991b88036ece9824` |
| 10 | `lemma` | [prev_π₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/prev--36b3990f69ee46ce38e1086d.md) | 95 | `result-track:36b3990f69ee46ce38e1086ded6cfa4d4a70d4016c4492bc9450447eda89d379` |
| 11 | `lemma` | [ε₂_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--e4f7bb47dd38d930989c79fe.md) | 101 | `result-track:e4f7bb47dd38d930989c79fe4205a080431cb4e0993bba6119acd081926efb09` |
| 12 | `lemma` | [ε₁_ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--658a9cb4cf9ef234f78a0023.md) | 106 | `result-track:658a9cb4cf9ef234f78a0023e21a15a85d62fdfb1acf0fd7421b310f80b3e582` |
| 13 | `class` | [TensorSigns](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/tensorsigns--c48d1f753937f58a8f74fe44.md) | 123 | `declaration-track:c48d1f753937f58a8f74fe44d777b2d2fe0aa974403153c534e60101eb0cb798` |
| 14 | `abbrev` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--be90dd27b4807aa8bbfdb877.md) | 133 | `declaration-track:be90dd27b4807aa8bbfdb8772a434de2d2a0ccb97ec639f8a90f4cc1c0e8be47` |
| 15 | `lemma` | [rel_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/rel-add--e4b776b385f2fdf31ef98617.md) | 135 | `result-track:e4b776b385f2fdf31ef986176a0ebfb2eaf7dc6ce2e47e4ca37b19bf0d123669` |
| 16 | `lemma` | [add_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/add-rel--d9267266df96c45d2fe7a037.md) | 138 | `result-track:d9267266df96c45d2fe7a0370ed25577cb809b3ddcb8b668c03cb2db78c993b5` |
| 17 | `lemma` | [ε_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/zero--e62ccef80e7a68df448b4c76.md) | 142 | `result-track:e62ccef80e7a68df448b4c76a00ace0a4dec6b030f33a3d5c3bf466b4af83149` |
| 18 | `lemma` | [ε_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/succ--20726cbb4cd5a435db2d169e.md) | 145 | `result-track:20726cbb4cd5a435db2d169ef2dc3a721be353bb44d6538a6a24e97e93cdb8da` |
| 19 | `lemma` | [ε_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/add--340338f12b60cbaef679acaf.md) | 148 | `result-track:340338f12b60cbaef679acaf22e872c433de8b2804321635a8cc59112e219e41` |
| 20 | `lemma` | [next_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/next-add--97e65f39e8e0c63edaa48220.md) | 151 | `result-track:97e65f39e8e0c63edaa48220bc16c86eb9b82e4d2086f26c124d8c6e65be7b74` |
| 21 | `lemma` | [next_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/next-add--0b51be5082be4ecef9464e7b.md) | 155 | `result-track:0b51be5082be4ecef9464e7b5171b5d0678362c9a451d6f58757a893ce1303b6` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/instance--35379cd801cd7b48929e967e.md) | 160 | `declaration-track:35379cd801cd7b48929e967e9acf7ed8fee1356218c1d761c8fde4495cf385fa` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/instance--570e81e53aee94cbcdb060b5.md) | 170 | `declaration-track:570e81e53aee94cbcdb060b5650e95d9816fe8ab04072b7ea635cb2e48dea1c5` |
| 24 | `lemma` | [ε_down_ℕ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/down--2150830bfc00c8d864c420f1.md) | 180 | `result-track:2150830bfc00c8d864c420f1ff39e115364b467f51b47e80b6745b5352dd07fb` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/instance--3be0187008acff1ef2645c0e.md) | 182 | `declaration-track:3be0187008acff1ef2645c0eff055a022509cd8e66ac19bfced454e2c6e05bba` |
| 26 | `lemma` | [ε_up_ℤ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/up--5cad80b2e24dc3406baff64c.md) | 192 | `result-track:5cad80b2e24dc3406baff64c76a9a13f7fef78430e541646797c58614ebd9591` |
| 27 | `class` | [Associative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/associative--4827993a097f0aa0642aab67.md) | 209 | `declaration-track:4827993a097f0aa0642aab676baeab0ac04374dc5b5ce1b818ebb557bee8918b` |
| 28 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/assoc--32e36179d521447f4f6ef14d.md) | 224 | `result-track:32e36179d521447f4f6ef14d7607847d442e3dea1cd1e8ed0f2059a0b74fd671` |
| 29 | `lemma` | [associative_ε₁_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/associative-eq-mul--016c5201f3a3f36e9bb36a10.md) | 228 | `result-track:016c5201f3a3f36e9bb36a108263b5206be0eb2924029837ae1ab27a1c0a9004` |
| 30 | `lemma` | [associative_ε₂_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/associative--aceaeb5d6d65d3651a1ab123.md) | 233 | `result-track:aceaeb5d6d65d3651a1ab1239b3eca8762cbe52f38dcd390969d6eaf01e9a4b3` |
| 31 | `lemma` | [associative_ε₂_eq_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/associative-eq-mul--85177504b645ab77f13cbd6f.md) | 238 | `result-track:85177504b645ab77f13cbd6f139dd7ac8cc064e6880c774b9627a469d333be41` |
| 32 | `def` | [r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/r--a7f89e41b014844f7de76065.md) | 246 | `declaration-track:a7f89e41b014844f7de76065ca3d01da27d45ef9b5689ad3b5d76c6a533fed3a` |
| 33 | `def` | [ρ₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--ff753b1a60eb5d9ce6326f99.md) | 252 | `declaration-track:ff753b1a60eb5d9ce6326f99f246862b007c85767b24edf9b009f897c55ec7b1` |
| 34 | `def` | [ρ₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--6fc1cb59221e38323ed0e357.md) | 260 | `declaration-track:6fc1cb59221e38323ed0e3570c4f630cab84706e19876088e81c8876476e4265` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/instance--49d026649fe6a848ba69bc9c.md) | 268 | `declaration-track:49d026649fe6a848ba69bc9c871d76be3b741d66e512fca39af8ee64d4b8abbf` |
| 36 | `class` | [TotalComplexShapeSymmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/totalcomplexshapesymmetry--318fd21b04a77f8d0ae2bd93.md) | 281 | `declaration-track:318fd21b04a77f8d0ae2bd93914b1e80aa3fbc640d2cc9c8b425f924f92431ae` |
| 37 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--932913ba448e8b50d373eb80.md) | 296 | `declaration-track:932913ba448e8b50d373eb80f373d3f1949eb49a38f116bc2b4f0357882a5f11` |
| 38 | `lemma` | [π_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/symm--66ffa09979a7427c2b676aeb.md) | 298 | `result-track:66ffa09979a7427c2b676aeb8c51eacc511357e17841a4afd9b679ea0fd3a325` |
| 39 | `def` | [symmetryEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/symmetryequiv--11d5908d89a993442c539b5d.md) | 304 | `declaration-track:11d5908d89a993442c539b5d310b53bb4e5ae4c9ffaeb2d5b7c2a8b8d2fe26bb` |
| 40 | `lemma` | [σ_ε₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--7e9392ed53cbdfbadd4c0120.md) | 313 | `result-track:7e9392ed53cbdfbadd4c01201bcb2360ce63cac1d8555b4594938cb367f6a406` |
| 41 | `lemma` | [σ_ε₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/anonymous--3108b24acd56a733684b70d4.md) | 319 | `result-track:3108b24acd56a733684b70d48e831cb76deb964a7c42e9ad5018f869001cd6cc` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/instance--359ed13f6231c422d5532a88.md) | 324 | `declaration-track:359ed13f6231c422d5532a8848b11c9cb86b3d19d4f6c43a69190ce0d8d8c497` |
| 43 | `def` | [TotalComplexShapeSymmetry.symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/totalcomplexshapesymmetry-symmetry--daa1dede405507fee243bfa1.md) | 341 | `declaration-track:daa1dede405507fee243bfa1621219a55df26af96de142561195de33826bba70` |
| 44 | `class` | [TotalComplexShapeSymmetrySymmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/totalcomplexshapesymmetrysymmetry--e470498e74b200218174bffd.md) | 361 | `declaration-track:e470498e74b200218174bffdd780adba1e55d9d4065b158ff2070d135c0c2333` |
| 45 | `lemma` | [σ_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ComplexShapeSigns/Variant96183bf96a74d3b8ca113c92bc55aeec1d78946733cc5ea72c8cfabe562dba54.lean/declarations/symm--5419f7f0e93a03c052c6bd8c.md) | 372 | `result-track:5419f7f0e93a03c052c6bd8cccd65ba7e2c6b557ba6d5b5a3c0d4a8d3908075e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
