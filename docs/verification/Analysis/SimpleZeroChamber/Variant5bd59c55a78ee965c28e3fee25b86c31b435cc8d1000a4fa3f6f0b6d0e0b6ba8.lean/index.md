# Verification target: GRWTSK.Analysis.SimpleZeroChamber.Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36beab17f38206dd289deee8b012aec9596897a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/index.md) · [Full source](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36beab17f38206dd289deee8b012aec9596897a0`.

Source path: `GRWTSK/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ImplicitContDiff` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialSlope](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/spatialslope--16456283b49211e1bbeb938d.md) | 19 | `declaration-track:16456283b49211e1bbeb938d19e9945c1b5e5d8ae96ad2771dc85b20dbcf2034` |
| 2 | `theorem` | [scalar_map_invertible_of_nonzero](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/scalar-map-invertible-of-nonzero--c183374e239d69f607e5548d.md) | 22 | `result-track:c183374e239d69f607e5548d1436e17805149c38082902755d15c62c3b351b50` |
| 3 | `theorem` | [spatial_map_invertible](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/spatial-map-invertible--1f4a37bb6c52ba9f732bb935.md) | 32 | `result-track:1f4a37bb6c52ba9f732bb9353a1515f913ac062175b1e64de6333b42488524bf` |
| 4 | `theorem` | [spatial_slope_eq_partial_deriv](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/spatial-slope-eq-partial-deriv--8ea7c22caf7b7f95e2b56568.md) | 37 | `result-track:8ea7c22caf7b7f95e2b565681ec5d581d667b5bb71886fa054ede9fc87048b8e` |
| 5 | `theorem` | [simple_zero_local_c1_graph](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/simple-zero-local-c1-graph--390dbbe49d21eae20f983a1c.md) | 44 | `result-track:390dbbe49d21eae20f983a1ccdb9e3cebb97ff1c18611b4a32ea10c21953ac49` |
| 6 | `theorem` | [simple_zero_c1_chamber](../../../../mathematics/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/declarations/simple-zero-c1-chamber--728ec4ac43e30553c42556e9.md) | 57 | `result-track:728ec4ac43e30553c42556e9362cdf5117e7d344e4d7308202b082b54fa4fa42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
