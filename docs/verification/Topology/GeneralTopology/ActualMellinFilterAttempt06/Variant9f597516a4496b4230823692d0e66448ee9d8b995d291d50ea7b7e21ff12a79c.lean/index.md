# Verification target: GRWTSK.Topology.GeneralTopology.ActualMellinFilterAttempt06.Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5de42abe934d89dad924f1021adb37c7c027eaad",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5de42abe934d89dad924f1021adb37c7c027eaad`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 1; external provider; requires a separately pinned dependency.
- `SourceBoundaryOrder` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticBumpLaplace](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/quarticbumplaplace--22b0e353f59ba978020214c2.md) | 19 | `declaration-track:22b0e353f59ba978020214c2816831d2bc34f98fd0093b5b30a78d311a742559` |
| 2 | `theorem` | [quarticBumpLaplace_integrable](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/quarticbumplaplace-integrable--3f3ea5572369e4ca3e725f87.md) | 22 | `result-track:3f3ea5572369e4ca3e725f870d9369a34517f1d121afde4cbf8878bebb494e27` |
| 3 | `theorem` | [primitiveTransform_eq_interval](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/primitivetransform-eq-interval--73a6e48e338e1fc7e69568e5.md) | 28 | `result-track:73a6e48e338e1fc7e69568e56b61bdfde5950c5e7a39fc192cf6f14fa77999ff` |
| 4 | `theorem` | [primitiveTransform_eq_quartic](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/primitivetransform-eq-quartic--bb89492119ae8e0e2d0075bb.md) | 41 | `result-track:bb89492119ae8e0e2d0075bbbe60bde4964bccb41db5c8647adf715b5913306f` |
| 5 | `theorem` | [actual_mellin_eq_normalizedTransform](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-eq-normalizedtransform--67e75f2da2f5b135f7c1181a.md) | 65 | `result-track:67e75f2da2f5b135f7c1181a09e2a7ff0c4c6b0d2b501dff58a3d38dc16e0b18` |
| 6 | `theorem` | [actual_mellin_pole_filter](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-pole-filter--c6e628c7f1646264bbac42d2.md) | 70 | `result-track:c6e628c7f1646264bbac42d27e379f63dd86dbeac7faf2c83a1ce2c0ea75266e` |
| 7 | `theorem` | [actual_mellin_pole_filter_unnormalized](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-pole-filter-unnormalized--9a781f5601fa04b294b10185.md) | 77 | `result-track:9a781f5601fa04b294b1018588ea5b49439a55da29853920e812b10e79afb290` |
| 8 | `theorem` | [actual_mellin_nonzero_iff_bump](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-nonzero-iff-bump--ff5e9043ed1b04aa4c66df7b.md) | 83 | `result-track:ff5e9043ed1b04aa4c66df7b3cb49c340cc5d7a975885efae10ccece4de15b3a` |
| 9 | `theorem` | [actual_mellin_halfstrip_nonzero_iff_bump](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-halfstrip-nonzero-iff-bump--cb3b09c643fe635688f87a8a.md) | 93 | `result-track:cb3b09c643fe635688f87a8a1ad7fc7fac3dac3af040681fe20f624f196272b6` |
| 10 | `theorem` | [actual_mellin_eq_quartic](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-eq-quartic--91f0aaff8b551b9c582313d1.md) | 101 | `result-track:91f0aaff8b551b9c582313d1f370fed05cd7be0fdee44b20ca71a0ebb3b24444` |
| 11 | `theorem` | [actual_mellin_halfstrip_nonzero_iff_quartic](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-mellin-halfstrip-nonzero-iff-quartic--ec6ae83f33765a95e6d9fbf9.md) | 109 | `result-track:ec6ae83f33765a95e6d9fbf9dfe45ab6577fb0af050ad7f6083625036a07bcae` |
| 12 | `theorem` | [actual_halfstrip_quartic_argument_pos](../../../../../mathematics/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/declarations/actual-halfstrip-quartic-argument-pos--95362b581e48c45b64354d46.md) | 118 | `result-track:95362b581e48c45b64354d4677f30e02721ee05822a934481d5b65d4e80a48f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
