# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e10e3a5e232443145c2da56b1d8ea97e87c0ae",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e10e3a5e232443145c2da56b1d8ea97e87c0ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.BooleanRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BoolAlg` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoolRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/boolring--922a5edd608eb4be112b9e96.md) | 34 | `declaration-track:922a5edd608eb4be112b9e96e897aa91ff1669a7462ad8953ba43e0272d65525` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--63eb9e120842dccf5d1a58b6.md) | 44 | `declaration-track:63eb9e120842dccf5d1a58b6a591ee9574a0fca46abd02269b912b4808feee6c` |
| 3 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/of--bbbfa2a13bbd9426e9bf806e.md) | 52 | `declaration-track:bbbfa2a13bbd9426e9bf806ec1ffa29dc81ef240eb994e6ccfd78511fd938ff9` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/coe-of--3a52af6c09d5247a82645ceb.md) | 55 | `result-track:3a52af6c09d5247a82645cebedb2941f9851d8ff8109b2c42fd591a14b90d364` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--b68afbc4dadbdec55e0e1015.md) | 58 | `declaration-track:b68afbc4dadbdec55e0e1015cbfb762bdeac87f64057d39c472aeeaf5ec07f08` |
| 6 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/hom--a3e262345acf268f9514de53.md) | 64 | `declaration-track:a3e262345acf268f9514de53bdd7acfccb276e50e60b18408cf738fb7c43ead7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--bf6d01904a636faadaccaa69.md) | 69 | `declaration-track:bf6d01904a636faadaccaa69571e955158e07ac27ac60dd906dbc078ae1858df` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--a87bddaef1cfeea4bb94f2f1.md) | 74 | `declaration-track:a87bddaef1cfeea4bb94f2f162728a01bd684bdb00e8825df561d2353a39d5d3` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/hom-hom--3ec6ffb38ee4a5e5e29603ec.md) | 79 | `declaration-track:3ec6ffb38ee4a5e5e29603ecbd2e8d370903a323cae1900cd47474de05e97952` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/ofhom--bedc34bba1951e03cf8d2b36.md) | 83 | `declaration-track:bedc34bba1951e03cf8d2b36c8d513e7a8cbcb62703bbaff6a1314557b4702ef` |
| 11 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/hom-ext--45e37a9f5ad9db873f50833b.md) | 87 | `result-track:45e37a9f5ad9db873f50833bef42bd479a27864fba111cc50f085ac9c8dfbe7a` |
| 12 | `instance` | [hasForgetToCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/hasforgettocommring--7a4c8c0502bc8ee2e9d7be9f.md) | 90 | `declaration-track:7a4c8c0502bc8ee2e9d7be9f0be9ddaec91bd21b7f602e274a12ec3a69b07ce6` |
| 13 | `def` | [Iso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/iso-mk--d404cbe82946d149b4253973.md) | 97 | `declaration-track:d404cbe82946d149b42539737f61296bff1a3c8510dc621ad7dd06afa03a5057` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--3e81747b51a38ed73d1136fc.md) | 108 | `declaration-track:3e81747b51a38ed73d1136fcd033dc5b6b5ff58367d9601eabf9cef5c30b6e99` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/instance--26e668727949094aa3e1238b.md) | 113 | `declaration-track:26e668727949094aa3e1238b880cac67653a225b8c50f83f8915dd3552704bde` |
| 16 | `instance` | [BoolRing.hasForgetToBoolAlg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/boolring-hasforgettoboolalg--23cc7fa6b0a408d518ec9b9b.md) | 118 | `declaration-track:23cc7fa6b0a408d518ec9b9b1c0b2f8b5bbbab6eb422135f1bcc55f6a899566b` |
| 17 | `instance` | [BoolAlg.hasForgetToBoolRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/boolalg-hasforgettoboolring--ed4a45399ef505f8e0bdd217.md) | 123 | `declaration-track:ed4a45399ef505f8e0bdd21784b472e41261b2d7bb9207b9ed441432e7cef0ea` |
| 18 | `def` | [boolRingCatEquivBoolAlg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560.lean/declarations/boolringcatequivboolalg--7bdb1105019b8d1341fd3c12.md) | 129 | `declaration-track:7bdb1105019b8d1341fd3c128c79c3e934724f67b28482eb78aaff1266db3a12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
