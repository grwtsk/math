# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeTwoTorsion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0720c93f279a3f2abc8694e2a69d0548e57d2a6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0720c93f279a3f2abc8694e2a69d0548e57d2a6`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NegationObstruction`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NegationObstruction.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nativeCurve](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativecurve--31242fa41071cd64021fb6f6.md) | 48 | `declaration-track:31242fa41071cd64021fb6f69ed0af4cce273f3a0ccce52eff5b0c6039966247` |
| 2 | `theorem` | [nativeEquation_iff](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativeequation-iff--26139f3ab4071fb477ca9df7.md) | 56 | `result-track:26139f3ab4071fb477ca9df75933249f4480b4a2fa84cc38fdc78daff49337ab` |
| 3 | `theorem` | [nativeDiscriminant_eq](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativediscriminant-eq--0ba0120dc24df67fdc7705a9.md) | 64 | `result-track:0ba0120dc24df67fdc7705a9eaabce96af6a1fa468b84cdb53b3af4dd50676eb` |
| 4 | `theorem` | [nativeDiscriminant_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativediscriminant-ne-zero--28f29499e9b6ac443b1d1097.md) | 71 | `result-track:28f29499e9b6ac443b1d1097bfd4db46a9141e46880cece9394f9e32be399230` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/instance--2f6b7a3f4988acdf927bcb3a.md) | 77 | `declaration-track:2f6b7a3f4988acdf927bcb3ae96a762dc0354c6a0f5e3108c33ab0a5981a7f80` |
| 6 | `def` | [nativePoint](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativepoint--ad31e35baf0fccee34a83038.md) | 82 | `declaration-track:ad31e35baf0fccee34a830382d45a6300f8d2ab5bb96243d709c8cca89f27321` |
| 7 | `theorem` | [nativeNegY](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativenegy--5aa84998244a2b49fae1ab2a.md) | 88 | `result-track:5aa84998244a2b49fae1ab2aafcac8d3b66332044c508c40e25c8e9f58de2c28` |
| 8 | `theorem` | [nativePoint_eq_neg_imp_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativepoint-eq-neg-imp-zero--b1f44bd48fb59fe575948968.md) | 95 | `result-track:b1f44bd48fb59fe575948968acb67f0ada28a33b47873decfb0cd1edb25e56fe` |
| 9 | `theorem` | [nativeNoTwoTorsion](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativenotwotorsion--24669ae203b40979505d7e81.md) | 115 | `result-track:24669ae203b40979505d7e815453d8cfc3fe800f55c903fcb091ee77f84f7159` |
| 10 | `theorem` | [nativeNoTwoTorsion_for_descent](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239NativeTwoTorsion.lean/declarations/nativenotwotorsion-for-descent--73576b70b3fb0938a0dc1e08.md) | 124 | `result-track:73576b70b3fb0938a0dc1e08e7e6e135f605954d42ad0d0b3f82c81aed823009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
