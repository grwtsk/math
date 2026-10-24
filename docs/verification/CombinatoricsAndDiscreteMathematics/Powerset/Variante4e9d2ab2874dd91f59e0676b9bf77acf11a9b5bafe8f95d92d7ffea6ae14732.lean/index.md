# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1221b9d78c388e6ecc2cb90926143530985fe52c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1221b9d78c388e6ecc2cb90926143530985fe52c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/declarations/prod-powerset-insert--3b6b06a1f7989f956a738ddb.md) | 28 | `result-track:3b6b06a1f7989f956a738ddbd4887aba3e970c7fbdc98fbfe96aa1beadf14bb1` |
| 2 | `lemma` | [prod_powerset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/declarations/prod-powerset-cons--32c63847f3ef29acf6d75c5e.md) | 39 | `result-track:32c63847f3ef29acf6d75c5efacc1fb6a9c84ec7a86bbd7b0b38e1f25f32a2a5` |
| 3 | `lemma` | [prod_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/declarations/prod-powerset--ad38b774e3e2db43dfadfc97.md) | 50 | `result-track:ad38b774e3e2db43dfadfc97463e23093c16b0f12b375da468e251e9b4ddea70` |
| 4 | `lemma` | [prod_powersetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732.lean/declarations/prod-powersetcard--5cefa07482603b5a6d06e67c.md) | 57 | `result-track:5cefa07482603b5a6d06e67c8b5f9bd458cd7684a2d970555384825c4bf1271a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
