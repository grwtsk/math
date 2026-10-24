# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0861fae41813c7ab1e216392f1d26a2eb74c811",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0861fae41813c7ab1e216392f1d26a2eb74c811`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctChowlaNormalForm`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctChowlaNormalForm.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [centeredStructuredFourDistinctAtCenterLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/centeredstructuredfourdistinctatcenterlag--c3f1a98a1a970dd1a3bfd426.md) | 18 | `declaration-track:c3f1a98a1a970dd1a3bfd426a449356e2c5dd5b62c61cb66f15167a077551f2b` |
| 2 | `abbrev` | [centeredStructuredFourDistinctLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/centeredstructuredfourdistinctlagcorrelation--bf33c4e569bb3d21e7bf45b7.md) | 22 | `declaration-track:bf33c4e569bb3d21e7bf45b74740863594bb1cec0111084a9c202097a6f066bd` |
| 3 | `def` | [centeredStructuredFourDistinctWindingLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/centeredstructuredfourdistinctwindinglagcorrelation--bda447f2cc79afaabed064c7.md) | 26 | `declaration-track:bda447f2cc79afaabed064c739a68a93c0f0457a9e2dd0e2a6faf50ac84e34db` |
| 4 | `def` | [centeredStructuredFourDistinctWindingLagSum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/centeredstructuredfourdistinctwindinglagsum--8f9942f508d28fbe71d1a6ef.md) | 34 | `declaration-track:8f9942f508d28fbe71d1a6ef2d714fb57691a0517bd06321f6a24c37ed3a3e6b` |
| 5 | `def` | [regularCenteredStructuredFourDistinctAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/regularcenteredstructuredfourdistinctatmodulus--a7d8f9a522d69d3c9ee03765.md) | 41 | `declaration-track:a7d8f9a522d69d3c9ee037650c0551d63accb2af64924398e0c8d9aa245dfb5a` |
| 6 | `def` | [regularCenteredStructuredFourDistinctEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/regularcenteredstructuredfourdistinctendpoint--bee5ea562be354b3dae6f68e.md) | 53 | `declaration-track:bee5ea562be354b3dae6f68e3fc3c533bc4cb84cbb7db77b54c4d9faab975ce3` |
| 7 | `def` | [RegularCenteredStructuredFourDistinctEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/regularcenteredstructuredfourdistinctenvelope--c4d8e1e5840af905f1698eda.md) | 63 | `declaration-track:c4d8e1e5840af905f1698edaf056d90692db7976fc7a778e5e27390f5a3e1e4e` |
| 8 | `def` | [GeneralFourDistinctChowlaPremiseIsNotRequired](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/generalfourdistinctchowlapremiseisnotrequired--02041b280ea5cbd83993bf15.md) | 70 | `declaration-track:02041b280ea5cbd83993bf15b2777d9e79dccce90467f67e9895826f59bddbd0` |
| 9 | `theorem` | [generalFourDistinctChowlaPremiseIsNotRequired](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/generalfourdistinctchowlapremiseisnotrequired--34d3d1f04e50b300d5854ad4.md) | 75 | `result-track:34d3d1f04e50b300d5854ad4d2d918fe97e8638c5ed81116fe4c74d0a0b3f622` |
| 10 | `structure` | [RegularCenteredStructuredFourDistinctSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/regularcenteredstructuredfourdistinctsourcedata--2ef3d6bd6bc6dadca9443de9.md) | 81 | `declaration-track:2ef3d6bd6bc6dadca9443de9bf713fb76e9aa753df9c53773474577e3363d8fe` |
| 11 | `def` | [RegularCenteredStructuredFourDistinctSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinct.lean/declarations/regularcenteredstructuredfourdistinctsource--55e827c6deeb862fdc4d955a.md) | 96 | `declaration-track:55e827c6deeb862fdc4d955a09ff5fde8af575e8e9f87bf58c736d162344c35a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
