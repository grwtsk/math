# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctWindingSupportSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9006e9d372c01b40895226a42062b414ee893e97",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9006e9d372c01b40895226a42062b414ee893e97`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctLagSupport`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windingTriangularNumerator](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/windingtriangularnumerator--67b67f372057405c3fbf8108.md) | 17 | `declaration-track:67b67f372057405c3fbf8108e42122aa002c6128a6ac263ed267d364b5b73513` |
| 2 | `theorem` | [two_mul_sum_Icc_one_centeredWindingRadius](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/two-mul-sum-icc-one-centeredwindingradius--2804fdee68fbc35703b3a5d0.md) | 22 | `result-track:2804fdee68fbc35703b3a5d02e11e5c5001d332cb81e48b61770a57959adcd08` |
| 3 | `theorem` | [two_mul_centeredFourDistinctWindingRawSupportCeilingSum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/two-mul-centeredfourdistinctwindingrawsupportceilingsum--cbc6e0b740eec1886eda47af.md) | 41 | `result-track:cbc6e0b740eec1886eda47aff4fc99d59f80f4fb71feb32f776b65fa41524e5d` |
| 4 | `theorem` | [centeredFourDistinctWindingRawSupportCeilingSum_le_radius_mul_cube](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/centeredfourdistinctwindingrawsupportceilingsum-le-radius-mul-cube--bf145d7341e80c95799a9ebc.md) | 73 | `result-track:bf145d7341e80c95799a9ebc0a47cc78d770f2ce9428313e7eece87a91161570` |
| 5 | `theorem` | [square_mul_windingRawSupport_le_b_mul_cube](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/square-mul-windingrawsupport-le-b-mul-cube--681e343747547bba412a0fd0.md) | 82 | `result-track:681e343747547bba412a0fd01029a2bfc472fcf0f62559619c40e17dd4f60d19` |
| 6 | `theorem` | [windingRawSupport_cast_le_reciprocalSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/windingrawsupport-cast-le-reciprocalsquare--8303e5368e87edf956a1f8c8.md) | 99 | `result-track:8303e5368e87edf956a1f8c865801f2c97c6fea16b252b8ec20c7e5063bae981` |
| 7 | `structure` | [RegularCenteredFourDistinctWindingSupportSumSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/regularcenteredfourdistinctwindingsupportsumsourcedata--3206602576cbb93917255960.md) | 127 | `declaration-track:3206602576cbb9391725596026dbb69501acc2ac7ac4fb90275fd26d7dc1d49b` |
| 8 | `def` | [RegularCenteredFourDistinctWindingSupportSumSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/declarations/regularcenteredfourdistinctwindingsupportsumsource--3a69d799925f992353290418.md) | 136 | `declaration-track:3a69d799925f992353290418fa522f258e2331d661a916045f6e81b0bea6547d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
