# Verification target: GRWTSK.Algebra.LinearAlgebra.BinaryMatrixEncoding.Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1da403a8fd8f3521259def16038e187387599344",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1da403a8fd8f3521259def16038e187387599344`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CellularArithmetic.CellularRepresentation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrixArithmeticEncoding](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/declarations/binarymatrixarithmeticencoding--4d90bcbaae30a882c9dcbeda.md) | 19 | `declaration-track:4d90bcbaae30a882c9dcbedaf406a54f3c9406ab6e5eea09bf3c924923012aff` |
| 2 | `def` | [unaryBinaryMatrixOfNat](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/declarations/unarybinarymatrixofnat--c9ddc2cd73c29d4b90ffd5e1.md) | 25 | `declaration-track:c9ddc2cd73c29d4b90ffd5e19d1723543415e6e980dc7be140d02694c4019ded` |
| 3 | `theorem` | [unaryBinaryMatrix_shape](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/declarations/unarybinarymatrix-shape--5f31558c1f6470fb2a690456.md) | 30 | `result-track:5f31558c1f6470fb2a6904568d125a98e3d5226bd023618b3c4017fb7a033ecf` |
| 4 | `def` | [unaryEncoding](../../../../../mathematics/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/declarations/unaryencoding--f6bce2adc985abb47589ffeb.md) | 36 | `declaration-track:f6bce2adc985abb47589ffeba5be014a998632f7dc7ddf563010c47edca4e78f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
