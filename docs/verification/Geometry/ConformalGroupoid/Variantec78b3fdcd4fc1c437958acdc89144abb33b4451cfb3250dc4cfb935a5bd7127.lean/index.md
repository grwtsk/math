# Verification target: GRWTSK.Geometry.ConformalGroupoid.Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0408609917b664f8e1979f82671688f70369e1e1",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean/index.md) · [Full source](../../../../mathematics/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0408609917b664f8e1979f82671688f70369e1e1`.

Source path: `GRWTSK/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Conformal.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conformalPregroupoid](../../../../mathematics/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean/declarations/conformalpregroupoid--02dd7f03b5a96e3594bc7e0e.md) | 35 | `declaration-track:02dd7f03b5a96e3594bc7e0e6e3c6cbc04b7793e46dfa3d0d706d2e3722b7478` |
| 2 | `def` | [conformalGroupoid](../../../../mathematics/Geometry/ConformalGroupoid/Variantec78b3fdcd4fc1c437958acdc89144abb33b4451cfb3250dc4cfb935a5bd7127.lean/declarations/conformalgroupoid--d95c160209a3428e4333996d.md) | 45 | `declaration-track:d95c160209a3428e4333996d0f0ea48fdce4f69b42f1061515fe686a986434b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
