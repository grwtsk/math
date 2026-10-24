# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NegationObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab38078613591c8a8901ac9c477be120f2135df",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab38078613591c8a8901ac9c477be120f2135df`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteCharacterMatrix`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteCharacterMatrix.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.RingTheory.Polynomial.RationalRoot` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shortCubic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortcubic--ce6281b1eb6b8dd176f6c051.md) | 38 | `declaration-track:ce6281b1eb6b8dd176f6c0518fcf9aa31e498522e2dc68860a9a1f44d0036c90` |
| 2 | `theorem` | [shortCubic_monic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortcubic-monic--8376d828ad8f3d6aa2d2a91e.md) | 40 | `result-track:8376d828ad8f3d6aa2d2a91e573c874164de0f633bc925ad187a9d54dcf09cbe` |
| 3 | `theorem` | [shortCubic_noRoot_modSeven](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortcubic-noroot-modseven--63bfed4c3529f56c8e7c0291.md) | 46 | `result-track:63bfed4c3529f56c8e7c0291d61763ac202bcd779ba3147480186006f71d91be` |
| 4 | `theorem` | [shortCubic_noIntegerRoot](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortcubic-nointegerroot--416908d04f78c884cf880962.md) | 52 | `result-track:416908d04f78c884cf8809621a6c68758e0bde89d0ababfe08b25039e60fc68b` |
| 5 | `theorem` | [shortCubic_noRationalRoot](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortcubic-norationalroot--6db4d9c1d129b2e2a30b487e.md) | 63 | `result-track:6db4d9c1d129b2e2a30b487ec86b05cc9a2aa3672f3a6b2588b0e9b11838415f` |
| 6 | `theorem` | [shortA_relation](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shorta-relation--f23e511a29630838ca6e2938.md) | 78 | `result-track:f23e511a29630838ca6e293874645d7d9c808aabfac8b333e57a5c33c4fe9bea` |
| 7 | `theorem` | [shortB_relation](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortb-relation--6bd46e62704a2299d16e1fdb.md) | 82 | `result-track:6bd46e62704a2299d16e1fdb7e2eb65aa41ccf31d4f95ba027c1afdef79c0795` |
| 8 | `theorem` | [shortEquation_of_record](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/shortequation-of-record--44d32e4b376e063f43a81463.md) | 89 | `result-track:44d32e4b376e063f43a81463384bc47eada98cbcba091a8a26b85f3a3f366fdd` |
| 9 | `theorem` | [noRationalAffineNegationFixedPoint](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/norationalaffinenegationfixedpoint--95a066e8c4633acfa4131dc9.md) | 120 | `result-track:95a066e8c4633acfa4131dc9c66a19920724a44c8422c545558fa055902ba996` |
| 10 | `theorem` | [noRationalVerticalTangency](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/declarations/norationalverticaltangency--d0f44097bfa85e61c885bfe4.md) | 134 | `result-track:d0f44097bfa85e61c885bfe48762b7c4394024abf4d038c19e8ef8375f806703` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
