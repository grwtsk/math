# Verification target: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a7a74980e4689aebb3d61640c5a827931ec7575",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a7a74980e4689aebb3d61640c5a827931ec7575`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/declarations/matrix--648211e27a13d40cabf8f1ad.md) | 22 | `declaration-track:648211e27a13d40cabf8f1adf2528e5d8c72f8f168e35b9e49795265696811ed` |
| 2 | `theorem` | [matrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/declarations/matrix-apply--794e4090df14975b6974b2c3.md) | 31 | `result-track:794e4090df14975b6974b2c34df921bba02cd673d56d0cf574c50541113343d2` |
| 3 | `def` | [stdBasis](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/declarations/stdbasis--79328ca482eae77a91509fce.md) | 42 | `declaration-track:79328ca482eae77a91509fce84690ad79f83e4907184ae3340b2d0f4eb3de9ff` |
| 4 | `theorem` | [stdBasis_eq_single](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/declarations/stdbasis-eq-single--fd1ff6b8889ebfa5cf0f5bdb.md) | 48 | `result-track:fd1ff6b8889ebfa5cf0f5bdb5a245ccc1015a9c6877ec3b0c5170de0f50e5c88` |
| 5 | `instance` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/StdBasis/Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b.lean/declarations/matrix--34f37d67eaed4dee3236e8d8.md) | 61 | `declaration-track:34f37d67eaed4dee3236e8d88c068c75b5bb73f7cdeb75276d2840b14f916f8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
