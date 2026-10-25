# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e01eae7fab707fc00addad3a1bc4d0e4eb7366",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e01eae7fab707fc00addad3a1bc4d0e4eb7366`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Map` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ResidualMetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/residualmetric--2ca2425bfecbaece1a8ed851.md) | 15 | `declaration-track:2ca2425bfecbaece1a8ed85182b5db636ff29de97bdde23be9726103c3dca5b7` |
| 2 | `structure` | [VerificationMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/verificationmap--9c6bf57dedb16b066dd34a49.md) | 19 | `declaration-track:9c6bf57dedb16b066dd34a4973ec55b51e918332ff129cca951f1f78c44747c1` |
| 3 | `def` | [forwardResidual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/forwardresidual--4cebb90ccf7dbea39a614ea7.md) | 24 | `declaration-track:4cebb90ccf7dbea39a614ea7469c3c8c53c033ce75cbc3ebef5523f03a2a6c12` |
| 4 | `def` | [inverseResidual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/inverseresidual--4101e952e927eff1a3e242f5.md) | 31 | `declaration-track:4101e952e927eff1a3e242f5b5cc74abb64107fc7d20df92965a8ae61bbd71bb` |
| 5 | `structure` | [VerificationSoundnessCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/verificationsoundnesscertificate--c243e78eceae24aead4a5651.md) | 38 | `declaration-track:c243e78eceae24aead4a5651495caae6a9768cbee91749cc597e67b6f6a51396` |
| 6 | `theorem` | [verifier_sound_on_declared_domain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/verifier-sound-on-declared-domain--cf088a090053430a53afa264.md) | 49 | `result-track:cf088a090053430a53afa26432303b04bbdafb840d1844e9c13ab0ce9c8e6aa4` |
| 7 | `theorem` | [sound_round_trip_has_zero_inverse_residual](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/sound-round-trip-has-zero-inverse-residual--c86b0fe80a5a1934d1f59b09.md) | 60 | `result-track:c86b0fe80a5a1934d1f59b093c4beb5318ecf673a1733b12452ff6c108de49e2` |
| 8 | `theorem` | [forward_and_inverse_residuals_can_differ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Residual/Variant988b609d09a098f6c479e3c301991873f1d10d2a75a7416f47270ea91160fae5.lean/declarations/forward-and-inverse-residuals-can-differ--e36f087a9baf9eab989662cf.md) | 78 | `result-track:e36f087a9baf9eab989662cf44b11ec8c3d5f3df6415a97239936737609d71fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
