# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveLift.Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561e649f5b6c5854d9a8bba1047a7cd94c90b8fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561e649f5b6c5854d9a8bba1047a7cd94c90b8fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrderedNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/declarations/leftorderednonnegative--9b85854349ff05b96126c208.md) | 21 | `declaration-track:9b85854349ff05b96126c208ff238c3162fa8ff507118ec4faf2061929ceaea5` |
| 2 | `def` | [RightOrderedNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/declarations/rightorderednonnegative--ee5480ffb628991be3dfd886.md) | 26 | `declaration-track:ee5480ffb628991be3dfd886f6f6556acfd8f10d842854b3a331487bf4fcf465` |
| 3 | `theorem` | [det_mul_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/declarations/det-mul-nonnegative--62a8ca1b1ef355e9ba2f065f.md) | 32 | `result-track:62a8ca1b1ef355e9ba2f065f5d5046c5ef8bce559d8e2d89503a991cd348a8ff` |
| 4 | `def` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/declarations/matrix--58c1795047fe30f1c0a5727b.md) | 51 | `declaration-track:58c1795047fe30f1c0a5727b3cb76995fd785a719d186e165ef241e79bd03fcd` |
| 5 | `theorem` | [matrix_det_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLift/Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139.lean/declarations/matrix-det-nonnegative--6d5166aefad77a4dcce22a50.md) | 58 | `result-track:6d5166aefad77a4dcce22a5030bb7d816c1ba0540798df1907366e8e602a679e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
