# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e2a4db879cf9c5d47ee717f98d4716e346ff3d6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e2a4db879cf9c5d47ee717f98d4716e346ff3d6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinApproximation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinApproximation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MellinPrefixEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/mellinprefixenclosure--82089e37bee5d23cc84798fc.md) | 29 | `declaration-track:82089e37bee5d23cc84798fc659dfd876ce7b82c7c4c841dbd6dc56c08ac8aeb` |
| 2 | `def` | [poleMellinEvaluation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polemellinevaluation--90809fa4c320859a6e60eb46.md) | 37 | `declaration-track:90809fa4c320859a6e60eb466fe0560b181f2bf25d5b3ad976d8c3dd0fbae2f0` |
| 3 | `theorem` | [poleMellinEvaluation_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polemellinevaluation-residual--b8038844736df89761778572.md) | 40 | `result-track:b8038844736df89761778572fd08d794f3ff2a1b505a10565e841e7d8efbaa76` |
| 4 | `theorem` | [poleMellinEvaluation_error_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polemellinevaluation-error-le--7b51ad17ddf0dd8862d4fc29.md) | 52 | `result-track:7b51ad17ddf0dd8862d4fc292af04018bb345a28374d71be1fbaba3f7bcd1a1a` |
| 5 | `theorem` | [poleNormalized_ne_zero_of_mellinEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polenormalized-ne-zero-of-mellinenclosure--1ccc2e344894fce6d1e36893.md) | 65 | `result-track:1ccc2e344894fce6d1e368938e0d104f0577b8e7c5937f4669975e712650e29d` |
| 6 | `def` | [sampleVariationPatch_of_prefixEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/samplevariationpatch-of-prefixenclosure--1772b847cf3f5bff669eabc7.md) | 78 | `declaration-track:1772b847cf3f5bff669eabc7e6c3f4477cfda7867903150f71b1f6c2cfd1468f` |
| 7 | `def` | [derivativeMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/derivativemajorant--d2045deb451fbe5b52700ff9.md) | 96 | `declaration-track:d2045deb451fbe5b52700ff9b4c9dcc2115062c749445a9e25282bbcae599119` |
| 8 | `def` | [sampleVariationPatch_of_geometric_prefixEnclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/samplevariationpatch-of-geometric-prefixenclosure--df0487e98b2d72c4f416c655.md) | 102 | `declaration-track:df0487e98b2d72c4f416c6552d8b8b913af2362cce1ac4dad4ed8a91552084c8` |
| 9 | `theorem` | [poleNormalized_ne_zero_of_mellin_distance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polenormalized-ne-zero-of-mellin-distance--8b437efbc96673689865e715.md) | 120 | `result-track:8b437efbc96673689865e7152a71c92262d5d9080fd4d261d431e056aea563b7` |
| 10 | `theorem` | [noTargetZero_in_mellin_distance_region](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/notargetzero-in-mellin-distance-region--9d05c52d4acde17d14bd6e99.md) | 136 | `result-track:9d05c52d4acde17d14bd6e990efd7aaad7849174aedd014076fbcb61c13369b8` |
| 11 | `theorem` | [poleNormalized_ne_zero_of_parabolic_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polenormalized-ne-zero-of-parabolic-bound--29d3bccfbb04981e080edf3a.md) | 144 | `result-track:29d3bccfbb04981e080edf3a4d9a1605b1ceb164c6b9c34bf7749f1b3579f1f1` |
| 12 | `theorem` | [target_zero_horizontal_defect_le_height_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/target-zero-horizontal-defect-le-height-sq--921bcbfea858fd85f1bf77f9.md) | 158 | `result-track:921bcbfea858fd85f1bf77f99bf1071d2ff5d3d1034d584be08a6849e948d33c` |
| 13 | `theorem` | [target_zero_horizontal_defect_le_root_height_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/target-zero-horizontal-defect-le-root-height-sq--ca86e00d804ee10462fee5e6.md) | 176 | `result-track:ca86e00d804ee10462fee5e6aca9db573440512acc565b20446e07f4dfb12c57` |
| 14 | `theorem` | [eventually_strict_margin_of_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/eventually-strict-margin-of-nonzero--db574830e8e8e5f0c6c046d0.md) | 184 | `result-track:db574830e8e8e5f0c6c046d0872eb6a872e56b57ad681df9b2d73e02c67b3ad1` |
| 15 | `theorem` | [no_strict_mellin_margin_at_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/no-strict-mellin-margin-at-zero--4cd1549879697effa223314f.md) | 198 | `result-track:4cd1549879697effa223314f9107b2341cfaae5c109d89267d9f240cacff157d` |
| 16 | `theorem` | [poleNormalized_ne_zero_iff_exists_mellin_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/declarations/polenormalized-ne-zero-iff-exists-mellin-margin--b7a59dd7864c3885d1271833.md) | 210 | `result-track:b7a59dd7864c3885d12718334043458606ff62453435a5ac5819cd5854524bc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
