# Verification target: GRWTSK.Algebra.GroupTheory.Set.Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc5e5705d3d677053f065e9cd843a532fde62e3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc5e5705d3d677053f065e9cd843a532fde62e3`.

Source path: `GRWTSK/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_neg](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/declarations/smul-set-neg--1a350c8e12b090c0b5693300.md) | 42 | `result-track:1a350c8e12b090c0b5693300ad1c1e47e0fc1192d70e172560b0ef3ff2c80acb` |
| 2 | `lemma` | [smul_neg](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/declarations/smul-neg--f76c320ffc29109cecd5b593.md) | 46 | `result-track:f76c320ffc29109cecd5b5938debc88507428038906382c5d63c0d7cc12f01aa` |
| 3 | `lemma` | [add_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/declarations/add-smul-subset--9df4cc0a90bb00adc5e7c280.md) | 55 | `result-track:9df4cc0a90bb00adc5e7c2801a3f1b17f069064fe21ddb47a5951312d01808f7` |
| 4 | `lemma` | [neg_smul_set](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/declarations/neg-smul-set--72326827e03233aa049de146.md) | 65 | `result-track:72326827e03233aa049de146d683b579cfed25fe59d532a412e8bbd3098b5612` |
| 5 | `lemma` | [neg_smul](../../../../../mathematics/Algebra/GroupTheory/Set/Variantcb84ba893c61a0303cb074098d8dc6800a0f309ce23fc24e7aa489c6503316f2.lean/declarations/neg-smul--f8568b7fe9b32f8ce69608b5.md) | 69 | `result-track:f8568b7fe9b32f8ce69608b50d0db7315284eafd4eb88b90642a02442dfb873d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
