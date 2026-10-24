# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DescriptorClosure.Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89b4b9ba67ac1155e9e5172a3435bd06eb3f34b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89b4b9ba67ac1155e9e5172a3435bd06eb3f34b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PointUniverse` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Discovery.OpenElement` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DescriptorRelationClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/declarations/descriptorrelationclosed--c1f1fd4d71e0c87a673703a2.md) | 16 | `declaration-track:c1f1fd4d71e0c87a673703a2e9edb01f7dc5a566f307250047b4fb5a6345f0c3` |
| 2 | `def` | [LeastDescriptorRelationClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/declarations/leastdescriptorrelationclosure--c1179c495e532514fcf40dc9.md) | 28 | `declaration-track:c1179c495e532514fcf40dc95d7610c5d68a620218102cb84ea626cdf4e3c4ce` |
| 3 | `def` | [IntrinsicDescriptorClosureStatement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/declarations/intrinsicdescriptorclosurestatement--543c299dfd251128da1f527d.md) | 39 | `declaration-track:543c299dfd251128da1f527dc305c0079668136e9f74186f1b669cef251a3f42` |
| 4 | `def` | [intrinsicDescriptorClosureOpenElement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DescriptorClosure/Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129.lean/declarations/intrinsicdescriptorclosureopenelement--c2a62425c773065da0ba48f9.md) | 50 | `declaration-track:c2a62425c773065da0ba48f9797f70e574b863d444a43b0c927df9e7efff2bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
