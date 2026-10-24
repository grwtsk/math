# Verification target: GRWTSK.Algebra.LinearAlgebra.ProofAdapter.Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224d4b973fdb0c8652140a1054f517bb98c0a3a6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224d4b973fdb0c8652140a1054f517bb98c0a3a6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.ProofSyntax` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.TheoremAdapter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofAdapterDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean/declarations/proofadapterdescriptor--fc03ef373a938b5eeb6e605a.md) | 14 | `declaration-track:fc03ef373a938b5eeb6e605ae62890722043f00bb2d7ee3fb233f8b0de488d62` |
| 2 | `theorem` | [proofAdapter_syntax_roundTrip_projects](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean/declarations/proofadapter-syntax-roundtrip-projects--513141a16f87f78b56f86c5c.md) | 20 | `result-track:513141a16f87f78b56f86c5c29eb895de80a8171dbc52e60ca03f0bcf22fed0a` |
| 3 | `theorem` | [proofAdapter_preserves_theorem_statement](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant891f972c4703f1922496de29b05b786e2d52c8bc24ceb92e7cfb47bfbac95688.lean/declarations/proofadapter-preserves-theorem-statement--05a3bd19f0f8a7536ebeb0a8.md) | 26 | `result-track:05a3bd19f0f8a7536ebeb0a81ce2fe1cb881f914a67e908e09ff0bf5ee9e4514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
