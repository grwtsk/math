# Verification target: GRWTSK.Algebra.UniversalAlgebra.Order.Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efcdd24ca24bc3b2a1d0a2efa0e3333aff322dc5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efcdd24ca24bc3b2a1d0a2efa0e3333aff322dc5`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNRat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean/declarations/instance--6e573acece5a75c959f74223.md) | 15 | `declaration-track:6e573acece5a75c959f74223e14f4c9151f8b1ffd2f6cc6de859c961f6459aad` |
| 2 | `instance` | [NNRat.instOrderedSub](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean/declarations/nnrat-instorderedsub--1657df3bbc67b36c650fe362.md) | 18 | `declaration-track:1657df3bbc67b36c650fe362fa578828e1ed37a07828dd94f411dad6a219c749` |
| 3 | `instance` | [NNRat.instCanonicallyOrderedAdd](../../../../../mathematics/Algebra/UniversalAlgebra/Order/Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd.lean/declarations/nnrat-instcanonicallyorderedadd--538801bc9304ffe2cf85694b.md) | 19 | `declaration-track:538801bc9304ffe2cf85694b88a37d24d7a676b799881aee48d11fb28d789678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
