# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingRange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14cc96e2d6411bf8189bd7a143f4fb9b1a3713f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14cc96e2d6411bf8189bd7a143f4fb9b1a3713f`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingUnification`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [halfIndexZeroWindingCoordinate_le_endpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/halfindexzerowindingcoordinate-le-endpoint--518ac4575f388ad65a252770.md) | 37 | `result-track:518ac4575f388ad65a2527700daf4e70eb8088c0c6ba90e7182815a7a38c2183` |
| 2 | `theorem` | [centeredDisplacement_bounds](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/centereddisplacement-bounds--a336406047318938b960007e.md) | 46 | `result-track:a336406047318938b960007ecef3a6b22f5182a2968f327f295b7f90aa12dc09` |
| 3 | `theorem` | [centeredSquareModulusWinding_abs_displacement_le_endpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/centeredsquaremoduluswinding-abs-displacement-le-endpoint--3a1678d65c08e3e9eeec0f97.md) | 60 | `result-track:3a1678d65c08e3e9eeec0f972506dcb634ce429542201d5be365a3d3d6476a3f` |
| 4 | `theorem` | [centeredSquareModulusWinding_coarse_bounds](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/centeredsquaremoduluswinding-coarse-bounds--a01a3e382d64a28595f7ea90.md) | 76 | `result-track:a01a3e382d64a28595f7ea90a9ebd67d85d3eb1f25f71d07a6334055e1e2d481` |
| 5 | `def` | [centeredWindingCandidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/centeredwindingcandidateset--5f0fd291adad1e5761e42fec.md) | 107 | `declaration-track:5f0fd291adad1e5761e42fece191941b1ff5623338677759c44d2de2431478e1` |
| 6 | `theorem` | [centeredSquareModulusWinding_mem_candidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/centeredsquaremoduluswinding-mem-candidateset--116253b744b8ef3566b192c5.md) | 114 | `result-track:116253b744b8ef3566b192c5d38664a58c93cfc70b1054b3fa3ab828d96170fb` |
| 7 | `theorem` | [realizedHalfIndexWinding_mem_candidateSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/realizedhalfindexwinding-mem-candidateset--9ba14c231adafe669a095f40.md) | 133 | `result-track:9ba14c231adafe669a095f403e4ba18d51376bece839638702be2eb56be4620a` |
| 8 | `structure` | [RegularCenteredWindingFiniteRangeSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/regularcenteredwindingfiniterangesourcedata--394709adabc577d6557b61e0.md) | 154 | `declaration-track:394709adabc577d6557b61e060ad021283f34438510bebd00e6561c609f89df3` |
| 9 | `def` | [RegularCenteredWindingFiniteRangeSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingRange.lean/declarations/regularcenteredwindingfiniterangesource--2ccf51829c305838bb8816ce.md) | 164 | `declaration-track:2ccf51829c305838bb8816ced1d6c87f00a2d51a0defef523d4cce531b35203d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
