# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shrink.Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7707625ec1116be8cfe44b15157fd2420500c24b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7707625ec1116be8cfe44b15157fd2420500c24b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Small` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Shrink.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean/declarations/shrink-instfintype--3946dc3c63531baed08e9e73.md) | 24 | `declaration-track:3946dc3c63531baed08e9e7390139665989a34cd04ac0e8c932642be8ad67179` |
| 2 | `instance` | [Shrink.instFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean/declarations/shrink-instfinite--f2c9f5013d5ac1b35c885966.md) | 26 | `declaration-track:f2c9f5013d5ac1b35c8859666785744595137a9d9045b94c97ec7f4d21a8288d` |
| 3 | `lemma` | [Fintype.card_shrink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shrink/Variant1c85e0ff93285c5c2dfd440b76168a8c7fa84f6fc9b552a4439c61e106a221eb.lean/declarations/fintype-card-shrink--ab304d0af7991f1d752cf3db.md) | 29 | `result-track:ab304d0af7991f1d752cf3db601a999006cba91a39f6d4c0ce334ae7df00740f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
