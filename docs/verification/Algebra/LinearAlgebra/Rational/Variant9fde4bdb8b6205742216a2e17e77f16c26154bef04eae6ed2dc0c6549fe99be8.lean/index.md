# Verification target: GRWTSK.Algebra.LinearAlgebra.Rational.Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b0ceb9395fdb85caec0aea7c5bc9a4a96ca7ce8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b0ceb9395fdb85caec0aea7c5bc9a4a96ca7ce8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.NumberSystems` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/rationalmatrixcode--2893d465aa50068247b1ac1f.md) | 5 | `declaration-track:2893d465aa50068247b1ac1fed6c09cc2e0f70cc8c55303e6e5cc47ee06ac2b2` |
| 2 | `def` | [encodeRational](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/encoderational--bcdfa836defc86776fc13549.md) | 11 | `declaration-track:bcdfa836defc86776fc13549b650ce8a9f27ed08b0a23d9547e93319d31012ae` |
| 3 | `def` | [decodeRational?](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/decoderational--62b96190efa6c15b11654cdd.md) | 14 | `declaration-track:62b96190efa6c15b11654cdd3aa30dcd7140b4389a7d5bc87adad398c3f2697b` |
| 4 | `theorem` | [rational_blm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/rational-blm-roundtrip--37f47685b1fd2935dd3be654.md) | 17 | `result-track:37f47685b1fd2935dd3be6543a45e5c1837d1a558af4bd34ee4a15b2be9d0f9c` |
| 5 | `structure` | [RationalNormalizationCertificate](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/rationalnormalizationcertificate--146ccf687884bfc770d4e344.md) | 21 | `declaration-track:146ccf687884bfc770d4e34465be4dfb5e4c921ecb0cc0a4b6e2e7358ff52bd7` |
| 6 | `theorem` | [rational_normalization_certificate_projects](../../../../../mathematics/Algebra/LinearAlgebra/Rational/Variant9fde4bdb8b6205742216a2e17e77f16c26154bef04eae6ed2dc0c6549fe99be8.lean/declarations/rational-normalization-certificate-projects--35dcfcec87c983fe37e0b28d.md) | 26 | `result-track:35dcfcec87c983fe37e0b28d401ce9b66e601833c6e66a585c11794ab579d20e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
