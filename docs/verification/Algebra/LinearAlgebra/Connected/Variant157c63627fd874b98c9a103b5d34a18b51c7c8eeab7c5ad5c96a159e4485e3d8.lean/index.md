# Verification target: GRWTSK.Algebra.LinearAlgebra.Connected.Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "521380023976b2d24c7e7c3149eff121573884fc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `521380023976b2d24c7e7c3149eff121573884fc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Cardinality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.Countable.isPathConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/set-countable-ispathconnected-compl-of-one-lt-rank--2e1d6efe72324d55aa0107f0.md) | 40 | `result-track:2e1d6efe72324d55aa0107f07d5d2a10c1497b4c7123b7a6f1c938c639810e52` |
| 2 | `theorem` | [Set.Countable.isConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/set-countable-isconnected-compl-of-one-lt-rank--be5cee418ecae0379cb0a55e.md) | 113 | `result-track:be5cee418ecae0379cb0a55e7c3d685da8d0cfcc3a3b78b53171a681ff4e563a` |
| 3 | `theorem` | [isPathConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/ispathconnected-compl-singleton-of-one-lt-rank--034915718c0bc178203d3384.md) | 119 | `result-track:034915718c0bc178203d338462843dee30ba91782594865f1b6239f0cbe757d8` |
| 4 | `theorem` | [isConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/isconnected-compl-singleton-of-one-lt-rank--cf0d2f329c6f7d4b85c02786.md) | 125 | `result-track:cf0d2f329c6f7d4b85c02786f9ecccb616f2084f8b4e90bfbe3710d9b58cb47c` |
| 5 | `theorem` | [isPathConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/ispathconnected-sphere--b6136d29689278376c1fda60.md) | 137 | `result-track:b6136d29689278376c1fda60d920575940956de294a3d19d91573642be1a8fdf` |
| 6 | `theorem` | [isConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/isconnected-sphere--b881f1ad9c75510f6253f738.md) | 167 | `result-track:b881f1ad9c75510f6253f73811e09a492de9f06bc6cc940f5ff4acd5b3502eb3` |
| 7 | `theorem` | [isPreconnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Variant157c63627fd874b98c9a103b5d34a18b51c7c8eeab7c5ad5c96a159e4485e3d8.lean/declarations/ispreconnected-sphere--f951b4569cb116a47a4e762d.md) | 172 | `result-track:f951b4569cb116a47a4e762df5839c2eb5a3d167da5130a5a570aa211f52255f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
