# Verification target: GRWTSK.Analysis.SimpleZeroChamber.Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71fc6f579601025d6621d8fee82118e3f49a1c24",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/index.md) · [Full source](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71fc6f579601025d6621d8fee82118e3f49a1c24`.

Source path: `GRWTSK/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean.json)

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
| 1 | `def` | [spatialSlope](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/spatialslope--46d4299a0e5e0bfb8efe8fa4.md) | 24 | `declaration-track:46d4299a0e5e0bfb8efe8fa497779a9c48d68529b2e053a6e9f8ee9271a669e8` |
| 2 | `theorem` | [scalar_map_invertible_of_nonzero](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/scalar-map-invertible-of-nonzero--fe6beb129c9489e407189e7f.md) | 27 | `result-track:fe6beb129c9489e407189e7ffebd370b6842c4300a927e755ead2b4004d4bcdf` |
| 3 | `theorem` | [spatial_map_invertible](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/spatial-map-invertible--df829d9e2eef39da30482e32.md) | 37 | `result-track:df829d9e2eef39da30482e326862b9e66277930b3e00e982ae258e3331273f76` |
| 4 | `theorem` | [spatial_slope_eq_partial_deriv](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/spatial-slope-eq-partial-deriv--87b92c371727775e130bec51.md) | 42 | `result-track:87b92c371727775e130bec51bde2d2c56b449aef10bcbd4fa812dc052f234949` |
| 5 | `theorem` | [simple_zero_local_c1_graph](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/simple-zero-local-c1-graph--5931401c14a7f08cf4a17704.md) | 49 | `result-track:5931401c14a7f08cf4a177046ba4fd768c03f461ab03a333d81a3b294ca0be34` |
| 6 | `theorem` | [simple_zero_c1_chamber](../../../../mathematics/Analysis/SimpleZeroChamber/Variant271b1bb3108c04bb367b521b16065020f5ee628190b7523bebf86c0df5847165.lean/declarations/simple-zero-c1-chamber--aa7e2d8052040263fd71891d.md) | 62 | `result-track:aa7e2d8052040263fd71891d4c9566fed855bfb787591f0807c89945855ee53f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
