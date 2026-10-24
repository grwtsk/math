# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticDefect.Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8289ba481b2f9458d469c22de5b5c116e907cd69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8289ba481b2f9458d469c22de5b5c116e907cd69`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SignedDefect` — import line 1; external provider; requires a separately pinned dependency.
- `SourceWeightedOrbitAdapter` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrixAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/matrixat--d3fd6bb089f9eaf051676565.md) | 24 | `declaration-track:d3fd6bb089f9eaf051676565015de9fcac830e13aba00284897ba1cce504a62c` |
| 2 | `def` | [firstAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/firstat--142245224c2227602cbd2eed.md) | 29 | `declaration-track:142245224c2227602cbd2eedfb62c2ce210096261082252066ea367b3c78828f` |
| 3 | `def` | [secondAt](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/secondat--e7ccdcb35122e5283e348538.md) | 31 | `declaration-track:e7ccdcb35122e5283e348538fee252230afe117c9e01132111b0fbba0360b8de` |
| 4 | `def` | [movedReadout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/movedreadout--26438474772edbca3fcda459.md) | 35 | `declaration-track:26438474772edbca3fcda4599a92e17549447a011d9f2ac5909f2827f6ef0c22` |
| 5 | `theorem` | [literal_readout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/literal-readout--203165bde3b544e638886442.md) | 40 | `result-track:203165bde3b544e63888644259fcf8c61cb0c7680bd4ae7767de4eb17cf35208` |
| 6 | `theorem` | [literal_move_defect](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/literal-move-defect--43054bd3904e68c9bfe7e5f8.md) | 49 | `result-track:43054bd3904e68c9bfe7e5f855d766dfe5ba0ab579c1d06e3a655a4bb88772d5` |
| 7 | `def` | [dualMovedReadout](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/dualmovedreadout--e4b273004172580113ae3425.md) | 60 | `declaration-track:e4b273004172580113ae3425e9c15f41c5d10dfb763c8a26fdf101fb02721332` |
| 8 | `theorem` | [literal_dual_compensation](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticDefect/Variant6c117664abf2ee0afce2fc37c1a62b41a4124f32dae8a549cb28ed2896bd24c2.lean/declarations/literal-dual-compensation--276e4bc4fab901a3aaad732c.md) | 67 | `result-track:276e4bc4fab901a3aaad732c44ccf050143afb4d786a5b8aa048c95c14b55655` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
