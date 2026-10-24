# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteSourceLocalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbdaac7f5e29375f211a4a437756f9f0fe87ee8d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbdaac7f5e29375f211a4a437756f9f0fe87ee8d`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239IntegralOrderReduction`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239IntegralOrderReduction.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceLocalizingProduct](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizingproduct--d0baccb5c265b17faf5ce10c.md) | 52 | `declaration-track:d0baccb5c265b17faf5ce10cc79118d11845df62e4be4dd12f3a7d6b01a50967` |
| 2 | `theorem` | [sourceLocalizingProduct_reduction_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizingproduct-reduction-ne-zero--563aa2ece81d8538c433eb4c.md) | 57 | `result-track:563aa2ece81d8538c433eb4c7378756b3916ec361c3b04c6efaad1a802f04feb` |
| 3 | `theorem` | [sourceLocalizingProduct_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizingproduct-ne-zero--609bd1263a1e65a3ecc909bc.md) | 70 | `result-track:609bd1263a1e65a3ecc909bc03a60e2d46a9846e4c3a301f959719eb46a0987b` |
| 4 | `abbrev` | [SourceLocalRing](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalring--8c6eaced614e5bee4419e0d6.md) | 79 | `declaration-track:8c6eaced614e5bee4419e0d656ef9baee267995285e359085455e27f7f24ff84` |
| 5 | `def` | [sourceLocalReduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalreduction--b1eaf0996695646151e145dd.md) | 85 | `declaration-track:b1eaf0996695646151e145ddc1e07689a3c8407320c49f378d4efd98e29e9f24` |
| 6 | `theorem` | [sourceLocalReduction_algebraMap](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalreduction-algebramap--365d220e4a85c74054611402.md) | 94 | `result-track:365d220e4a85c74054611402b9969858c7f33d00f9e73a848d97bc33ac502b8f` |
| 7 | `theorem` | [sourceOrderLocalElement_dvd_product](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourceorderlocalelement-dvd-product--83468f960502f2b611367471.md) | 104 | `result-track:83468f960502f2b611367471f619c798e41f5367fa6f12dc62f7a0b4a6e23827` |
| 8 | `theorem` | [sourceOrderLocalElement_isUnit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourceorderlocalelement-isunit--571f28be93a15a33497db9d0.md) | 113 | `result-track:571f28be93a15a33497db9d07516555ac1c45ced4a1cdf8ec6f65e010eee4a5b` |
| 9 | `def` | [sourceLocalizedUnit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizedunit--95a28872e0c580187b7c3672.md) | 122 | `declaration-track:95a28872e0c580187b7c3672d24ae49d9d7fefaa547c9f4920285a8704becc46` |
| 10 | `theorem` | [sourceLocalizedUnit_coe](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizedunit-coe--5942dd1938dbba92bd5d7fc9.md) | 126 | `result-track:5942dd1938dbba92bd5d7fc9235a4a8feb936904c7a59f94d6659f69fb5a9513` |
| 11 | `theorem` | [sourceLocalizedUnit_reduction](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalizedunit-reduction--97723d502fc0e050c9843f48.md) | 135 | `result-track:97723d502fc0e050c9843f48d6be3075be31c99e6558bd7309bc271b88270040` |
| 12 | `def` | [sourceLocalSquareClassCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalsquareclasscharacter--990ea54e8834a57b616fed6f.md) | 143 | `declaration-track:990ea54e8834a57b616fed6f3d0c6b3277879cff0a4bf394f6ccb3d2b51a27be` |
| 13 | `def` | [sourceLocalSquareClassBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalsquareclassbit--3d54e6794aa2018b10ddc026.md) | 152 | `declaration-track:3d54e6794aa2018b10ddc02615c71e3541a744d017122ebaca48052a17a79870` |
| 14 | `theorem` | [sourceLocalSquareClassBit_eq_sourceQuadraticBit](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalsquareclassbit-eq-sourcequadraticbit--bcc8fe440e368c23d23378ba.md) | 161 | `result-track:bcc8fe440e368c23d23378ba0fca2b8a38611a6671d1ffd518ea116f9003f9bd` |
| 15 | `theorem` | [sourceLocalSquareClassBit_eq_matrix_of_SourceBitsMatch](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239FiniteSourceLocalization.lean/declarations/sourcelocalsquareclassbit-eq-matrix-of-sourcebitsmatch--de4a648d6642dd05cc7f236c.md) | 181 | `result-track:de4a648d6642dd05cc7f236ce77e16d88ad9cf93ea5317c645835fcda01928e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
