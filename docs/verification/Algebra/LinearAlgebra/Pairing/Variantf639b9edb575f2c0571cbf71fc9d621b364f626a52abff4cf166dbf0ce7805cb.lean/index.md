# Verification target: GRWTSK.Algebra.LinearAlgebra.Pairing.Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f1833de979f6d084316a16a3108dcd8adc42fb5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f1833de979f6d084316a16a3108dcd8adc42fb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorPower](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/totensorpower--f2acf1c57602144cac28053d.md) | 29 | `declaration-track:f2acf1c57602144cac28053dc64e3b29dbd3255c2fbe44bbf7964a28510da88e` |
| 2 | `lemma` | [toTensorPower_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/totensorpower-apply-multi--587847c558947af23680329c.md) | 35 | `result-track:587847c558947af23680329c458dc1ad3787d361e70823593061d66d021a283f` |
| 3 | `def` | [alternatingMapToDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/alternatingmaptodual--62112cefb731c8274dcae0f7.md) | 44 | `declaration-track:62112cefb731c8274dcae0f7e4f8d69ec61d3bd85fefcde07fcbae7816593fc0` |
| 4 | `theorem` | [alternatingMapToDual_apply_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/alternatingmaptodual-apply-multi--231c161b3da57da7447587e8.md) | 57 | `result-track:231c161b3da57da7447587e8dec6bc1841646dd6ef9536840cff0986f56dd813` |
| 5 | `def` | [pairingDual](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/pairingdual--5029a6fb47b1ed479e7889dc.md) | 64 | `declaration-track:5029a6fb47b1ed479e7889dc47cf7e227c3ce061003a5c3cb097d0ce7ee82288` |
| 6 | `lemma` | [pairingDual_ιMulti_ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/pairingdual-multi-multi--7c5926e97b1b6a2eb45cc2db.md) | 71 | `result-track:7c5926e97b1b6a2eb45cc2db25720139134cd574016943372ee02c1f8bbfe4f5` |
| 7 | `lemma` | [pairingDual_apply_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/pairingdual-apply-apply-eq-one--4dda5b058366f106f980d939.md) | 95 | `result-track:4dda5b058366f106f980d939e163816527916fbf7f39b513dd7fc7a9fe9cb164` |
| 8 | `lemma` | [pairingDual_apply_apply_eq_one_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/declarations/pairingdual-apply-apply-eq-one-zero--ad6b970a613528d556f8f448.md) | 109 | `result-track:ad6b970a613528d556f8f4487fa6b5b01874059acdc5bc3f50d621eec8d8bf39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
