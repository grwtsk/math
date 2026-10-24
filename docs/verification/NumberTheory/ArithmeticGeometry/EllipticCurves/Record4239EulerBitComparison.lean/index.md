# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239EulerBitComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8cae1cbcef256ba8282a4f77753cad2a973780",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8cae1cbcef256ba8282a4f77753cad2a973780`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239LocalSquareClass`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceEulerBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/sourceeulerbit--e636e363ce6db5bf9ee3591e.md) | 34 | `declaration-track:e636e363ce6db5bf9ee3591ee0432a9c07304a2822823e649a58b233863e94ea` |
| 2 | `theorem` | [sourceEulerBit_eq_localBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/sourceeulerbit-eq-localbit--a75bb470eda5039d6b7e706d.md) | 44 | `result-track:a75bb470eda5039d6b7e706db943c7722f4279d9c3ad9077792dbe576ef89983` |
| 3 | `theorem` | [sourceEulerBit_eq_characterMatrix](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/sourceeulerbit-eq-charactermatrix--9112d0d6e9b50c8f6cbfba14.md) | 51 | `result-track:9112d0d6e9b50c8f6cbfba14d4b479d8e6e3ad41948e562e3a1fcd6e4ee3df21` |
| 4 | `def` | [EulerBitsMatch](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/eulerbitsmatch--dc9ca975765978b00399473d.md) | 58 | `declaration-track:dc9ca975765978b00399473d44b9917afd48ecbff29eb725960b2c3bb445f794` |
| 5 | `theorem` | [eulerBitsMatch](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/eulerbitsmatch--f6ec3625feb339337ccfe604.md) | 61 | `result-track:f6ec3625feb339337ccfe604736e60e2d44b45b668bbbde5e6ede9d1e6549713` |
| 6 | `def` | [QuadraticEulerAgreement](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/quadraticeuleragreement--d97881bc0a3190a4628264a9.md) | 68 | `declaration-track:d97881bc0a3190a4628264a93d26def727436fa735bff8d07ff424b872b2c5fc` |
| 7 | `theorem` | [sourceBitsMatch_of_quadraticEulerAgreement](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239EulerBitComparison.lean/declarations/sourcebitsmatch-of-quadraticeuleragreement--002ea4f41b34488c601dac84.md) | 74 | `result-track:002ea4f41b34488c601dac84ea6756089115c8f30d87d3ceb262828da779cf45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
