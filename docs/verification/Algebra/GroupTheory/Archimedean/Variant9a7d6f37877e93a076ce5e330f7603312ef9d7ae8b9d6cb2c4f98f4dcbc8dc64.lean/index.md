# Verification target: GRWTSK.Algebra.GroupTheory.Archimedean.Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab4fca9bd8d79f5ab9c56864836f66c39389e5de",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab4fca9bd8d79f5ab9c56864836f66c39389e5de`.

Source path: `GRWTSK/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Archimedean` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.denseRange_cast](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/declarations/rat-denserange-cast--b9f2a54e3624eee2729f9b03.md) | 37 | `result-track:b9f2a54e3624eee2729f9b031e0da408bfbc3e4a155dcc2731cbf5a906da7607` |
| 2 | `theorem` | [dense_of_not_isolated_zero](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/declarations/dense-of-not-isolated-zero--c23a4933ddf0e9f4261447b4.md) | 50 | `result-track:c23a4933ddf0e9f4261447b40c38c5f55ad3e0cc0d3343589077483446223c73` |
| 3 | `theorem` | [dense_of_no_min](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/declarations/dense-of-no-min--b2a0fa602bd49f9179b82e0a.md) | 66 | `result-track:b2a0fa602bd49f9179b82e0ad849f53a9f8ed3b984169f37830b264b173d7ac2` |
| 4 | `theorem` | [dense_or_cyclic](../../../../../mathematics/Algebra/GroupTheory/Archimedean/Variant9a7d6f37877e93a076ce5e330f7603312ef9d7ae8b9d6cb2c4f98f4dcbc8dc64.lean/declarations/dense-or-cyclic--5ec3dd2bdb6f50ec681f2d49.md) | 75 | `result-track:5ec3dd2bdb6f50ec681f2d49bb1fde04260baf40b750f3bf2604d3e8db275c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
