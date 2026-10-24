# Verification target: GRWTSK.Algebra.LinearAlgebra.Bool.Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16cdd5904c40f66fd6ec57aadeebc0e7673bd6f9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16cdd5904c40f66fd6ec57aadeebc0e7673bd6f9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Lift` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bool](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean/declarations/bool--838fc4a6d3383ef647022fc3.md) | 16 | `declaration-track:838fc4a6d3383ef647022fc32544f9498cc6ccd93113c04b1fa37a9a61c10231` |
| 2 | `def` | [boolNot](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean/declarations/boolnot--7a17efc985c628c1e0db4453.md) | 25 | `declaration-track:7a17efc985c628c1e0db4453111dd6e017dfeb6e9f754e3d54096d879fa947de` |
| 3 | `theorem` | [boolNot_encode](../../../../../mathematics/Algebra/LinearAlgebra/Bool/Variant783f4f03e025c1afe6891f650f3d865acce84661ec898afb0f5c1cee1d6e94bf.lean/declarations/boolnot-encode--c09e63c6aa315f3b887d5034.md) | 29 | `result-track:c09e63c6aa315f3b887d5034ef836d9660de2caac0bb4905f4a2ce9a76c919d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
