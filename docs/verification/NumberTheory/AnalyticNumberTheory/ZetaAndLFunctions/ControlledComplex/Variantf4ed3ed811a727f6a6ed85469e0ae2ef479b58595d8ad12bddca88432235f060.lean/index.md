# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ControlledComplex.Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6efafca17c88e159d550756bab438bf0c0eedf0c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6efafca17c88e159d550756bab438bf0c0eedf0c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.TheoremBarycenter` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CCIdentifier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/ccidentifier--820fac468a6f8ace46541479.md) | 19 | `declaration-track:820fac468a6f8ace4654147910dae848c4caade7a91377bad30c9e24cf1795e3` |
| 2 | `structure` | [ControlledComplexPlane](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/controlledcomplexplane--395a9ff6c65486b051e666a3.md) | 34 | `declaration-track:395a9ff6c65486b051e666a3fcf1069e7bce25a962ca8fbc01eaaeaec23d9daf` |
| 3 | `def` | [trivialComplexObservation](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/trivialcomplexobservation--d42b03f041cb8edbe1566a83.md) | 42 | `declaration-track:d42b03f041cb8edbe1566a8371be0899bde27dda7dde9c27881f1da0569f134b` |
| 4 | `def` | [trivialComplexObservationImageEquiv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/trivialcomplexobservationimageequiv--a2953d2e566cd98434e63eca.md) | 47 | `declaration-track:a2953d2e566cd98434e63eca46bd81d24ab1a44ec610b4e3880f19488f8fe9d2` |
| 5 | `theorem` | [complexPlane_trivialControlRecovery](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/complexplane-trivialcontrolrecovery--5279a0f53d8139880782bc16.md) | 60 | `result-track:5279a0f53d8139880782bc16af97a0eb205d0bd1f28985d2d7c4bff445b353a3` |
| 6 | `theorem` | [complexAffine_scalesDistance](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/complexaffine-scalesdistance--6c17658256984617663c3f11.md) | 66 | `result-track:6c17658256984617663c3f11377d1760f9ecbe93f6eca476f339f66ecb7d1ef6` |
| 7 | `abbrev` | [RiemannSphere](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/riemannsphere--3bd87dcb4fbca67b18fcedb8.md) | 72 | `declaration-track:3bd87dcb4fbca67b18fcedb8cb83f51d9543b28c9969ee9cb8b1333d960e86b4` |
| 8 | `structure` | [ControlledRiemannSphereAdapter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/controlledriemannsphereadapter--989cf32cd37d49f73faeb853.md) | 77 | `declaration-track:989cf32cd37d49f73faeb85333aedfd4092d8d3cbb8584c9098ea065dbca8606` |
| 9 | `def` | [InClassicalCriticalStrip](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/inclassicalcriticalstrip--31e048842ccefb9124f4f803.md) | 96 | `declaration-track:31e048842ccefb9124f4f803eb9a6f6a02941f477099c6c968161717e22dfc70` |
| 10 | `def` | [OnClassicalCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/onclassicalcriticalline--62dfe9ca655525863d959289.md) | 100 | `declaration-track:62dfe9ca655525863d95928994ddf942967b1e93cac2176874ffad39745279cd` |
| 11 | `def` | [OnClassicalLeftBoundary](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/onclassicalleftboundary--5279814ddf9b00a7ec6965c0.md) | 103 | `declaration-track:5279814ddf9b00a7ec6965c0d59735a77aabf9b1369253609643c1e38dfa281c` |
| 12 | `def` | [OnClassicalRightBoundary](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/onclassicalrightboundary--f7735529d65f9c0ed1ae1379.md) | 104 | `declaration-track:f7735529d65f9c0ed1ae137916ca5b8653ecadeba90ec808175f0ad8ef15e946` |
| 13 | `def` | [InControlledCriticalStrip](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/incontrolledcriticalstrip--fe6d9e1e4c61f1628d27a7aa.md) | 107 | `declaration-track:fe6d9e1e4c61f1628d27a7aa9cdecff535ec074ab28b1c3acdd911cfa06ccce3` |
| 14 | `def` | [OnControlledGeometricCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/oncontrolledgeometriccriticalline--6ffa47cdfc15a855e3d986d4.md) | 115 | `declaration-track:6ffa47cdfc15a855e3d986d491f6c12e0ef5bc68ff25b73f8e5a65bfb315df3e` |
| 15 | `def` | [criticalReflection](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/criticalreflection--4adb32d25ceeba1761a23557.md) | 123 | `declaration-track:4adb32d25ceeba1761a2355750785bbdff84f0f93906322fb85705b67cc98b38` |
| 16 | `theorem` | [criticalReflection_involutive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/criticalreflection-involutive--42ed7f1c9b4c2a5e090867cf.md) | 126 | `result-track:42ed7f1c9b4c2a5e090867cf69fc46a2e8e2bd69cff11bfe84e75e912e2eb1fc` |
| 17 | `theorem` | [criticalReflection_fixed_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/criticalreflection-fixed-iff--69b0565371c62b58d6bcd28a.md) | 131 | `result-track:69b0565371c62b58d6bcd28a8761e278e37cf761a3da201dfa7b012da8a589db` |
| 18 | `structure` | [ControlledReflectionLift](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/controlledreflectionlift--b8ea494ee36920351ab36798.md) | 147 | `declaration-track:b8ea494ee36920351ab36798a018494fffa674aa0895c9222aacff6eb3b5022d` |
| 19 | `def` | [OnControlledFixedCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/oncontrolledfixedcriticalline--06264aae7dcbde2be067ab6e.md) | 157 | `declaration-track:06264aae7dcbde2be067ab6ea6586672f242478f6f2bc6725190140a94ffaeb8` |
| 20 | `theorem` | [controlledFixedLine_subset_geometricLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/controlledfixedline-subset-geometricline--f53a1fec36c586dd063ebd0e.md) | 166 | `result-track:f53a1fec36c586dd063ebd0ec88ff404f69a40ef37c180f1717b7a4fd61df389` |
| 21 | `theorem` | [controlledFixedLine_eq_geometricLine_of_controlFixed](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/controlledfixedline-eq-geometricline-of-controlfixed--e463227a5389fd562839e78f.md) | 179 | `result-track:e463227a5389fd562839e78f4604081cd1e0c03b289d96b90c3a431df048de4d` |
| 22 | `theorem` | [criticalStripBoundary_barycenter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/criticalstripboundary-barycenter--b1cf29c17af087c990316fcc.md) | 194 | `result-track:b1cf29c17af087c990316fcce587bc6cfe1f5db5c6a67243c7515a0396d0d2d8` |
| 23 | `def` | [IsZetaZero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/iszetazero--7345252a11d5541a52bf03cb.md) | 198 | `declaration-track:7345252a11d5541a52bf03cb4946abb37f2113118312d235862c09bfaf904368` |
| 24 | `def` | [IsNontrivialZetaZero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/isnontrivialzetazero--827a41bdf1bea6ef325144c5.md) | 201 | `declaration-track:827a41bdf1bea6ef325144c5c6fbd4817790673c61cfcda8d8ec42fcc6b497a7` |
| 25 | `def` | [RiemannHypothesisStatement](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/riemannhypothesisstatement--41d3dce947b5df789a75ced6.md) | 206 | `declaration-track:41d3dce947b5df789a75ced6c29bc1e310fc3c23bcd68b996be5ea2f9dbe5009` |
| 26 | `structure` | [RiemannHypothesisProof](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/riemannhypothesisproof--7fb8174c38a0ec9abe5b2814.md) | 210 | `declaration-track:7fb8174c38a0ec9abe5b28147e70fd5606d1f03607ec3b6b51100e1698592312` |
| 27 | `theorem` | [riemannHypothesisStatement_iff_mathlib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variantf4ed3ed811a727f6a6ed85469e0ae2ef479b58595d8ad12bddca88432235f060.lean/declarations/riemannhypothesisstatement-iff-mathlib--da9bdcce90b3976495b0083e.md) | 214 | `result-track:da9bdcce90b3976495b0083e78718237c7001be260dc80a96a18aaa818fea849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
