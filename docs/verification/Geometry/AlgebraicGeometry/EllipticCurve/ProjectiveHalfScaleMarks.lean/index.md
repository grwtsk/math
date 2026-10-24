# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da8830139b47e8e4acd049022dc71be2ee7b4b08",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da8830139b47e8e4acd049022dc71be2ee7b4b08`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cleared](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/cleared--4578883e75814a2da98226bc.md) | 25 | `declaration-track:4578883e75814a2da98226bc296cb6b19ec55f8ac12087ad2e7d3fa16baeb489` |
| 2 | `def` | [affineIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/affineintegral--129fb359ee7c80689d106958.md) | 27 | `declaration-track:129fb359ee7c80689d106958a209385f74f00b9cd197b85a603e3b8ee8d969e2` |
| 3 | `def` | [mark](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark--5c5534a69f01ac20854701ae.md) | 31 | `declaration-track:5c5534a69f01ac20854701ae5ab32850f7c69947925af2c1a98f5fab4b468a4c` |
| 4 | `def` | [rational](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/rational--a68a9570a42e06991b39af91.md) | 34 | `declaration-track:a68a9570a42e06991b39af911ff72c7298539c7d8bdb8c490275634892700b07` |
| 5 | `def` | [binary](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/binary--e7cd69a3b068f86b3f109bb9.md) | 36 | `declaration-track:e7cd69a3b068f86b3f109bb90c56b91317baaf36fe1a6e421ecbb01718c327e2` |
| 6 | `theorem` | [divided_identity](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/divided-identity--a35ae3d720995b686c57f083.md) | 38 | `result-track:a35ae3d720995b686c57f083482a18f03927624ea57bec1e3af6cadf809dae4f` |
| 7 | `theorem` | [mark_Z_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-z-ne-zero--dbf33831ce190a480b3eb7b2.md) | 43 | `result-track:dbf33831ce190a480b3eb7b29e073bcb869c6944fbd54867e388eff787ba6ae0` |
| 8 | `theorem` | [mark_ratios](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-ratios--b4419a05fce0aaac2a2b0fdb.md) | 48 | `result-track:b4419a05fce0aaac2a2b0fdb5a1b911260a766c196fb5ea03b9c19922f55fb5c` |
| 9 | `theorem` | [mark_class](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-class--21948879c6437ea33f57c246.md) | 58 | `result-track:21948879c6437ea33f57c2467a7a5ac14f1e11cf4bd723f0b83d016a26b19bcb` |
| 10 | `theorem` | [half_image_polynomial](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/half-image-polynomial--e6b03322660d753d31381fc4.md) | 67 | `result-track:e6b03322660d753d31381fc42d22645e17f5f3bce94725bd761159f5e02a372e` |
| 11 | `theorem` | [half_cleared_equation](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/half-cleared-equation--ed63e6dc756b86356c977abb.md) | 76 | `result-track:ed63e6dc756b86356c977abbef462d16804faac744dc8af41656ef86c7ea4a44` |
| 12 | `theorem` | [mark_equation_of_cleared](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-equation-of-cleared--ae7a31983381868e5914aca9.md) | 90 | `result-track:ae7a31983381868e5914aca908d3910690bc779745cd06b8ecdccb8aa7618869` |
| 13 | `theorem` | [affineIntegral_binary](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/affineintegral-binary--5f6f03009a8ef0f842e7cf9f.md) | 101 | `result-track:5f6f03009a8ef0f842e7cf9f80487425b0395b3143a2a4ca9691890a993156d0` |
| 14 | `theorem` | [cleared_binary_of_odd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/cleared-binary-of-odd--45a70df06cafe1470e555f6a.md) | 105 | `result-track:45a70df06cafe1470e555f6aa6278cec5b04894b51b3e952761ca9aa6f16af64` |
| 15 | `theorem` | [mark_binary_of_divisible](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-binary-of-divisible--ed38e509d2b3b99fae529a1b.md) | 115 | `result-track:ed38e509d2b3b99fae529a1b2d0da24a827737a46d5bbb007db6b3ce58cd7eea` |
| 16 | `theorem` | [mark_binary_of_odd](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-binary-of-odd--cd78b1798c0e9bbcf65b2ebc.md) | 119 | `result-track:cd78b1798c0e9bbcf65b2ebc05ea2f84533397a1c32aee05d1803fc0987890b0` |
| 17 | `theorem` | [mark_binary_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/mark-binary-ne-zero--f087aae77f87e271b4f0cb3e.md) | 125 | `result-track:f087aae77f87e271b4f0cb3e4a6b941f9ca0f4a95d41b1c593b73f873c915b0d` |
| 18 | `theorem` | [unnormalized_zero_residue](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/unnormalized-zero-residue--14e110b79fef8cf0ca3f69be.md) | 138 | `result-track:14e110b79fef8cf0ca3f69bec4a78099d0582873bf47a9de1cc8961dbdb3db56` |
| 19 | `theorem` | [infinity_chart](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/infinity-chart--5ba8b4ad932aaf9590195e3c.md) | 144 | `result-track:5ba8b4ad932aaf9590195e3c15643c360a440a53fa9d90920f64ab93f69a1715` |
| 20 | `theorem` | [infinity_chart_equation](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/infinity-chart-equation--cf4ac026d6f0b72d7a66e453.md) | 153 | `result-track:cf4ac026d6f0b72d7a66e453f1cdce645a2469ebd2373cd248c1ff0171dc69cc` |
| 21 | `theorem` | [infinity_nonsingular](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/infinity-nonsingular--8008894d94e96536457a7906.md) | 162 | `result-track:8008894d94e96536457a790620e165a6478973eef09e9793cfaad48e44086f10` |
| 22 | `theorem` | [affine_origin_nonsingular_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/ProjectiveHalfScaleMarks.lean/declarations/affine-origin-nonsingular-iff--555e3fa244a5e1ddc6489fc9.md) | 166 | `result-track:555e3fa244a5e1ddc6489fc9fdf8c88817150ce9b00d71fc3bd3081f548dd235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
