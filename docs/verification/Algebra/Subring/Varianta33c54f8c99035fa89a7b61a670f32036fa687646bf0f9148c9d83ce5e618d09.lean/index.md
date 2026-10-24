# Verification target: GRWTSK.Algebra.Subring.Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ccb16333d933ec2ab89002f792dd0a8b779a2df",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ccb16333d933ec2ab89002f792dd0a8b779a2df`.

Source path: `GRWTSK/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [subsemiring](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/declarations/subsemiring--968ee5a72811e5738a89024c.md) | 17 | `declaration-track:968ee5a72811e5738a89024cbb85e325564b467ad0f7adec603c3b5c770e91c0` |
| 2 | `instance` | [subring](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/declarations/subring--e284af4fc456aaddb2d1e449.md) | 25 | `declaration-track:e284af4fc456aaddb2d1e44961dcc5b6983c1fb69189097d5778f17254f6b719` |
| 3 | `instance` | [subring'](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/declarations/subring--2c72b21e16e379a1747be6f5.md) | 32 | `declaration-track:2c72b21e16e379a1747be6f54c6feb03739d86c7ef9777b00175b97d2a12aef2` |
| 4 | `theorem` | [charP_center_iff](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/declarations/charp-center-iff--97489b2ee2589a1c1eb6d015.md) | 37 | `result-track:97489b2ee2589a1c1eb6d015bf51143832033fc26fc0c6e28a013eae32f67c4e` |
| 5 | `theorem` | [expChar_center_iff](../../../../mathematics/Algebra/Subring/Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09.lean/declarations/expchar-center-iff--b1e3206dc1d54e1d1c5b6641.md) | 45 | `result-track:b1e3206dc1d54e1d1c5b66411c5e5171ec32eeb6bb9798689758738219a939f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
