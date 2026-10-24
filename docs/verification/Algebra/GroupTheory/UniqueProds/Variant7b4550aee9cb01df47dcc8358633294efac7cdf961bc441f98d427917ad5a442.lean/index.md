# Verification target: GRWTSK.Algebra.GroupTheory.UniqueProds.Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "084d8a90a9c3f8cb5c9cb4849ff1804cef7ada8f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `084d8a90a9c3f8cb5c9cb4849ff1804cef7ada8f`.

Source path: `GRWTSK/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.UniqueProds.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FreeMonoid.instTwoUniqueProds](../../../../../mathematics/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/declarations/freemonoid-insttwouniqueprods--cd19a77f1d96c03ce94247cc.md) | 27 | `declaration-track:cd19a77f1d96c03ce94247ccc6c049cc9f41a14678b9035d9e51de1e56a8b14c` |
| 2 | `instance` | [FreeAddMonoid.instTwoUniqueSums](../../../../../mathematics/Algebra/GroupTheory/UniqueProds/Variant7b4550aee9cb01df47dcc8358633294efac7cdf961bc441f98d427917ad5a442.lean/declarations/freeaddmonoid-insttwouniquesums--21e9b6e5c4a9d42ca1f6b3ab.md) | 32 | `declaration-track:21e9b6e5c4a9d42ca1f6b3ab43a6d4ad2430822e201b8aedf03e69d372e5ce2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
