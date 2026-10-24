# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Energy.Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b0d3e5551b5340a08c9e3c3d072424677d2882e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b0d3e5551b5340a08c9e3c3d072424677d2882e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.NatInt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Density` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.BigOperators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/declarations/energy--c758557c88e9930bc8077ae8.md) | 43 | `declaration-track:c758557c88e9930bc8077ae83734f9c837d8f01faec40903af95c33ca2b207e0` |
| 2 | `theorem` | [energy_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/declarations/energy-nonneg--95818ab75a4b9d5f30bfbea9.md) | 46 | `result-track:95818ab75a4b9d5f30bfbea9642646843dc3cbb1d15996257886d972b0e35254` |
| 3 | `theorem` | [energy_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/declarations/energy-le-one--0b2a259e6bf36c17ca914073.md) | 49 | `result-track:0b2a259e6bf36c17ca914073c21533526c432d5a77c1cb12685dc71d36d60c57` |
| 4 | `theorem` | [coe_energy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Energy/Variant865f2e3a53f7c0f199b4ed2e8b860b856ef009978a6f2a8729a48820779e679a.lean/declarations/coe-energy--47c0df1ff64f7e39f16fd683.md) | 63 | `result-track:47c0df1ff64f7e39f16fd683b197f8a96468e9c039d378aba92d38759fc9b76b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
