# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239SquareClassBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88703ad97a057b6eef57ec88991365ac5a8b48fa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88703ad97a057b6eef57ec88991365ac5a8b48fa`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239RankCriterion`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239RankCriterion.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [characterMatrix_mul_dual](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/charactermatrix-mul-dual--e8aafbb2eea2ca300434017e.md) | 50 | `result-track:e8aafbb2eea2ca300434017eb0ecf570f216e28f2515b77bde7c1604554cec9b` |
| 2 | `theorem` | [dualTranspose_mul_characterTranspose](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/dualtranspose-mul-charactertranspose--53010ef79f97ff79d4e9a1a6.md) | 58 | `result-track:53010ef79f97ff79d4e9a1a6333ca618eb2f33c54b1c3e4b85e21b1b1bbb2671` |
| 3 | `theorem` | [characterTranspose_mulVec_injective](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/charactertranspose-mulvec-injective--f710be4de940131573c8e885.md) | 68 | `result-track:f710be4de940131573c8e885af9c4c14d734ac97572139dd58325c2510ba5bdb` |
| 4 | `theorem` | [linearIndependent_of_sourceColumnCharacters](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/linearindependent-of-sourcecolumncharacters--46d2f767c933380077b6e13e.md) | 78 | `result-track:46d2f767c933380077b6e13ea295a502846a1f4aa50def1fb9d875480e233bde` |
| 5 | `def` | [composedDescentCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/composeddescentcharacter--27b471a8eb68ce8ca2046289.md) | 110 | `declaration-track:27b471a8eb68ce8ca2046289f55b2cfa435551f289ccc49419adcade26e76e35` |
| 6 | `theorem` | [composedDescentCharacter_apply](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/composeddescentcharacter-apply--367fffa4bcbb70d0667a7620.md) | 119 | `result-track:367fffa4bcbb70d0667a762051933e6d4507c4092687dfcef9fde4c5bc35ea5d` |
| 7 | `theorem` | [linearIndependent_of_descentFactorization](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/linearindependent-of-descentfactorization--5c55eb86b287546282575442.md) | 128 | `result-track:5c55eb86b2875462825754420042dc0cc5e242b1d2557fe73cb86b02562baa0b` |
| 8 | `theorem` | [finrank_ge_32_of_descentFactorization](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/declarations/finrank-ge-32-of-descentfactorization--c9caeb02ea76c0e0b23f03e4.md) | 146 | `result-track:c9caeb02ea76c0e0b23f03e45e080a41043d00f84fffef3ddb8e3ddfa96a6ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
