# Verification target: GRWTSK.Algebra.LinearAlgebra.Rational.Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69691251c2122217ea561d8c26bcae84d4f93708",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69691251c2122217ea561d8c26bcae84d4f93708`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.NumberSystems` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/rationalmatrixcode--4194e421157aacd318c1ca84.md) | 13 | `declaration-track:4194e421157aacd318c1ca84a15a9a2eab9897b8c30f31d299546a262047ad37` |
| 2 | `def` | [encodeRational](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/encoderational--f26276ac3d9d8d92093ed1e2.md) | 19 | `declaration-track:f26276ac3d9d8d92093ed1e2346d58fb41842ec7fd723c8d0a0646e53360f49e` |
| 3 | `def` | [decodeRational?](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/decoderational--4fa227bcece06ca72dba9528.md) | 22 | `declaration-track:4fa227bcece06ca72dba95280f04f8f525eedbc884ca232567a066413f5d3f45` |
| 4 | `theorem` | [rational_blm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/rational-blm-roundtrip--8e287062bee411f6fafea389.md) | 25 | `result-track:8e287062bee411f6fafea3897ef572f2ccc7c488946a062f7fa64bacc49d1440` |
| 5 | `structure` | [RationalNormalizationCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/rationalnormalizationcertificate--dd6037f2eb28372e47aa8034.md) | 29 | `declaration-track:dd6037f2eb28372e47aa80346cc57fc14460bb56dd627fc8022c01920bf6c723` |
| 6 | `theorem` | [rational_normalization_certificate_projects](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant6a08242e9d562ffedb07d01c9da2adbbbfbfd534a1de2183514ba6783820a52e.lean/declarations/rational-normalization-certificate-projects--2f983e36c6db2ad95798002d.md) | 34 | `result-track:2f983e36c6db2ad95798002dd3a60daf97d04135b61ee7da4f1d19d02f76a810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
