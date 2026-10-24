# Verification target: GRWTSK.Algebra.LinearAlgebra.Padding.Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "761312945f9c5a3b9bcc82b7589d7fd27342b8fd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `761312945f9c5a3b9bcc82b7589d7fd27342b8fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PaddedBinaryLogicMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/paddedbinarylogicmatrix--878d860e7d7c4c666c60d2ba.md) | 15 | `declaration-track:878d860e7d7c4c666c60d2badf75495bea90f9f0f456732e45c6b7c6df21588d` |
| 2 | `inductive` | [PaddingPolicy](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/paddingpolicy--279c9d9994dd14c65191af08.md) | 19 | `declaration-track:279c9d9994dd14c65191af08858f6b66dd94771f09fd22abf7ab8c82445991ac` |
| 3 | `def` | [name](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/name--14789ba0867467b889841280.md) | 26 | `declaration-track:14789ba0867467b889841280168cf7f8f6f6ad91e332be7305c972f808c8eb88` |
| 4 | `def` | [padTo](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto--ec1a66dc26224c7eb21c9baa.md) | 32 | `declaration-track:ec1a66dc26224c7eb21c9baaebc42cb51d43573c2bfedadf8367b61043a14cfe` |
| 5 | `theorem` | [padTo_preserves_original](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-preserves-original--6b8ba75bff1440056b9fef8a.md) | 50 | `result-track:6b8ba75bff1440056b9fef8af0f64aa5784804c5ff6ed36bbfb745fda6cfa169` |
| 6 | `theorem` | [padTo_marks_row_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-marks-row-padding-inactive--59a49f84240a166c1ab3aca9.md) | 57 | `result-track:59a49f84240a166c1ab3aca94288a5cbdfc6de1e0a8aaee9bad8adc0bca2f857` |
| 7 | `theorem` | [padTo_marks_col_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-marks-col-padding-inactive--1bb05c8decad19e62fbc4ce2.md) | 64 | `result-track:1bb05c8decad19e62fbc4ce2e92bf56e6fcf048afdf5ea70acf830d5794cd47a` |
| 8 | `theorem` | [padTo_marks_padding_inactive](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-marks-padding-inactive--d3cf7ab6d2e0296799d04030.md) | 73 | `result-track:d3cf7ab6d2e0296799d040300bcbcdc3ab9051998dfd51a4d2f9d0dfbb3e3273` |
| 9 | `theorem` | [padTo_active_iff_in_original_bounds](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-active-iff-in-original-bounds--b82ce71f6ad06a726aa7506c.md) | 85 | `result-track:b82ce71f6ad06a726aa7506cc3e9fede151599a4ee12844ec21e1194803a0927` |
| 10 | `theorem` | [padTo_padding_false_ignore](../../../../../mathematics/Algebra/LinearAlgebra/Padding/Variant02151133c49c464e552073c6cc3b7b887a72502ea1ee6a2aa0daca6dc49b0c50.lean/declarations/padto-padding-false-ignore--008d0ae704c39d4e2c092931.md) | 91 | `result-track:008d0ae704c39d4e2c09293113338df2424bd641b9be89b88e294159e6a22e64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
