# Verification target: GRWTSK.Algebra.LinearAlgebra.Token.Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fffea752f5b3db4e614c38af74a33df0a914a4a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fffea752f5b3db4e614c38af74a33df0a914a4a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean.json)

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
| 1 | `structure` | [TokenAlphabet](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/declarations/tokenalphabet--ef759be948e408b3e37f10fb.md) | 13 | `declaration-track:ef759be948e408b3e37f10fb26d52885bb626dd92aed144bac98a7222cfe5cbe` |
| 2 | `structure` | [TokenSequence](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/declarations/tokensequence--90555bcc73a2f91b100cd74c.md) | 17 | `declaration-track:90555bcc73a2f91b100cd74cb8167b28d1061c7892b1649bf540631257fd7410` |
| 3 | `structure` | [TokenBinaryMatrixEncoding](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/declarations/tokenbinarymatrixencoding--4b23219114a5ddabecfaebb5.md) | 21 | `declaration-track:4b23219114a5ddabecfaebb512034be42fcc8600e18982e2ff8b650aff9286d4` |
| 4 | `theorem` | [tokenBinaryMatrixEncoding_boundary](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/declarations/tokenbinarymatrixencoding-boundary--48e8ad2a45c77a998b587e55.md) | 30 | `result-track:48e8ad2a45c77a998b587e55c8043fb8a89cdff2604b87e9e7840a247976bd65` |
| 5 | `theorem` | [tokenSequence_length_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Token/Variant17fbb77c7900e3b4a8c94c068700d71a994266087901306747fe36ffda2b1676.lean/declarations/tokensequence-length-nonneg--1e290794f3c52e988985f851.md) | 38 | `result-track:1e290794f3c52e988985f851440bf8a082d532886d2b413fdc94f63adf0c77ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
