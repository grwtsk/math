# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7ea12ad971d4f1757ba527311ea78aa10a4d2f7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7ea12ad971d4f1757ba527311ea78aa10a4d2f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/mvqpf--72d96dbf629dd4473aa96869.md) | 85 | `declaration-track:72d96dbf629dd4473aa9686982aa6ffb74c4ce35e1c817871555cd938c176332` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/id-map--4e7424bd2d8c57bb569ce367.md) | 104 | `result-track:4e7424bd2d8c57bb569ce36728351c5ee063469806eec2467bccb3c12c4fd79a` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/comp-map--faa40e1839c02a61c53f0846.md) | 112 | `result-track:faa40e1839c02a61c53f0846cd01982f20bf675e229cd64e974bb4a8b578fdee` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/instance--e9ea5b5f4c1e075f91037226.md) | 120 | `declaration-track:e9ea5b5f4c1e075f91037226c90c1ad8089d3d23992f437c4b17d9b6dbbd65fa` |
| 5 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/liftp-iff--d623360f34a28e250685c87b.md) | 126 | `result-track:d623360f34a28e250685c87b68ca0567f3fcffb1982fd59eafd5a8322ec6bdc9` |
| 6 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/liftr-iff--fdb6fc8c2ae17e6ff7368c5e.md) | 141 | `result-track:fdb6fc8c2ae17e6ff7368c5e146c6ba6b1978cbfbc1197562cd1f0498fe75aeb` |
| 7 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/mem-supp--d47dbbbe1f08dcb52c3dc4e0.md) | 164 | `result-track:d47dbbbe1f08dcb52c3dc4e0e8bdb0cb55741541720af36748c36adf377c4b10` |
| 8 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supp-eq--cba6671ab7c03db3c7ec65f4.md) | 180 | `result-track:cba6671ab7c03db3c7ec65f4c684e4c3e4896eb17b01de0c10214d880fb515fc` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/has-good-supp-iff--197c6473c872fd9721d0e6ad.md) | 184 | `result-track:197c6473c872fd9721d0e6ad594790a1971ecef7e8768a804b12ec42f7702cc0` |
| 10 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/isuniform--c9c67ec41740d8f3f3ece83a.md) | 212 | `declaration-track:c9c67ec41740d8f3f3ece83a2c64ebb8313470a83c081f175ae4c88ed1e0051d` |
| 11 | `def` | [LiftPPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/liftppreservation--bb76a71ae589a4d433a32d13.md) | 218 | `declaration-track:bb76a71ae589a4d433a32d13605b8be908a99efbbc8cd34ef3eade901976c270` |
| 12 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supppreservation--9b0ca6bccaa61ea197a6bc1c.md) | 223 | `declaration-track:9b0ca6bccaa61ea197a6bc1c25ab772c31e0577ae24020248165a87cee8afc39` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supp-eq-of-isuniform--df132eac580644f54b4709d0.md) | 227 | `result-track:df132eac580644f54b4709d02f01e79b1d1bb4e0016187342e3547b138556145` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/liftp-iff-of-isuniform--52e69ed855e3ac472d62272c.md) | 236 | `result-track:52e69ed855e3ac472d62272c6fc508d80bdf7a949ab20053f67d75ebb89be007` |
| 15 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supp-map--b8473539af09e41b252906ef.md) | 251 | `result-track:b8473539af09e41b252906ef2c194985a98f845f480126ad17a353f16c219a5e` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supppreservation-iff-isuniform--f53e5d5897814de6a518a0b3.md) | 258 | `result-track:f53e5d5897814de6a518a0b3b866c81d04ef9e6e22fb9a06a9f778403682d819` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/supppreservation-iff-liftppreservation--f4d8f3024867471f4e5e4ca5.md) | 267 | `result-track:f4d8f3024867471f4e5e4ca55290e72d1881e13d4fcfa17f9775862040ca295e` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a36a610de6b6b9dcab74414631af2f79a21d481bf68fa6bb9065f551ae40ba4.lean/declarations/liftppreservation-iff-uniform--11b1dde77b0bfd1f64844abf.md) | 282 | `result-track:11b1dde77b0bfd1f64844abf414035c2f1990e14583be4db78f460eec7d26430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
