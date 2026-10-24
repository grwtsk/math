# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA.Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fdcb8b0e9e1880c96bc48d4314d9ff5605a3612",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fdcb8b0e9e1880c96bc48d4314d9ff5605a3612`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/realmoebius--f57c11fd25b686c7c42e759c.md) | 44 | `declaration-track:f57c11fd25b686c7c42e759c5d8af2ce53540ce037f553c23e9eb928d90430c4` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/realmoebius-zero--01922e9d3ea5a1f747ad81f3.md) | 48 | `result-track:01922e9d3ea5a1f747ad81f3befa3b9785d325e7f98f313fabbe722776dd346a` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertens--19d5ac0799d9eabf075a1e07.md) | 53 | `declaration-track:19d5ac0799d9eabf075a1e07135838f7b66cfb87244bf18d72b2d8d9cbb66b00` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertensnat--975f05b51b3c8a9d447b712b.md) | 57 | `declaration-track:975f05b51b3c8a9d447b712b52d8f7a79c9d052da35adbc12b9b07cb7b1badca` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertens-natcast--97f2ae437035ecec9d43ec18.md) | 61 | `result-track:97f2ae437035ecec9d43ec185c59cd0186a98c1295f15d2e3bdb0e80d3876014` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mobius-abel--3e93a60c2123afe2bc8328e6.md) | 66 | `result-track:3e93a60c2123afe2bc8328e6e379097ab914fdba1569295576661cc7a459705d` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mobius-abel-commuted--faaf25f0327f61cc50c8d8a8.md) | 84 | `result-track:faaf25f0327f61cc50c8d8a80c2a72589fe6f184bdf3c301042f877ed6b0cb75` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/sourcelower--e333fe96f5c93a19291fd59f.md) | 115 | `declaration-track:e333fe96f5c93a19291fd59f3fd0e147f2bc50d53e79e03c6ce7fd202a490233` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/sourceupper--6a4d7490846bbc2a9038f319.md) | 117 | `declaration-track:6a4d7490846bbc2a9038f319313c771a1a1ac20f1bbc57242f6ae83deb7bf15d` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertenskernelintegral--bbe34b5266d44e3dda918d9f.md) | 120 | `declaration-track:bbe34b5266d44e3dda918d9fdd14a76d5f30bb2cec3bbb1e894c7877d2ac1a47` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/source-window-abel--e1d64fd193ebccdfb613b4f0.md) | 125 | `result-track:e1d64fd193ebccdfb613b4f08d22c482bdcfbbff283822c08e5f115fdaad6808` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/source-window-abel-of-upper-zero--9cd06ee7b34a6a9b9892fca4.md) | 166 | `result-track:9cd06ee7b34a6a9b9892fca4720dbd65b04eff51d778649e51905bb7d58fcefd` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/sourcemobiuskernelcontract--c19632da3fd3951e40f7f057.md) | 188 | `declaration-track:c19632da3fd3951e40f7f05783526cb2da968d0ca287d68c7f0cf41a45c90d0c` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/abel-identity-of-source-kernel-contract--3a4fafab62c6d719e23c53c6.md) | 205 | `result-track:3a4fafab62c6d719e23c53c6c791b83594153e84f4b2e59809e0d545dfa3d639` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertensabelcheckpoint--025643cd314d6139f1e1f42b.md) | 219 | `declaration-track:025643cd314d6139f1e1f42bca019d12380425f8bedfbab40146f0e43ec41757` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Varianta0ee798b498e6d1888b57a6a337058bd07b60317301674ed6fd0ee202b4e46b2.lean/declarations/mertens-abel-checkpoint--63bc66bede795adc75166d27.md) | 229 | `result-track:63bc66bede795adc75166d271a3855daa096acd01486b8c63517fae11f0f0d8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
