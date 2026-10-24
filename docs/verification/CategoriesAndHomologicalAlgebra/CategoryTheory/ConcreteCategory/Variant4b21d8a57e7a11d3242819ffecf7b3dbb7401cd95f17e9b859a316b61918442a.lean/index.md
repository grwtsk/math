# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416724a65e891a4aaf2f7ff6129da87e5b6f42bd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416724a65e891a4aaf2f7ff6129da87e5b6f42bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ConcreteCategory` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ShortComplex.zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/shortcomplex-zero-apply--0eb039602e65d777ca6b6be3.md) | 32 | `result-track:0eb039602e65d777ca6b6be34205f0368da7d75529fb6c09877844ef4e060fab` |
| 2 | `lemma` | [Preadditive.mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/preadditive-mono-iff-injective--1f7babe99485d140b51496e4.md) | 47 | `result-track:1f7babe99485d140b51496e420bacc2cc983fc4e9376d63c1dec6416d65e2f91` |
| 3 | `lemma` | [Preadditive.mono_iff_injective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/preadditive-mono-iff-injective--8fcbb15e92b4dfa354947717.md) | 55 | `result-track:8fcbb15e92b4dfa354947717737f20d653741654d484ad206b01409e802d69ae` |
| 4 | `lemma` | [Preadditive.epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/preadditive-epi-iff-surjective--ff74b04ff89d6a6aa764aa40.md) | 62 | `result-track:ff74b04ff89d6a6aa764aa40c599b05328f49bff231d2f524cf544455660fec0` |
| 5 | `lemma` | [Preadditive.epi_iff_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/preadditive-epi-iff-surjective--71e979dd41d11613051c688d.md) | 70 | `result-track:71e979dd41d11613051c688da4f3c372ebdf753cf2978792fbc0eef82368dd30` |
| 6 | `lemma` | [exact_iff_exact_map_forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/exact-iff-exact-map-forget--3fbefc723f3cbb3dcb069c8d.md) | 81 | `result-track:3fbefc723f3cbb3dcb069c8d10c96318d3db0af8effaa3a437df6d3cedbab28d` |
| 7 | `lemma` | [exact_iff_of_hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/exact-iff-of-hasforget--569c18a260c8cd7b6097da03.md) | 85 | `result-track:569c18a260c8cd7b6097da033ac6a4ded4ba8e7708327fb32af51fcba23005fc` |
| 8 | `lemma` | [ShortExact.injective_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/shortexact-injective-f--ade985658cdde409cb93ce6f.md) | 93 | `result-track:ade985658cdde409cb93ce6f760823ba9bd1bab9e68c77aec118158926d008b0` |
| 9 | `lemma` | [ShortExact.surjective_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/shortexact-surjective-g--5c794cf710aa451d645aef38.md) | 98 | `result-track:5c794cf710aa451d645aef38eb507d3be81385c2bf2bf34ad357fe5b159e9084` |
| 10 | `def` | [cyclesMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/cyclesmk--d0315e628ead1948ae6200d5.md) | 106 | `declaration-track:d0315e628ead1948ae6200d5c3659fffe2e86475fe63458ebdc8c6a9d04c382b` |
| 11 | `lemma` | [i_cyclesMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/i-cyclesmk--123833f7944b8a476435f0d0.md) | 112 | `result-track:123833f7944b8a476435f0d05fa23dbdbf56347f4cc0f835bf083649d8f7554a` |
| 12 | `lemma` | [δ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/apply--6ba2d283cbc9555bcf1b6191.md) | 142 | `result-track:6ba2d283cbc9555bcf1b61914d575c72188b308027beee27027b9a95af8907db` |
| 13 | `lemma` | [δ_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant4b21d8a57e7a11d3242819ffecf7b3dbb7401cd95f17e9b859a316b61918442a.lean/declarations/apply--37c44c3f83d87fee2bb65a9f.md) | 164 | `result-track:37c44c3f83d87fee2bb65a9fb1b17d810228c225efa4f17197c6e86395ff2a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
