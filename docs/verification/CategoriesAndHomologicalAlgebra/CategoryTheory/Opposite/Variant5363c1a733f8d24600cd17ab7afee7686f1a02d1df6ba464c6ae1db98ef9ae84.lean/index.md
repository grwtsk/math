# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d431b3cd4625b1be91ee797c9cd29c0326409f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d431b3cd4625b1be91ee797c9cd29c0326409f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GuitartExact.VerticalComposition` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/functor--661d019b1e2e5f11eab45761.md) | 46 | `declaration-track:661d019b1e2e5f11eab4576182d307bb9df056e2d8c1888e14a82ce49264c937` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/inverse--0fb0eaef86bf7fee0452255a.md) | 61 | `declaration-track:0fb0eaef86bf7fee0452255a737f9e0fde19a8af232568d6999617fe79eb9d77` |
| 3 | `def` | [structuredArrowRightwardsOpEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/structuredarrowrightwardsopequivalence--4f1d9a10699092b7f78afd5c.md) | 82 | `declaration-track:4f1d9a10699092b7f78afd5c0d46fcd24933982cae4645409bec12755683c342` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/instance--b832eb493752f9e0d6f306d6.md) | 92 | `declaration-track:b832eb493752f9e0d6f306d6566932d2c3e9a4e3717458c19a55a85b0f196233` |
| 5 | `lemma` | [guitartExact_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/guitartexact-op-iff--bde0382be9f91aba21fb430e.md) | 99 | `result-track:bde0382be9f91aba21fb430e8122d84990edee7bbc54f2b4045100fcfb7e9aca` |
| 6 | `instance` | [guitartExact_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant5363c1a733f8d24600cd17ab7afee7686f1a02d1df6ba464c6ae1db98ef9ae84.lean/declarations/guitartexact-id--c61237658134fb96c0205603.md) | 110 | `declaration-track:c61237658134fb96c02056034ac2d48f3025c5f9cbdba35811466cdf1b8e2782` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
