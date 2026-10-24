# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KonigLemma.Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57bd012df9c931c2dfe76f62842bf06b078f016a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57bd012df9c931c2dfe76f62842bf06b078f016a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Grade` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_seq_covby_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/declarations/exists-seq-covby-of-forall-covby-finite--1efc3131ff16681dc83871da.md) | 61 | `result-track:1efc3131ff16681dc83871daa6ddf3f76adb92eaa92cd37ce7bc2c14732aa41b` |
| 2 | `theorem` | [exists_orderEmbedding_covby_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/declarations/exists-orderembedding-covby-of-forall-covby-finite--2bdc49b28417c969dcbd08f6.md) | 69 | `result-track:2bdc49b28417c969dcbd08f65260dc604f56c2d16a6c33223b0023b14428ef1c` |
| 3 | `theorem` | [exists_orderEmbedding_covby_of_forall_covby_finite_of_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/declarations/exists-orderembedding-covby-of-forall-covby-finite-of-bot--e6c82eb706ade7bece323688.md) | 75 | `result-track:e6c82eb706ade7bece323688fea8dcc604b3ad0c8d0acca2467e0621ab00182a` |
| 4 | `theorem` | [GradeMinOrder.exists_nat_orderEmbedding_of_forall_covby_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/declarations/grademinorder-exists-nat-orderembedding-of-forall-covby-finite--a97815fa7c81d02ad2a7dec9.md) | 79 | `result-track:a97815fa7c81d02ad2a7dec9ad913dc4c0b07274bcc53b4e03e2efcb1f24be76` |
| 5 | `theorem` | [exists_seq_forall_proj_of_forall_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/KonigLemma/Variant7e6db265acf81a82d930eef87c5b4c826edf4825090fba99d43c4c246e2dd522.lean/declarations/exists-seq-forall-proj-of-forall-finite--a9b55d92b4bee15bac828166.md) | 105 | `result-track:a9b55d92b4bee15bac828166bacf5ef4678a9c592685138dfc74205780fe46bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
