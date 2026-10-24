# Verification target: GRWTSK.Algebra.GroupTheory.Set.Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f29e5b3e803e673cd010cc3e4df75208bcb5060a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f29e5b3e803e673cd010cc3e4df75208bcb5060a`.

Source path: `GRWTSK/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_neg](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/declarations/smul-set-neg--881508b117a973b112a6797a.md) | 34 | `result-track:881508b117a973b112a6797a9df5fbd3e503d1c02364da59945a035fb516c94d` |
| 2 | `lemma` | [smul_neg](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/declarations/smul-neg--71d3495af66c24692665c4fa.md) | 38 | `result-track:71d3495af66c24692665c4fae7ad89557fbbc15de3233386931a39f2a0392a0b` |
| 3 | `lemma` | [add_smul_subset](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/declarations/add-smul-subset--65ca68277ed0dcc472266258.md) | 47 | `result-track:65ca68277ed0dcc472266258add6bc3511102d8fdd28f5bc4c65a8130fbd5084` |
| 4 | `lemma` | [neg_smul_set](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/declarations/neg-smul-set--7ab97717082c9fe4e727cb80.md) | 57 | `result-track:7ab97717082c9fe4e727cb801a0f65b999cc8cac00c6db00f1e097cefbe13b29` |
| 5 | `lemma` | [neg_smul](../../../../../mathematics/Algebra/GroupTheory/Set/Variant8e647cfbc68b015315a6eb801ac45318db41dab75bf3ceb105a5e328d60ea7dc.lean/declarations/neg-smul--ca959a0ee99f381bc89a4ba1.md) | 61 | `result-track:ca959a0ee99f381bc89a4ba18d62305a5b046f1b63b7c599cbc0b4d977371e30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
