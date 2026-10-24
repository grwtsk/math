# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9a6d46971419b0f4fa3547483fd17fb11d2733",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9a6d46971419b0f4fa3547483fd17fb11d2733`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dropWhile_get_zero_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/dropwhile-get-zero-not--a0ffe7da747dc6ab9db99b1a.md) | 16 | `result-track:a0ffe7da747dc6ab9db99b1a6ac6b176e18a24444a21cd4b4113a42b137a1801` |
| 2 | `theorem` | [dropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/dropwhile-eq-nil-iff--d626bd2aac3a0ab6756fa589.md) | 31 | `result-track:d626bd2aac3a0ab6756fa589818c1ba6c0f84cd2a7d32d01855590b6844303da` |
| 3 | `theorem` | [takeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/takewhile-eq-self-iff--41cf600e68182103937770d9.md) | 37 | `result-track:41cf600e68182103937770d97f60290fd90743df1c29b41484812ba1fa691ed8` |
| 4 | `theorem` | [takeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/takewhile-eq-nil-iff--0796d21e877e657936870ca6.md) | 43 | `result-track:0796d21e877e657936870ca6edae9c7371b6c84d4925cd77fffe084fd054287c` |
| 5 | `theorem` | [mem_takeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/mem-takewhile-imp--6ca3f97220c2b921cc71d817.md) | 51 | `result-track:6ca3f97220c2b921cc71d817351cd908281120ba81deee360a7c0cf459f5b97b` |
| 6 | `theorem` | [takeWhile_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/takewhile-takewhile--e955312085f7fc13c4e59539.md) | 61 | `result-track:e955312085f7fc13c4e595391c97ffd2c31ee3832328d6248df01eeb5b03ab0f` |
| 7 | `theorem` | [takeWhile_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/takewhile-idem--0a5d326120a44c37d91703f8.md) | 67 | `result-track:0a5d326120a44c37d91703f85c1bc4be239242625eecb385471a0e6024315342` |
| 8 | `lemma` | [find?_eq_head?_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/find-eq-head-dropwhile-not--2b562eca8f005a0f499486c4.md) | 72 | `result-track:2b562eca8f005a0f499486c430f246ca1c4255312da22399b4c8d69f84fd37ed` |
| 9 | `lemma` | [find?_not_eq_head?_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/find-not-eq-head-dropwhile--88ab4271686e48a8dc4425bd.md) | 87 | `result-track:88ab4271686e48a8dc4425bd4027126a164e547c500dfddeab13ac0a695b5a9c` |
| 10 | `lemma` | [find?_eq_head_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/find-eq-head-dropwhile-not--8865a9349a827362ed843ed6.md) | 94 | `result-track:8865a9349a827362ed843ed6c4578fd5e90dbbed30d7459e7d2e255177f1cf64` |
| 11 | `lemma` | [find?_not_eq_head_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Varianta6041e9ddd52eb6f5b5918e031af9902f6c33c5359f8a2a83eab5850d48ffdd1.lean/declarations/find-not-eq-head-dropwhile--a6e9cee71738b591488f4071.md) | 98 | `result-track:a6e9cee71738b591488f4071825174ad0a7cbe390676001fa37033c8ccccb7e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
