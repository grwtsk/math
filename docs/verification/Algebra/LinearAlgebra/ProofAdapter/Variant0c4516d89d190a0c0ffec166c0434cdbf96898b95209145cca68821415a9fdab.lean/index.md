# Verification target: GRWTSK.Algebra.LinearAlgebra.ProofAdapter.Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb6047e715daec4dfa571ebd33d9d60b0adb79e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb6047e715daec4dfa571ebd33d9d60b0adb79e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.ProofSyntax` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.TheoremAdapter` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofAdapterDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean/declarations/proofadapterdescriptor--504c64a80324784e655b4b70.md) | 6 | `declaration-track:504c64a80324784e655b4b7014311c6fe983060c0795e83f864b2b671bf53a24` |
| 2 | `theorem` | [proofAdapter_syntax_roundTrip_projects](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean/declarations/proofadapter-syntax-roundtrip-projects--8bd11505d423cf38e0c01626.md) | 12 | `result-track:8bd11505d423cf38e0c01626f7c13f26b7fa877629f102a8a9e96ee208f1214d` |
| 3 | `theorem` | [proofAdapter_preserves_theorem_statement](../../../../../mathematics/Algebra/LinearAlgebra/ProofAdapter/Variant0c4516d89d190a0c0ffec166c0434cdbf96898b95209145cca68821415a9fdab.lean/declarations/proofadapter-preserves-theorem-statement--28db65674752d08dc1919d07.md) | 18 | `result-track:28db65674752d08dc1919d074bfc0d340a02aa0b2975c651bbfa579cff488516` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
