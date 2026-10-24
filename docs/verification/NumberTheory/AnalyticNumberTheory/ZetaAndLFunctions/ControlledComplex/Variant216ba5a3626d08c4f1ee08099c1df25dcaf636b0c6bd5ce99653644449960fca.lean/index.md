# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ControlledComplex.Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41b53fe54794716fecb8d96347f22173743c6fb5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41b53fe54794716fecb8d96347f22173743c6fb5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.TheoremBarycenter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CCIdentifier](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/ccidentifier--b4b001b19cb727250a93acac.md) | 27 | `declaration-track:b4b001b19cb727250a93acaccadc7b1a70d9dda3556465bc4f4c5cfae3b2b60c` |
| 2 | `structure` | [ControlledComplexPlane](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/controlledcomplexplane--9d645d332e4a9e508824551c.md) | 42 | `declaration-track:9d645d332e4a9e508824551c009e6f5ac04deb64edfdf164092a40782cc8dedd` |
| 3 | `def` | [trivialComplexObservation](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/trivialcomplexobservation--2f3753fe8698a7a03075d8c7.md) | 50 | `declaration-track:2f3753fe8698a7a03075d8c75cf56380feabf681d7c66e04d51d125b6e9637ab` |
| 4 | `def` | [trivialComplexObservationImageEquiv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/trivialcomplexobservationimageequiv--95fc2880aca13a1e2980df4f.md) | 55 | `declaration-track:95fc2880aca13a1e2980df4f74178b10025a20ea3949f2e67ac0c877bf4b243f` |
| 5 | `theorem` | [complexPlane_trivialControlRecovery](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/complexplane-trivialcontrolrecovery--62f07abd9c69aa4613042be7.md) | 68 | `result-track:62f07abd9c69aa4613042be7eeecee732b16d6d7150d43ce33bd3292a3546b79` |
| 6 | `theorem` | [complexAffine_scalesDistance](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/complexaffine-scalesdistance--24c657d8df08fb5d37ca7b34.md) | 74 | `result-track:24c657d8df08fb5d37ca7b3494e195aafe36657deb3c199c060e32179e645cd9` |
| 7 | `abbrev` | [RiemannSphere](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/riemannsphere--ccf0c6f7d96a93f1de719c59.md) | 80 | `declaration-track:ccf0c6f7d96a93f1de719c59b73bcf2004a149be6c1673f550b370d43fc5f2b0` |
| 8 | `structure` | [ControlledRiemannSphereAdapter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/controlledriemannsphereadapter--c0504c23d5b663e31bc76be2.md) | 85 | `declaration-track:c0504c23d5b663e31bc76be2a39d8834a57ab7f08f08f0326d980ba2b6a29d06` |
| 9 | `def` | [InClassicalCriticalStrip](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/inclassicalcriticalstrip--e93bd5271265a1b56e15f3c2.md) | 104 | `declaration-track:e93bd5271265a1b56e15f3c26a9c78a91396f8256a6252539fed365213cc8916` |
| 10 | `def` | [OnClassicalCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/onclassicalcriticalline--5b20652d962a14044e5e2be5.md) | 108 | `declaration-track:5b20652d962a14044e5e2be581509dc9188d19e2832ca73eefc6acdb1a70044c` |
| 11 | `def` | [OnClassicalLeftBoundary](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/onclassicalleftboundary--94354468505e6f021a1fedd8.md) | 111 | `declaration-track:94354468505e6f021a1fedd885c18614804f74c9d1641ce5bcf7443bc0e83135` |
| 12 | `def` | [OnClassicalRightBoundary](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/onclassicalrightboundary--4871e11fad59e6252994341e.md) | 112 | `declaration-track:4871e11fad59e6252994341e811459d8f1e99647a724fc589b4e2c3b72963faa` |
| 13 | `def` | [InControlledCriticalStrip](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/incontrolledcriticalstrip--e61a07d1f96e68515b5f76d8.md) | 115 | `declaration-track:e61a07d1f96e68515b5f76d83e6d67e530b85acb94f498fc0a0ce2dedbf7022e` |
| 14 | `def` | [OnControlledGeometricCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/oncontrolledgeometriccriticalline--330bb34558d1b96dd19c126d.md) | 123 | `declaration-track:330bb34558d1b96dd19c126d1b1858dd2c65985593a1c85c9c606046adb7ad62` |
| 15 | `def` | [criticalReflection](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/criticalreflection--d2b9d2444426f5fc8561a304.md) | 131 | `declaration-track:d2b9d2444426f5fc8561a30451e820d061d81586b0b96b8240127698b1cc9e6f` |
| 16 | `theorem` | [criticalReflection_involutive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/criticalreflection-involutive--e9fba1ecf16bfe354eaeb4db.md) | 134 | `result-track:e9fba1ecf16bfe354eaeb4db6d72fd35745201fe6f5c1ce1aa9a721ca6bbbad9` |
| 17 | `theorem` | [criticalReflection_fixed_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/criticalreflection-fixed-iff--af347a6ac024534363cf9780.md) | 139 | `result-track:af347a6ac024534363cf978010ee8b152d0a7a6e4ce20dcd4a35e9f24349706a` |
| 18 | `structure` | [ControlledReflectionLift](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/controlledreflectionlift--f5a2172322a9d8efad7f0852.md) | 155 | `declaration-track:f5a2172322a9d8efad7f08522a3452d04d1f4a51b82d0d6f7cbee0761d78b3cb` |
| 19 | `def` | [OnControlledFixedCriticalLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/oncontrolledfixedcriticalline--1fd695beebf1ec4ad09edfa1.md) | 165 | `declaration-track:1fd695beebf1ec4ad09edfa156c76d79e657f4b5b61d54face6c28fd03460627` |
| 20 | `theorem` | [controlledFixedLine_subset_geometricLine](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/controlledfixedline-subset-geometricline--40246b319bef2389e2fb06e9.md) | 174 | `result-track:40246b319bef2389e2fb06e9ee20ffb7c6a574c6c17790b01f152c82f2f2be38` |
| 21 | `theorem` | [controlledFixedLine_eq_geometricLine_of_controlFixed](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/controlledfixedline-eq-geometricline-of-controlfixed--e6820e3d3852efb4361a1312.md) | 187 | `result-track:e6820e3d3852efb4361a1312ff72967c8a1bf630a183a1473fdbacda9c3bdebc` |
| 22 | `theorem` | [criticalStripBoundary_barycenter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/criticalstripboundary-barycenter--b0c535b7e053119c2b00ddd9.md) | 202 | `result-track:b0c535b7e053119c2b00ddd998bb5ea9fb802994a5bf9955fbf08030d622a408` |
| 23 | `def` | [IsZetaZero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/iszetazero--59358f2e5859a00f03860f46.md) | 206 | `declaration-track:59358f2e5859a00f03860f460c91bbe73fc23905e47d9634c289f5b1e7a629cb` |
| 24 | `def` | [IsNontrivialZetaZero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/isnontrivialzetazero--a10f2d955163b0e1ea1c64f4.md) | 209 | `declaration-track:a10f2d955163b0e1ea1c64f4bc2adb07bbea35121f2e637e0f5ac62215393c2f` |
| 25 | `def` | [RiemannHypothesisStatement](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/riemannhypothesisstatement--41c6092a1578ee86cc0595fa.md) | 214 | `declaration-track:41c6092a1578ee86cc0595fa4c06d86464852e547e89a15481e796fbcf09f903` |
| 26 | `structure` | [RiemannHypothesisProof](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/riemannhypothesisproof--c65423646c5b0d1daaa57f29.md) | 218 | `declaration-track:c65423646c5b0d1daaa57f29208676552ef529890f371407bd2f501ac036165c` |
| 27 | `theorem` | [riemannHypothesisStatement_iff_mathlib](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ControlledComplex/Variant216ba5a3626d08c4f1ee08099c1df25dcaf636b0c6bd5ce99653644449960fca.lean/declarations/riemannhypothesisstatement-iff-mathlib--a1571262edb4cf789f7054ca.md) | 222 | `result-track:a1571262edb4cf789f7054cad0971a4b2be88151454b07d58aac79aa88b10ce8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
