# Verification target: GRWTSK.Algebra.LinearAlgebra.Int.Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2734ba80c8963f87b5467742cf84f30daee9e906",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2734ba80c8963f87b5467742cf84f30daee9e906`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toAddSubgroup_index_eq_pow_mul_prod](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/toaddsubgroup-index-eq-pow-mul-prod--9b82f1bffa06b31a3a22ba9a.md) | 36 | `result-track:9b82f1bffa06b31a3a22ba9a8fec754908892c1b47360f66546e2b02691f8153` |
| 2 | `lemma` | [toAddSubgroup_index_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/toaddsubgroup-index-eq-ite--92134428ea7a9d6ca047fb2b.md) | 155 | `result-track:92134428ea7a9d6ca047fb2bb8feba68cb307331881820e15ade66be4ad265e6` |
| 3 | `lemma` | [toAddSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/toaddsubgroup-index-ne-zero-iff--b57ccf914be345a382ced5b8.md) | 168 | `result-track:b57ccf914be345a382ced5b8ff29c775d151eabe6ce0a0f23aff0444cc14d3db` |
| 4 | `lemma` | [submodule_toAddSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/submodule-toaddsubgroup-index-ne-zero-iff--db9d475f22764cf154ed028b.md) | 188 | `result-track:db9d475f22764cf154ed028b9275b8b27784083869e9c697b7fc9f9c8bd045b2` |
| 5 | `lemma` | [addSubgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/addsubgroup-index-ne-zero-iff--7664e42deee9f523b09c063d.md) | 200 | `result-track:7664e42deee9f523b09c063dc48cce4099aef695046b70005705bbaafe4a8fc1` |
| 6 | `lemma` | [subgroup_index_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/declarations/subgroup-index-ne-zero-iff--f3a961b2876e1c9eee2817c3.md) | 205 | `result-track:f3a961b2876e1c9eee2817c3d1ce7b224563524f79719253063171f6e3157fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
