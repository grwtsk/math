# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmallTripling.Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9876d8627462a768583d15ef1cf403e611fe873",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9876d8627462a768583d15ef1cf403e611fe873`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.PluenneckeRuzsa` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inductive_claim_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/inductive-claim-mul--db31505f17539b2eef14af20.md) | 42 | `result-track:db31505f17539b2eef14af20aa1974f122e61a253aa1ac95cd81d3420d8d5cd1` |
| 2 | `lemma` | [small_neg_pos_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-neg-pos-pos-mul--3c269007b32361e3ed9a1f41.md) | 75 | `result-track:3c269007b32361e3ed9a1f41cd89e0600a72f9a4265bd7549c2ac504d0b57311` |
| 3 | `lemma` | [small_neg_neg_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-neg-neg-pos-mul--d4b78fedd5d9946327d72501.md) | 93 | `result-track:d4b78fedd5d9946327d725016cbe98ff1c885f4244f5c92dab9f472eb47f225d` |
| 4 | `lemma` | [small_pos_neg_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-pos-neg-neg-mul--a60eacb2439768897fed6a82.md) | 98 | `result-track:a60eacb2439768897fed6a829e1dde94739a584bd850f5ec4bcaaaf762e86c92` |
| 5 | `lemma` | [small_pos_pos_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-pos-pos-neg-mul--8dcd91e2c3c236ae79f61b01.md) | 102 | `result-track:8dcd91e2c3c236ae79f61b01c53072e1ba1bb4fb5b7a1e4d29148d47cb2c8405` |
| 6 | `lemma` | [small_pos_neg_pos_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-pos-neg-pos-mul--01037666d808e3805bf1a3ef.md) | 107 | `result-track:01037666d808e3805bf1a3ef13fda463439ef0da9a8f34f3cbe71a10b1a55af9` |
| 7 | `lemma` | [small_neg_pos_neg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-neg-pos-neg-mul--e6f75876bf1a2ed6e2466587.md) | 125 | `result-track:e6f75876bf1a2ed6e2466587bfe3d9b7ec55261401e9255f5cb4b8190a8f9f5b` |
| 8 | `lemma` | [small_alternating_pow_of_small_tripling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-alternating-pow-of-small-tripling--b37f3ec0dd330958d27da476.md) | 142 | `result-track:b37f3ec0dd330958d27da4763b620a5728d759493c989b7ff8ca2b47ccdf6961` |
| 9 | `lemma` | [small_pow_of_small_tripling](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/declarations/small-pow-of-small-tripling--89bacc5c4a1a82da44164a27.md) | 186 | `result-track:89bacc5c4a1a82da44164a27c2dbc5b5ad3c07e62e6fe8b95d5765aaae698aa7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
