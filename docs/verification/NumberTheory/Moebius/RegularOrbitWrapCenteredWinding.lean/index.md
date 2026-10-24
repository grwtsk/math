# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitWrapCenteredWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b2e4f10da6183c56b097c080f4b4519b3d912f9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b2e4f10da6183c56b097c080f4b4519b3d912f9`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingCenteredCorrelation`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexSignedQuarticWrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/parityhalfindexsignedquarticwrap--8d561a6eebc59348c109b36c.md) | 47 | `declaration-track:8d561a6eebc59348c109b36c909eebff6d31482e3bf6556d5a22af84073c63b7` |
| 2 | `theorem` | [parityHalfShiftSignedQuarticWrap_eq_halfIndex](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/parityhalfshiftsignedquarticwrap-eq-halfindex--f594a497332d6f0196631c1a.md) | 63 | `result-track:f594a497332d6f0196631c1a7dc7a5ad78a3075f822e224db248fd03e6c151e4` |
| 3 | `theorem` | [halfIndexWrap_exists_nonzero_winding](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/halfindexwrap-exists-nonzero-winding--c22f678ed33d2a4cad34b80c.md) | 87 | `result-track:c22f678ed33d2a4cad34b80c32e5514292f07b626bff92a57288964d15c09bdc` |
| 4 | `theorem` | [wrapFirst_lower_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/wrapfirst-lower-eq-centered--767b33180dbb72bd5d446e83.md) | 114 | `result-track:767b33180dbb72bd5d446e83fa8dcc126952100c766800e095646d65a388bea5` |
| 5 | `theorem` | [wrapFirst_upper_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/wrapfirst-upper-eq-centered--927031146f1fb6f1dd9aa408.md) | 121 | `result-track:927031146f1fb6f1dd9aa40830426e0365756635d5619a1a84e578570b3e8317` |
| 6 | `theorem` | [wrapSecond_lower_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/wrapsecond-lower-eq-centered--01bb108d7e2f51a96094b390.md) | 129 | `result-track:01bb108d7e2f51a96094b390153c3d786bb4e40b11248bd2a3df9d896a0b61ad` |
| 7 | `theorem` | [wrapSecond_upper_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/wrapsecond-upper-eq-centered--307395d3317de71821c120df.md) | 136 | `result-track:307395d3317de71821c120dfda7de12d80494f50978a3793f7a3f248a1ec81a6` |
| 8 | `def` | [centeredWrapQuarticMobiusCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/centeredwrapquarticmobiuscoefficient--4e11232e58614bd623e0bef5.md) | 144 | `declaration-track:4e11232e58614bd623e0bef558c930c68d3c2ba6165a3ef2bf9cb35e3838f165` |
| 9 | `theorem` | [halfIndexQuarticMobiusCoefficient_eq_centeredWrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/halfindexquarticmobiuscoefficient-eq-centeredwrap--147802d14573bfbf8ac38317.md) | 155 | `result-track:147802d14573bfbf8ac383175c13fb0de3379956ce3ff57740b8867df2a3e5e5` |
| 10 | `def` | [parityHalfIndexCenteredSignedQuarticWrap](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/parityhalfindexcenteredsignedquarticwrap--c7d4ae08a0724b6ffaddecee.md) | 168 | `declaration-track:c7d4ae08a0724b6ffaddecee5b01f9732fcff9a8a944e77dee33fd9c0cf5c7df` |
| 11 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/parityhalfindexsignedquarticwrap-eq-centered--ecb96110d46e4a014c9c533d.md) | 183 | `result-track:ecb96110d46e4a014c9c533db0ed1f4d4cd0fcafaadfa24683931c1dea6466ac` |
| 12 | `structure` | [RegularCenteredWrapCorrelationSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/regularcenteredwrapcorrelationsourcedata--58ffbf5b9945b9c41b07e612.md) | 209 | `declaration-track:58ffbf5b9945b9c41b07e61226c4b2edfcc58daaff961431f4edfaf0da9dd7c4` |
| 13 | `def` | [RegularCenteredWrapCorrelationSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitWrapCenteredWinding.lean/declarations/regularcenteredwrapcorrelationsource--19f6b394c32d392450c67f45.md) | 222 | `declaration-track:19f6b394c32d392450c67f45f7c8309ff58a16329ba7523ee3e1ace3aa798d22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
