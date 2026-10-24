# Verification target: GRWTSK.Algebra.LinearAlgebra.Connected.Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7a0f499c18eb5537fdf18a26419d707d52c7841",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7a0f499c18eb5537fdf18a26419d707d52c7841`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Contractible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Cardinality` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.Countable.isPathConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/set-countable-ispathconnected-compl-of-one-lt-rank--834f6ba77abb75407b2d280c.md) | 44 | `result-track:834f6ba77abb75407b2d280c13a4916adc4b20a93553603d7e4b19a958c7cd0a` |
| 2 | `theorem` | [Set.Countable.isConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/set-countable-isconnected-compl-of-one-lt-rank--02095afc5247cbe7e6c68a3c.md) | 115 | `result-track:02095afc5247cbe7e6c68a3cc13cf6dced0f68a257cfa691b7741ccfddfd8925` |
| 3 | `theorem` | [isPathConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispathconnected-compl-singleton-of-one-lt-rank--918f408e21fd165e80b74023.md) | 120 | `result-track:918f408e21fd165e80b7402386d66c96b006ce80f5614f58be153efc6bf6bdd7` |
| 4 | `theorem` | [isConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/isconnected-compl-singleton-of-one-lt-rank--2ee56a659ad511ca5fa541a4.md) | 125 | `result-track:2ee56a659ad511ca5fa541a41a871f5b2989f420bdd198d597ae833178b076d4` |
| 5 | `theorem` | [ball_contractible](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ball-contractible--35df8eb05c13e4344f755aef.md) | 139 | `result-track:35df8eb05c13e4344f755aef92350847a65460babf9db1c5c944115c59e799bc` |
| 6 | `theorem` | [eball_contractible](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/eball-contractible--d3a998f4cd2d9fa3358bdf71.md) | 143 | `result-track:d3a998f4cd2d9fa3358bdf7144d2402b5bc061d29463ff0c50bac09999727bd4` |
| 7 | `theorem` | [isPathConnected_ball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispathconnected-ball--7fae7a2284608cd3932a9e43.md) | 154 | `result-track:7fae7a2284608cd3932a9e43c7d8f47d7eceb55f32ab60ab9ac6626ace24c370` |
| 8 | `theorem` | [isPathConnected_eball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispathconnected-eball--3b1e0f8b4b1b8b2ceec60a89.md) | 159 | `result-track:3b1e0f8b4b1b8b2ceec60a896ea99129175df65712eab611de3a6fa6d9281ae4` |
| 9 | `theorem` | [isConnected_ball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/isconnected-ball--352522fd92eee221d55cd4db.md) | 164 | `result-track:352522fd92eee221d55cd4db1bd847f109285d71df9e2ea5421b71533a9023f5` |
| 10 | `theorem` | [isConnected_eball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/isconnected-eball--cb827bcc05ccb416ed0eeea8.md) | 168 | `result-track:cb827bcc05ccb416ed0eeea8981134650148d9a89243eff249d73ff3377da3c5` |
| 11 | `theorem` | [isPathConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispathconnected-sphere--e8b0347184f37960a3f62be9.md) | 178 | `result-track:e8b0347184f37960a3f62be9ba1371cc23971969bbdce45a66194c2e363e31fd` |
| 12 | `theorem` | [isConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/isconnected-sphere--7eb027001cbcdb8b75cbb1d2.md) | 208 | `result-track:7eb027001cbcdb8b75cbb1d2e8637458ccc7a3e2bbac3820e8b6529200911a4e` |
| 13 | `theorem` | [isPreconnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispreconnected-sphere--aa68a32aa517624959a3283d.md) | 213 | `result-track:aa68a32aa517624959a3283dce4e845c8e4ed699108689411765decd006951be` |
| 14 | `theorem` | [isPathConnected_compl_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/ispathconnected-compl-of-one-lt-codim--1e1f167107dab17b41667f4b.md) | 228 | `result-track:1e1f167107dab17b41667f4bff668183a6a5c427f86c982b2af5549cfe6a4f58` |
| 15 | `theorem` | [isConnected_compl_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/isconnected-compl-of-one-lt-codim--7dc5404732c298291866c884.md) | 237 | `result-track:7dc5404732c298291866c884cb24ee46570c1af60e94f722c924cbb43498c7dc` |
| 16 | `theorem` | [Submodule.connectedComponentIn_eq_self_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variantf74938e6cbf3f068d5126589412f7f262e4652f3a77018f3ce328ed9b5df70bd.lean/declarations/submodule-connectedcomponentin-eq-self-of-one-lt-codim--54cf3d67ba2a4293cc5a0773.md) | 241 | `result-track:54cf3d67ba2a4293cc5a0773687fa3b6c4bf3c2c7b4198a207466b1a91481a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
