# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c182248450517067ba3534f5f089f8ca5b48d833",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c182248450517067ba3534f5f089f8ca5b48d833`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.LocallySurjective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Equivalence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Module` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-locallysurjective-on-comphaus--bce407fb46cf42bad169f48c.md) | 48 | `result-track:bce407fb46cf42bad169f48c8a491872d1d56412d938a460bbc08fe2763d8483` |
| 2 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-surjective-on-stonean--1d7e5578fb5e324b4bb12498.md) | 64 | `result-track:1d7e5578fb5e324b4bb1249884586c09781d15eaee235fb4d62f7bafe888d542` |
| 3 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-locallysurjective-on-comphaus--546baaf078930bf850dec170.md) | 78 | `result-track:546baaf078930bf850dec1706d0527dd5229d3b8a87d925f294814efaf9f669a` |
| 4 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-surjective-on-stonean--4e21d5c93b3a0cc90de0cabb.md) | 85 | `result-track:4e21d5c93b3a0cc90de0cabb386bda2e6becf46f443d20e2f545e9f96cfb6bb2` |
| 5 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-locallysurjective-on-comphaus--209afbec6ad1f30dcffb597d.md) | 96 | `result-track:209afbec6ad1f30dcffb597d15c76bb9879bf9e633b0e89da97dff56d4a2c38c` |
| 6 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variantd7bedfdafae2e31de38a36d1ad940d0c866aa1995a9e0353399a67fc0cf71964.lean/declarations/epi-iff-surjective-on-stonean--06f68b7824f7b42574dfd1b5.md) | 103 | `result-track:06f68b7824f7b42574dfd1b5d271dcfb426db526b4eb00cde00ee9938366b757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
