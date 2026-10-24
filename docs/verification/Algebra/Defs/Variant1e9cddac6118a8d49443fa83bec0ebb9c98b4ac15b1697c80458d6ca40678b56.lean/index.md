# Verification target: GRWTSK.Algebra.Defs.Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd6fc6d92fcf1a5c94f0583f0c32bc992eb5ce5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd6fc6d92fcf1a5c94f0583f0c32bc992eb5ce5`.

Source path: `GRWTSK/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.SumsOfSquares` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSemireal](../../../../mathematics/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean/declarations/issemireal--d93beeb8e01fe93e53dd304d.md) | 43 | `declaration-track:d93beeb8e01fe93e53dd304d3e5137ba0596435b490a98afc6b0d6e3e9291233` |
| 2 | `theorem` | [IsSemireal.not_isSumSq_neg_one](../../../../mathematics/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean/declarations/issemireal-not-issumsq-neg-one--d69558d22ecea55d8070de9e.md) | 47 | `result-track:d69558d22ecea55d8070de9e9e260b8e89fcb2ecd8cf8c3deba1ef062e7b0f5e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant1e9cddac6118a8d49443fa83bec0ebb9c98b4ac15b1697c80458d6ca40678b56.lean/declarations/instance--6a0a5269c5b050a94367dc46.md) | 54 | `declaration-track:6a0a5269c5b050a94367dc46f4590bdc83845e195d54f2570df57e55ad9c258b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
