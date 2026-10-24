# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingResidueDispersion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1ef8a1621beac56033f471991cbc06911cfc9ca",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1ef8a1621beac56033f471991cbc06911cfc9ca`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexCenteredResidueFiber](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredresiduefiber--865f86f487cd7046d3208c87.md) | 49 | `declaration-track:865f86f487cd7046d3208c8756cfc601659156249397b7cf7f2ee70ce2e379de` |
| 2 | `def` | [parityHalfIndexCenteredResidueSquareMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredresiduesquaremass--dd1c0bb0e5d4c029cfbd62db.md) | 60 | `declaration-track:dd1c0bb0e5d4c029cfbd62db8f6dbffc9aff264cbb9013498e5ff8ea19e486c8` |
| 3 | `def` | [parityHalfIndexCenteredSignedQuarticCongruence](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredsignedquarticcongruence--297d3a13005027d848a5fac2.md) | 69 | `declaration-track:297d3a13005027d848a5fac267d71b79f961f8346cd12f58e2e84914b5f63b66` |
| 4 | `theorem` | [centeredResidueFiberSquareExpansion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/centeredresiduefibersquareexpansion--cda2eef3fa8a94f8f0e9c106.md) | 82 | `result-track:cda2eef3fa8a94f8f0e9c10608b38578f8b884e9a36c82da93ab9f115c3d98b7` |
| 5 | `theorem` | [parityHalfIndexCenteredResidueSquareMass_eq_congruence](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredresiduesquaremass-eq-congruence--7b83a07a4b5a3aeb2efb20a8.md) | 147 | `result-track:7b83a07a4b5a3aeb2efb20a876390de5666079e4704eda9357784396afd5094b` |
| 6 | `theorem` | [parityHalfIndexCenteredSignedQuarticCongruence_eq_zero_add_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredsignedquarticcongruence-eq-zero-add-wrap--e7b06c390430e4b48f205329.md) | 168 | `result-track:e7b06c390430e4b48f205329aae5daed08c9f42025d99f68b8517bede1760df7` |
| 7 | `theorem` | [parityHalfIndexCenteredResidueSquareMass_eq_zeroEnergy_add_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/parityhalfindexcenteredresiduesquaremass-eq-zeroenergy-add-wrap--05919d8dc29b5093f2f08f11.md) | 203 | `result-track:05919d8dc29b5093f2f08f112c75daf29ee410e7e6d9e18194e5b507ce36a811` |
| 8 | `def` | [parityCenteredWindingResidueDispersion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/paritycenteredwindingresiduedispersion--5913b8d1c17329bf4f203bed.md) | 215 | `declaration-track:5913b8d1c17329bf4f203bed1747b81a1a286986864bdbd3041ff2ddfdf6a689` |
| 9 | `theorem` | [parityCenteredWindingResidueDispersion_eq_wrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/paritycenteredwindingresiduedispersion-eq-wrap--f78fb9ad5297743e61b01f3d.md) | 223 | `result-track:f78fb9ad5297743e61b01f3d50d45a7f651d45126cdca43fc0f5eab53bece8f4` |
| 10 | `theorem` | [parityCenteredWindingResidueDispersion_eq_centeredWrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/paritycenteredwindingresiduedispersion-eq-centeredwrap--f5e73e7a85f9703f3c7f086d.md) | 234 | `result-track:f5e73e7a85f9703f3c7f086da61a032049fd831597fcd12a149acfa8c133273c` |
| 11 | `def` | [regularCenteredWindingResidueDispersionAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionatmodulus--af5881cc75a70a5bafa477bc.md) | 243 | `declaration-track:af5881cc75a70a5bafa477bc638154c5ab7d76f0d3bce13bad705ae079c49588` |
| 12 | `theorem` | [regularCenteredWindingResidueDispersionAtModulus_eq_centeredWrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionatmodulus-eq-centeredwrap--c4aa47dc72dcea523af2e2db.md) | 255 | `result-track:c4aa47dc72dcea523af2e2db48a766b3eff16ee8aa5b88631fe71a5c9ae3e495` |
| 13 | `def` | [regularCenteredWindingResidueDispersionEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionendpoint--da2c2e563924f0bebc9cc181.md) | 274 | `declaration-track:da2c2e563924f0bebc9cc1815d4e5ee61fa2ae525bc0e62c5e35cb2cc7b128bf` |
| 14 | `def` | [RegularCenteredWindingResidueDispersionEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionenvelope--bfd35c61219476ec0d7dbd5d.md) | 283 | `declaration-track:bfd35c61219476ec0d7dbd5dce08092dfd5c38842a92a7dc354b1d2f0e8f85cd` |
| 15 | `structure` | [RegularCenteredWindingResidueDispersionSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionsourcedata--b385143f0d5072ad6af957a8.md) | 290 | `declaration-track:b385143f0d5072ad6af957a89217459b41e1cee2094a0c854ce4fc1954e328ab` |
| 16 | `def` | [RegularCenteredWindingResidueDispersionSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/declarations/regularcenteredwindingresiduedispersionsource--76b76648b3473b98efd9e860.md) | 305 | `declaration-track:76b76648b3473b98efd9e860d980c4f58974087e840efaef57ee8f126648b1bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
