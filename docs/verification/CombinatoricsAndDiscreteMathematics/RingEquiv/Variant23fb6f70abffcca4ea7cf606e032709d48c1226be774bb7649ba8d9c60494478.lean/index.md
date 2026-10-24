# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RingEquiv.Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6a7c1922e0526c86df878c0d4ce62caeec4313",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6a7c1922e0526c86df878c0d4ce62caeec4313`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-list-prod--dd18ab0133bd250b2188dcb6.md) | 19 | `result-track:dd18ab0133bd250b2188dcb6477a60b30eb81acb939d8eee5c6ef5eb436b9f58` |
| 2 | `theorem` | [map_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-list-sum--2b047ab68a75bfc666a3b534.md) | 22 | `result-track:2b047ab68a75bfc666a3b534fa959426174e4af068c5b9322b879440f45a1766` |
| 3 | `theorem` | [unop_map_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/unop-map-list-prod--39d5d931ab268e6bf65a40a2.md) | 26 | `result-track:39d5d931ab268e6bf65a40a2845d8f15b438b3dfd6b977630fb5ebf33327f9b0` |
| 4 | `theorem` | [map_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-multiset-prod--94e2a7d39cdd1f58a638cc9c.md) | 30 | `result-track:94e2a7d39cdd1f58a638cc9ceff598d942a8ecc2ab101ae43c9975cf5e95a806` |
| 5 | `theorem` | [map_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-multiset-sum--1314362eeeb3f4d903d83a96.md) | 34 | `result-track:1314362eeeb3f4d903d83a96f65c6202a7c9b40f54eaa5bff16f7a963bae1b44` |
| 6 | `theorem` | [map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-prod--38d3c5519488cd5baf76d7f5.md) | 38 | `result-track:38d3c5519488cd5baf76d7f5cd5d9063b0270a6f572097ab94a0ec7eba1ed7b2` |
| 7 | `theorem` | [map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RingEquiv/Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478.lean/declarations/map-sum--61c2c5aa78ec1d223d38aaed.md) | 42 | `result-track:61c2c5aa78ec1d223d38aaed5ee91e800690fbddb388c5602ea0c6fd33600974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
