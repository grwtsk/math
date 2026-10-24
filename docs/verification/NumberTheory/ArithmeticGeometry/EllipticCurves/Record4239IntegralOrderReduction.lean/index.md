# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239IntegralOrderReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a803897d4214a9e5ce2661f8a91c376683ab25bb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a803897d4214a9e5ce2661f8a91c376683ab25bb`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239UnitSquareClassTransport`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NegationObstruction`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.RingTheory.AdjoinRoot` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RecordIntegralOrder](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/recordintegralorder--acaed3c38b3e13774bce8249.md) | 52 | `declaration-track:acaed3c38b3e13774bce82497cf184c36bbf6167eb1ca95fd7562c666bb3ae7b` |
| 2 | `theorem` | [shortCubic_eval₂_root_mod](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/shortcubic-eval-root-mod--21f9ce33f424a246085137d5.md) | 56 | `result-track:21f9ce33f424a246085137d5a920f86c8fa97f5f17c900d8fbd925d6dfacf660` |
| 3 | `def` | [recordOrderReduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/recordorderreduction--483909debe67c1b409ad1e5a.md) | 72 | `declaration-track:483909debe67c1b409ad1e5a1096bbbcf19beb4c976b37f7966ae59f5b5c1c9d` |
| 4 | `theorem` | [recordOrderReduction_root](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/recordorderreduction-root--30f36bf101deff8e4aa2dbb1.md) | 78 | `result-track:30f36bf101deff8e4aa2dbb162b7b872ee93736632be339b004d915473d357a6` |
| 5 | `theorem` | [recordOrderReduction_of](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/recordorderreduction-of--19efb4db7eee552c9dbda4b5.md) | 84 | `result-track:19efb4db7eee552c9dbda4b5a54f20e45fa4637de8bb4a7cce002d7a0ca4fcfc` |
| 6 | `def` | [sourceOrderDifference](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderdifference--437e042cdb00e43ac984c7a6.md) | 91 | `declaration-track:437e042cdb00e43ac984c7a6bab2d45cc9622251398707bf07ddf2ad9dd2d37c` |
| 7 | `theorem` | [sourceOrderDifference_reduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderdifference-reduction--aaac435c4218c3b05f8c4d97.md) | 95 | `result-track:aaac435c4218c3b05f8c4d97431bf1497f001cc831cae383ae7776b2a10010c4` |
| 8 | `def` | [sourceOrderDerivative](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderderivative--2080dd8e889fb4cb8863c468.md) | 104 | `declaration-track:2080dd8e889fb4cb8863c468a54965101fb7ca270d8bb7f15d61bbc6fb1dd470` |
| 9 | `theorem` | [sourceOrderDerivative_reduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderderivative-reduction--fb3657b138fcee1833708d04.md) | 109 | `result-track:fb3657b138fcee1833708d04d264d48a0304c1ce85d1ba3e1d1d98bc22f33b6f` |
| 10 | `theorem` | [sourceOrderDerivative_reduction_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderderivative-reduction-ne-zero--d8584b80d5edc5da9ceb33aa.md) | 119 | `result-track:d8584b80d5edc5da9ceb33aa5f1d353bf7c4308d2ad54df13467ee2e768da015` |
| 11 | `def` | [sourceOrderLocalElement](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderlocalelement--45cd4dec8d8c1589a2403399.md) | 131 | `declaration-track:45cd4dec8d8c1589a2403399fe411c502b4a2c520ec62f4788f0fcc52da0d9cc` |
| 12 | `theorem` | [sourceOrderLocalElement_reduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderlocalelement-reduction--ea41b7e872378bda01703358.md) | 140 | `result-track:ea41b7e872378bda0170335816749318676115ef0746ca3026891300c50c97bb` |
| 13 | `theorem` | [sourceOrderLocalElement_reduction_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/sourceorderlocalelement-reduction-ne-zero--643c4421ec977104416d1502.md) | 152 | `result-track:643c4421ec977104416d1502d3cc475cf9d943807fdd0f0182521aceafc9dcee` |
| 14 | `def` | [recordOrderUnitCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/declarations/recordorderunitcharacter--51744deae8c8934f6cb81986.md) | 160 | `declaration-track:51744deae8c8934f6cb81986ac6a8272f7f4dfbc5191c5996a5e729db9955faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
