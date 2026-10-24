# Verification target: GRWTSK.Algebra.GroupTheory.Option.Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84ce16e203f10f935e5c00f86da225ad0ebf5bd1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84ce16e203f10f935e5c00f86da225ad0ebf5bd1`.

Source path: `GRWTSK/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instance--b4d1a32bfd11547a11cacb58.md) | 32 | `declaration-track:b4d1a32bfd11547a11cacb58ffd82c5477b729dc74baa5a9c683f5f2955b4ab2` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/smul-def--85af0fe720b0bb89d1fed966.md) | 36 | `result-track:85af0fe720b0bb89d1fed966de6b326c9e846c769f04b5fcad873384d24b9e67` |
| 3 | `theorem` | [smul_none](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/smul-none--0e5e2da4e7ce917d89e88870.md) | 40 | `result-track:0e5e2da4e7ce917d89e88870d5d183b59ecbe094f00fcd04b5c56ee3cdc0c8c3` |
| 4 | `theorem` | [smul_some](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/smul-some--98f6265bcca3b438ed63bd1a.md) | 44 | `result-track:98f6265bcca3b438ed63bd1a51d0f8f6c3bfc35b6f99c568c63be56ed8eb6780` |
| 5 | `instance` | [instIsScalarTowerOfSMul](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instisscalartowerofsmul--8df820a04850bb38d2baf4fb.md) | 48 | `declaration-track:8df820a04850bb38d2baf4fb53fff98bc962249b68d5d54442cf2d86ab4685be` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instance--087993e4cf80ccb4dd4de119.md) | 54 | `declaration-track:087993e4cf80ccb4dd4de119ffd81e124f1c25dd7970ff0e9d7d86ea1725c0ae` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instance--40696f35d497a60a5c71cb9a.md) | 58 | `declaration-track:40696f35d497a60a5c71cb9adccb0bcceb0356a6b45f6b646845f46d11b92ea4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instance--899d70b0e6ceadb110558962.md) | 64 | `declaration-track:899d70b0e6ceadb110558962bc96ffc8ab262a1153939d3f3ee63d1df5513070` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Option/Variant88f0dc6d6b86d96b5b073665d34557a12dfa9d98946d8bd9d928ebf376cbd87c.lean/declarations/instance--7c9cd1f6e8aeb97f96a2c32d.md) | 69 | `declaration-track:7c9cd1f6e8aeb97f96a2c32de972924073e0d6da15a86b85eb2e7c2e2f48d25e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
