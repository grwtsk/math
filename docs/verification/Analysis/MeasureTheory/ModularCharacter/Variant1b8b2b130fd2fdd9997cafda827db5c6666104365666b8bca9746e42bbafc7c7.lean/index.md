# Verification target: GRWTSK.Analysis.MeasureTheory.ModularCharacter.Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5a12cb26d4ccb936948aec569b00db1f24f9dc3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5a12cb26d4ccb936948aec569b00db1f24f9dc3`.

Source path: `GRWTSK/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Urysohn` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modularCharacterFun](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacterfun--656e49c21a3a45328907d178.md) | 46 | `declaration-track:656e49c21a3a45328907d178edd34b77b2f0c6a61f2b13000a56cab99e3a4fae` |
| 2 | `lemma` | [modularCharacterFun_eq_haarScalarFactor](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacterfun-eq-haarscalarfactor--d14bf9fb5c1623f3fc7d8332.md) | 53 | `result-track:d14bf9fb5c1623f3fc7d83325d8f54013e1c71638e2a1904539fc173318d68c5` |
| 3 | `lemma` | [map_right_mul_eq_modularCharacterFun_smul](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/map-right-mul-eq-modularcharacterfun-smul--b3a1e6bd48345b00190588bd.md) | 94 | `result-track:b3a1e6bd48345b00190588bde330553a143e8bbd08e2cefe726154f02d9b5fd7` |
| 4 | `lemma` | [modularCharacterFun_pos](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacterfun-pos--24d1fd096e8c5708225cb2db.md) | 100 | `result-track:24d1fd096e8c5708225cb2db6bc91d215a372a8c3c3ba1fa2428932cf296ca9d` |
| 5 | `lemma` | [modularCharacterFun_map_one](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacterfun-map-one--d72266df904a6799f1b04bf0.md) | 106 | `result-track:d72266df904a6799f1b04bf03827c47a78c784ba3b166a74c5c83d9e05a87527` |
| 6 | `lemma` | [modularCharacterFun_map_mul](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacterfun-map-mul--22b59aa09f8dc7a877baf6ec.md) | 110 | `result-track:22b59aa09f8dc7a877baf6ecace59eccb160a2498e7d1db828afe074a7ed4335` |
| 7 | `def` | [modularCharacter](../../../../../mathematics/Analysis/MeasureTheory/ModularCharacter/Variant1b8b2b130fd2fdd9997cafda827db5c6666104365666b8bca9746e42bbafc7c7.lean/declarations/modularcharacter--6d3518264adad38c2484e1de.md) | 131 | `declaration-track:6d3518264adad38c2484e1de92197443a2f1284a87b4f0a2aff46fc4e2c12c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
