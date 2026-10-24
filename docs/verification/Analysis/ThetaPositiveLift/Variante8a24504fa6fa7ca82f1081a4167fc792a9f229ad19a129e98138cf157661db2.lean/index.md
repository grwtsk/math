# Verification target: GRWTSK.Analysis.ThetaPositiveLift.Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/index.md) · [Full source](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70fa868eeeeca69d6ff9079aead2bab2c3ea6eb3`.

Source path: `GRWTSK/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiInvolutionCompression` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotExistence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.PosDef` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiBaseMomentMagnitude_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphibasemomentmagnitude-pos--2301d56e3063d44f0f67f096.md) | 35 | `result-track:2301d56e3063d44f0f67f0965626f2e5cd6255d3c5409618cc37fd2b84d05c09` |
| 2 | `theorem` | [thetaPhiBaseChristoffelMagnitude_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphibasechristoffelmagnitude-pos--ecb40aa32e5509a863387f24.md) | 52 | `result-track:ecb40aa32e5509a863387f245774e18ead4315ac15978fa1b70e1a3817cf77a1` |
| 3 | `theorem` | [thetaPhiSignedMomentNode_injective](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentnode-injective--a8ba80264535ec327d5a4235.md) | 61 | `result-track:a8ba80264535ec327d5a4235728a3a32eb24d37862b175edb36162460df58540` |
| 4 | `theorem` | [thetaPhiSignedMomentKrylovPivot_submatrix_eq](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovpivot-submatrix-eq--11feaaba61733a8873c70af1.md) | 72 | `result-track:11feaaba61733a8873c70af145138f69e402366bcecbe26e3ffacf0734a73a6d` |
| 5 | `theorem` | [thetaPhiSignedMomentKrylovPivot_minor_ne_zero](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovpivot-minor-ne-zero--4f6451167f71dce327a7b6cb.md) | 95 | `result-track:4f6451167f71dce327a7b6cb35507c472d5d5c05c28b98dabf1f4a54208d2816` |
| 6 | `theorem` | [thetaPhiSignedMomentKrylovFrame_rank](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovframe-rank--1447c3a4ce77e01d9a1e633a.md) | 117 | `result-track:1447c3a4ce77e01d9a1e633ab3bf859b858e4c435c5211eb41a976239bcb134d` |
| 7 | `def` | [thetaPhiSignedMomentKrylovGram](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram--7bac63600577061fd6a6f04c.md) | 129 | `declaration-track:7bac63600577061fd6a6f04c975a9e411240c94363853b55bfc6ea8e5853cc5c` |
| 8 | `theorem` | [thetaPhiSignedMomentKrylovGram_rank](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram-rank--8fdc0267816262471fde1a1d.md) | 136 | `result-track:8fdc0267816262471fde1a1dee2e6dae57977f8d9cbbaf15861beb754b1b1fa0` |
| 9 | `theorem` | [thetaPhiSignedMomentKrylovGram_posSemidef](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram-possemidef--6bed89df3e81126d3f8edde2.md) | 146 | `result-track:6bed89df3e81126d3f8edde2932134d7c28101b1509698e11d5f09e5729f6fca` |
| 10 | `theorem` | [thetaPhiSignedMomentKrylovGram_det_ne_zero](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram-det-ne-zero--885d6504c47a3f070f589b6a.md) | 155 | `result-track:885d6504c47a3f070f589b6ac3e7cade77bbb5a2091cf4d186228b38a063cb86` |
| 11 | `theorem` | [thetaPhiSignedMomentKrylovGram_posDef](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram-posdef--4bfbe86f7a2f9163de0463ec.md) | 178 | `result-track:4bfbe86f7a2f9163de0463ec402a154e2501795030edf57cce4a8c666340f33f` |
| 12 | `theorem` | [thetaPhiSignedMomentKrylovGram_det_pos](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphisignedmomentkrylovgram-det-pos--f44ccf1919ef1b3f21a6dde3.md) | 191 | `result-track:f44ccf1919ef1b3f21a6dde353e7e733673fe9a3e67eb48da037e44183485361` |
| 13 | `theorem` | [thetaPhiNormalizedParityCompression_nonnegative_iff](../../../../mathematics/Analysis/ThetaPositiveLift/Variante8a24504fa6fa7ca82f1081a4167fc792a9f229ad19a129e98138cf157661db2.lean/declarations/thetaphinormalizedparitycompression-nonnegative-iff--290e019b9fddbc59db4eda36.md) | 201 | `result-track:290e019b9fddbc59db4eda3658d5f600d677d1592d2d55352683f074411faac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
