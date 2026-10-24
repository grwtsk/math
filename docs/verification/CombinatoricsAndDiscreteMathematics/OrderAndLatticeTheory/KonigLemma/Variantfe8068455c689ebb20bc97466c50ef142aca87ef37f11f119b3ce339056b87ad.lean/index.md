# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KonigLemma.Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ffa021b1d0fbea1799fbff6de49f57fcb9567cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ffa021b1d0fbea1799fbff6de49f57fcb9567cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Grade` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_seq_covby_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/declarations/exists-seq-covby-of-forall-covby-finite--501860b51a9005e6d4dd1c40.md) | 69 | `result-track:501860b51a9005e6d4dd1c40fc7c659cc7517c4523f8afb8499b08eef7231e1c` |
| 2 | `theorem` | [exists_orderEmbedding_covby_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/declarations/exists-orderembedding-covby-of-forall-covby-finite--44b9055548d9d3dc08e3dc81.md) | 77 | `result-track:44b9055548d9d3dc08e3dc812f2540c6a9cb4318fbbba1a5fdfebb39b33a9053` |
| 3 | `theorem` | [exists_orderEmbedding_covby_of_forall_covby_finite_of_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/declarations/exists-orderembedding-covby-of-forall-covby-finite-of-bot--fb4fc3d09509267f23f63b68.md) | 83 | `result-track:fb4fc3d09509267f23f63b6854b39b2929e5fe507de6a7db663ebede030d1525` |
| 4 | `theorem` | [GradeMinOrder.exists_nat_orderEmbedding_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/declarations/grademinorder-exists-nat-orderembedding-of-forall-covby-finite--e194ffe52d50cc2876f37525.md) | 87 | `result-track:e194ffe52d50cc2876f37525a34c6d2f0759cdc48f49804fc9edf4b9447bf5b6` |
| 5 | `theorem` | [exists_seq_forall_proj_of_forall_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variantfe8068455c689ebb20bc97466c50ef142aca87ef37f11f119b3ce339056b87ad.lean/declarations/exists-seq-forall-proj-of-forall-finite--31d2f7d261cd4ba40c578650.md) | 113 | `result-track:31d2f7d261cd4ba40c5786505633b0cc2781a4c8230c31d1f8c5807b639dbe0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
