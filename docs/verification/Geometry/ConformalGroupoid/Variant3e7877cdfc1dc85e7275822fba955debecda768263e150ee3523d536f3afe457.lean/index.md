# Verification target: GRWTSK.Geometry.ConformalGroupoid.Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2729f51ab45a1e987d4f7d58c6f267d11a109d39",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean/index.md) · [Full source](../../../../mathematics/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2729f51ab45a1e987d4f7d58c6f267d11a109d39`.

Source path: `GRWTSK/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conformalPregroupoid](../../../../mathematics/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean/declarations/conformalpregroupoid--b4c288d1c6c443e40379d9d8.md) | 27 | `declaration-track:b4c288d1c6c443e40379d9d8b3f0747a8e9b58c368a170a5a94ecd5ba0ea9c64` |
| 2 | `def` | [conformalGroupoid](../../../../mathematics/Geometry/ConformalGroupoid/Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457.lean/declarations/conformalgroupoid--371a5294e7b2c7f03313fbcc.md) | 37 | `declaration-track:371a5294e7b2c7f03313fbcc50ecfd7de38063442bd0b1b3a8b58fc1d1f382ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
