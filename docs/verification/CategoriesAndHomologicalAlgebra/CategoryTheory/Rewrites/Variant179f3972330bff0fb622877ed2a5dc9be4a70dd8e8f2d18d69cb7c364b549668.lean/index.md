# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Rewrites.Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07e3bf41d9cfdb28d6d841ede5cdd33d3514c71a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07e3bf41d9cfdb28d6d841ede5cdd33d3514c71a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Rewrites` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--a8b3b76f86b5d12a97dc4204.md) | 25 | `declaration-track:a8b3b76f86b5d12a97dc42047cd35809ee6cef056d57a141cf59faa70cecba08` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--1d865db6b8cd9c60954f06f3.md) | 35 | `declaration-track:1d865db6b8cd9c60954f06f36505e3fc0c98bed19336b4f9c66b2a54d10bb77a` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--b0732acea6bd978e1d78ca41.md) | 43 | `declaration-track:b0732acea6bd978e1d78ca41fea7957e5d6c702d0cded6acc4bd1953e1b9c001` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--87cb5c8a9123008b095e5d86.md) | 46 | `declaration-track:87cb5c8a9123008b095e5d868fe8defd78fc1272df32100381367401d9690eb8` |
| 5 | `lemma` | [prime_of_prime](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/prime-of-prime--d4d15b047ae8710ea93c12bb.md) | 78 | `result-track:d4d15b047ae8710ea93c12bbe31a463c2aaa632608a7513955b4144a5b6b695f` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--bdf0b63699ba53301f9607e9.md) | 81 | `declaration-track:bdf0b63699ba53301f9607e9af822c1a3b57236ab6c1803245339cd432b65dd6` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--d5785a26169444439cde54d2.md) | 85 | `declaration-track:d5785a26169444439cde54d287b1dec3670b0484315cdee0e8591b7049598f78` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--168787082345d47763d0fab6.md) | 90 | `declaration-track:168787082345d47763d0fab6ff524cc9bef3b9d65e8838f65570a11a871227d5` |
| 9 | `axiom` | [K](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/k--fd6edc4a6ffc351b99edb856.md) | 95 | `declaration-track:fd6edc4a6ffc351b99edb856121da0ab19a61584ce9e33398800f59727158d78` |
| 10 | `axiom` | [K.ring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/k-ring--a85e97263a0add78e7dfa17f.md) | 96 | `declaration-track:a85e97263a0add78e7dfa17f3de23cc5f3a632f35a103db81b025994c96fc8d7` |
| 11 | `def` | [foo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/foo--3a8888996091567c86e61a8e.md) | 98 | `declaration-track:3a8888996091567c86e61a8e2de8933ee6c27e0a88da817a79bc41249b5079e7` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--c4f2d93ac8bcbdc48da5f902.md) | 100 | `declaration-track:c4f2d93ac8bcbdc48da5f902e2cbca3459740d92b791c0e1e3c14360f8754794` |
| 13 | `lemma` | [six_eq_seven](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/six-eq-seven--50782de4fe7553776466e5aa.md) | 104 | `result-track:50782de4fe7553776466e5aac1e8b5b938f3e422234bbdfc4f17b6067accbf27` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--9ee26126b158edbe7b13f1bd.md) | 118 | `declaration-track:9ee26126b158edbe7b13f1bd12a0fc4643945d5bc9e2431277a2129ca78ecbdc` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--9feb5c09ae5c681373ec584d.md) | 123 | `declaration-track:9feb5c09ae5c681373ec584df3d62d0341bcccff43d991ab346b0ab9765aeb21` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--05d816f9dbd48b2c1b13e4e6.md) | 134 | `declaration-track:05d816f9dbd48b2c1b13e4e63a0aa503c6e9d9774a4966baced32884790973da` |
| 17 | `axiom` | [α](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/anonymous--2f6b996c75e7a33af1baec09.md) | 137 | `declaration-track:2f6b996c75e7a33af1baec09fa37909edd8a6f0c016409310a60814a622401c6` |
| 18 | `axiom` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/f--cf3188cc9f1f7aee6ff41c1a.md) | 138 | `declaration-track:cf3188cc9f1f7aee6ff41c1a31bb33f43b8ead85bcf54507a6508746c7699858` |
| 19 | `axiom` | [z](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/z--72622927935387334abe9575.md) | 139 | `declaration-track:72622927935387334abe95759a724292c9fbe304639d990b697900f21effdf01` |
| 20 | `axiom` | [f_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/f-eq--a7a94b65da60b17616bfc5d9.md) | 140 | `declaration-track:a7a94b65da60b17616bfc5d9cabb6763a34220b299d706933154128196df57cd` |
| 21 | `lemma` | [test](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/test--86baf54875c1b02404cf4656.md) | 150 | `result-track:86baf54875c1b02404cf4656f400cb472af035a5c92189876897c68a5a7a6e72` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--27d1115863323a96ff98046d.md) | 160 | `declaration-track:27d1115863323a96ff98046d89127d01fa9f1f798b856f9edb8774eb72a6171c` |
| 23 | `def` | [zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/zero--7021c6e0e07b8e844befa73b.md) | 163 | `declaration-track:7021c6e0e07b8e844befa73b9112df3df7932615142f71325af5bad348be7f84` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668.lean/declarations/example--e35b3640265f517e47921764.md) | 167 | `declaration-track:e35b3640265f517e479217640ad652fdedff10d53247f78f78ad0d5ff3144173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
