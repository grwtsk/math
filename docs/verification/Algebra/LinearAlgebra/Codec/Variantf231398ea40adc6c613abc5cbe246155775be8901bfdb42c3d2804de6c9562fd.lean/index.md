# Verification target: GRWTSK.Algebra.LinearAlgebra.Codec.Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224e9f18aa951a2f32ff70df08ba172b707bb4de",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224e9f18aa951a2f32ff70df08ba172b707bb4de`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean.json)

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
| 1 | `class` | [BinaryLogicMatrixCodec](../../../../../mathematics/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/declarations/binarylogicmatrixcodec--087bc42c67ea8da1d22dd556.md) | 13 | `declaration-track:087bc42c67ea8da1d22dd556be2e167ec43c3127070df5299b80404de9d43f6b` |
| 2 | `def` | [encodeSigma](../../../../../mathematics/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/declarations/encodesigma--26a7964d8629a4d9d71e3300.md) | 22 | `declaration-track:26a7964d8629a4d9d71e33004c8e5accd22f6203895bfe29ad6d5875e0513ccd` |
| 3 | `theorem` | [roundTrip_checked](../../../../../mathematics/Algebra/LinearAlgebra/Codec/Variantf231398ea40adc6c613abc5cbe246155775be8901bfdb42c3d2804de6c9562fd.lean/declarations/roundtrip-checked--ff5ae4a24c6d99d2a38d956e.md) | 26 | `result-track:ff5ae4a24c6d99d2a38d956e5e407c64086f1ea12afb715e9f85e0f5add5e048` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
