# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239UnitSquareClassTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9fd036d8cf90dc01ef127b3747541e65c629051",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9fd036d8cf90dc01ef127b3747541e65c629051`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239LocalSquareClass`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitSquareClasses](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/unitsquareclasses--fbaaf34aead792c9dc6ad231.md) | 44 | `declaration-track:fbaaf34aead792c9dc6ad2312773fe466140412f9e29b90283b30701bcb41169` |
| 2 | `def` | [unitSquareClassMap](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/unitsquareclassmap--23406171c0b9f656b1bf465c.md) | 50 | `declaration-track:23406171c0b9f656b1bf465c1613721cd7952264e1cac66237764d894080f8a7` |
| 3 | `theorem` | [unitSquareClassMap_mk](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/unitsquareclassmap-mk--129c6db739506e2b1a4f0072.md) | 65 | `result-track:129c6db739506e2b1a4f00722e996c3e67a9ac0cca834e61097ed97a28a24f33` |
| 4 | `def` | [localUnitClassCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/localunitclasscharacter--741a6b1db9f4ec92e721f638.md) | 79 | `declaration-track:741a6b1db9f4ec92e721f6381955d3e80ff433830ab1806180e02488dd476166` |
| 5 | `theorem` | [localUnitClassCharacter_mk](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/localunitclasscharacter-mk--5eb7b3b153cb745c9da71e29.md) | 89 | `result-track:5eb7b3b153cb745c9da71e290d9b4cb5461ac68f33a651232d71a86a1111e17b` |
| 6 | `def` | [reduction49to7](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/reduction49to7--0aaaa4e9cb3a9dc038b24ccb.md) | 107 | `declaration-track:0aaaa4e9cb3a9dc038b24ccb7b669166a32a142a1e07dab0e7cf139c0dc871a8` |
| 7 | `def` | [reduction49to7SquareClassCharacter](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/reduction49to7squareclasscharacter--df918a68bf9f44abb7c884f0.md) | 112 | `declaration-track:df918a68bf9f44abb7c884f0d1253acebe473c408b3de07c84cb00a14a20d59d` |
| 8 | `theorem` | [noRationalRingReductionToPrime](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239UnitSquareClassTransport.lean/declarations/norationalringreductiontoprime--dd92dc15e14be6298c43cb71.md) | 120 | `result-track:dd92dc15e14be6298c43cb71869094944d91bedc51d29cd4bcfe9c492682b02b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
