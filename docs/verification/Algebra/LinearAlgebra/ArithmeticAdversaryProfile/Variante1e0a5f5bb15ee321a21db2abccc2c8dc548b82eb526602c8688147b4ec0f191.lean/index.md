# Verification target: GRWTSK.Algebra.LinearAlgebra.ArithmeticAdversaryProfile.Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a428e02ef1c35265bb71d20e6c7fca78e5242ecf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a428e02ef1c35265bb71d20e6c7fca78e5242ecf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.AdversaryInvariant` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Resolution.EffectiveArithmeticSource` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArithmeticKernelLift](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmetickernellift--532a6bc626b2326893a54b79.md) | 19 | `declaration-track:532a6bc626b2326893a54b79401b74ada8b412120285d1c15eb6d7333b3820f4` |
| 2 | `structure` | [ArithmeticAdversaryWitness](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmeticadversarywitness--a069375b9425bc288ae6657a.md) | 31 | `declaration-track:a069375b9425bc288ae6657acc73c4922bb2d8c0e40bcc0beade5db46010bea7` |
| 3 | `def` | [globalNorm](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/globalnorm--5f5bc10757001e0587220490.md) | 51 | `declaration-track:5f5bc10757001e0587220490c78ebc1d004c09f89a221f2016d41551af9bc487` |
| 4 | `def` | [queryLocalNorm](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/querylocalnorm--390daa31464cf2d0a52b44a9.md) | 55 | `declaration-track:390daa31464cf2d0a52b44a9c55aced46f9cee99be5564af25caba7e321a1641` |
| 5 | `structure` | [NormProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/normprofile--b9d27939a239a40d69337e24.md) | 61 | `declaration-track:b9d27939a239a40d69337e2439261d17a75479d085b64f2baaa0c6563538051e` |
| 6 | `def` | [normProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/normprofile--4ca41df0071bc27121abb801.md) | 65 | `declaration-track:4ca41df0071bc27121abb801bb65150fd1d296c7dbb9ad08d6d19a881d6e694e` |
| 7 | `structure` | [ResourceSensitiveProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/resourcesensitiveprofile--7cc082b34079d02810078e8a.md) | 75 | `declaration-track:7cc082b34079d02810078e8a0079ebf0cba941813d9cac6a52067fbb7271b3cc` |
| 8 | `def` | [resourceSensitiveProfile](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/resourcesensitiveprofile--5051e844d346e12ed36524e2.md) | 87 | `declaration-track:5051e844d346e12ed36524e2b080352b6bf89a16fb9106f9aa212584b89c7b75` |
| 9 | `def` | [ResourceSensitiveProfile.hardnessRatio](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/resourcesensitiveprofile-hardnessratio--396eca2434001c697eaa6ca7.md) | 108 | `declaration-track:396eca2434001c697eaa6ca705c8a3e7b2fade6908f6115dac5b9fda8971b549` |
| 10 | `def` | [ratio](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/ratio--74c0b8d36496d332c870cf27.md) | 113 | `declaration-track:74c0b8d36496d332c870cf27e8ebf872bbe58e72b01a26b76d3f689b8136fcd8` |
| 11 | `theorem` | [ratio_eq_global_div_queryLocal](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/ratio-eq-global-div-querylocal--c2e0b63b1d320a8580d8fcd5.md) | 117 | `result-track:c2e0b63b1d320a8580d8fcd5e2995c588ab541e752d1938ae14692de929c6b2a` |
| 12 | `theorem` | [resourceSensitiveProfile_hardnessRatio_eq](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/resourcesensitiveprofile-hardnessratio-eq--56014751b08cc1146a111434.md) | 125 | `result-track:56014751b08cc1146a1114345bf2b3dafef32b9d10aec9fbe4a21ebbe568477f` |
| 13 | `structure` | [ResourceProfileReduction](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/resourceprofilereduction--409062c8dbc1263b46a281e4.md) | 136 | `declaration-track:409062c8dbc1263b46a281e42b63d6f33463180cd7e4554aae2c4ba8f3dc026b` |
| 14 | `def` | [arithmeticAdversaryRatios](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmeticadversaryratios--fcd1a8503534a864b6d4e9ec.md) | 150 | `declaration-track:fcd1a8503534a864b6d4e9ec966806a06433967dc79141217c14074790e99ae4` |
| 15 | `def` | [arithmeticAdversaryCoupling](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmeticadversarycoupling--4d221328d4bbf0dbdb3aa350.md) | 161 | `declaration-track:4d221328d4bbf0dbdb3aa3503f67e4aa810059daf06fafb6dc510f760c387ed5` |
| 16 | `def` | [generalAdversaryRatios](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/generaladversaryratios--920a0d4ac28f45584b619913.md) | 171 | `declaration-track:920a0d4ac28f45584b6199133719a878449fc7f5a8dbe2e5fa4f0336ccf281d5` |
| 17 | `def` | [generalAdversaryOptimum](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/generaladversaryoptimum--f805c41d93134eeeab38063c.md) | 179 | `declaration-track:f805c41d93134eeeab38063c6f8f4697ff3f04f40548f6509a871242a8ec0109` |
| 18 | `theorem` | [arithmeticAdversaryRatios_subset_general](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmeticadversaryratios-subset-general--a87e6dffc4326c4445440d7a.md) | 186 | `result-track:a87e6dffc4326c4445440d7a6991f4c4ad8de926adee6d6fd1322cf4a725e7f4` |
| 19 | `theorem` | [arithmeticAdversaryCoupling_le_general](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmeticadversarycoupling-le-general--047faf167c017fceba24a1f7.md) | 198 | `result-track:047faf167c017fceba24a1f7b26e2c291e35004bf68ccbb29f8292e88f46b53b` |
| 20 | `structure` | [ArithmeticKernelNormCertificate](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/arithmetickernelnormcertificate--2345ae9fa05967713c494c4b.md) | 214 | `declaration-track:2345ae9fa05967713c494c4b322ee628b40224683b52e1e4f7e836fcf61af78e` |
| 21 | `theorem` | [ratio_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/ratio-lower-bound--c12141065c1f9bb7eb6c4f7f.md) | 240 | `result-track:c12141065c1f9bb7eb6c4f7f43938f96afbf980fc861c4deba2ede0b7871d4ac` |
| 22 | `theorem` | [coupling_lower_bound](../../../../../mathematics/Algebra/LinearAlgebra/ArithmeticAdversaryProfile/Variante1e0a5f5bb15ee321a21db2abccc2c8dc548b82eb526602c8688147b4ec0f191.lean/declarations/coupling-lower-bound--6ae028146207c114684741e5.md) | 254 | `result-track:6ae028146207c114684741e52e2976faab1d9a0c8f544952e2a545c6799b68e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
