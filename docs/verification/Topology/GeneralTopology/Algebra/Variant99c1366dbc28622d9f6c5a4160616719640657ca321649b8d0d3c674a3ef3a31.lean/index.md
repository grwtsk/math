# Verification target: GRWTSK.Topology.GeneralTopology.Algebra.Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d150bd3e899ac94b9d654937e71720ffa5421a50",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d150bd3e899ac94b9d654937e71720ffa5421a50`.

Source path: `GRWTSK/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.WeakDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Spectrum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_le_norm_one](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean/declarations/norm-le-norm-one--1ef2578531eb77e64f0bbe8c.md) | 48 | `result-track:1ef2578531eb77e64f0bbe8c2d3b094a829b08f75fb72c309bc1d702f3c41c65` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant99c1366dbc28622d9f6c5a4160616719640657ca321649b8d0d3c674a3ef3a31.lean/declarations/instance--04c3bfd9ecbeb93ad4c7b64e.md) | 53 | `declaration-track:04c3bfd9ecbeb93ad4c7b64e58fa058417d4aa6fa0ba87e4434c27f4a70f5597` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
