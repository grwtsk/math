# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f8936642786870f29430de0be847d1c32798b5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f8936642786870f29430de0be847d1c32798b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.orderBot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/declarations/subtype-orderbot--12df865d04bd1d42f8af2b42.md) | 32 | `declaration-track:12df865d04bd1d42f8af2b4265d96829cec14fc5a93058c3b4584cabaf601c8f` |
| 2 | `instance` | [Subtype.semilatticeSup](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/declarations/subtype-semilatticesup--60e1e96354ebc1995bdf959b.md) | 36 | `declaration-track:60e1e96354ebc1995bdf959b3629b6997b8659c9bf5e82f9b6437c91fd1cb4fc` |
| 3 | `theorem` | [Subtype.coe_bot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/declarations/subtype-coe-bot--662994045ad4a5c87b2495ea.md) | 39 | `result-track:662994045ad4a5c87b2495eadf21ccdbbf0c2e607a28d4c4558b4dac822bc9d3` |
| 4 | `theorem` | [set_eq_univ](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/declarations/set-eq-univ--edc3491aeb7b0b988a64470c.md) | 43 | `result-track:edc3491aeb7b0b988a64470c0be7f853fc46e7a5936e89fdcaeb7eab486c089f` |
| 5 | `lemma` | [exists_not_and_succ_of_not_zero_of_exists](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant21b6bbcc3775f527d128e9b9eefff7bea28ebee4e7f4c70cfa97178d55211284.lean/declarations/exists-not-and-succ-of-not-zero-of-exists--801e0adbe2401c90f9997199.md) | 46 | `result-track:801e0adbe2401c90f9997199a7197f4f61ac21a4e1aaef0eeea1598eae861263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
