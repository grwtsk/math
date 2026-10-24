# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Fiber.Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1db3d3d4339bf75d349c35731da6831d3fbfa37a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1db3d3d4339bf75d349c35731da6831d3fbfa37a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Expansion.Shell` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralShellFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/spectralshellfiber--18504b1d621cba51c2b60a1c.md) | 22 | `declaration-track:18504b1d621cba51c2b60a1c4a462a63c1b82250c41f7896382979b5e4338c77` |
| 2 | `theorem` | [ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/ext--135dd30c5e54aaa0069734df.md) | 32 | `result-track:135dd30c5e54aaa0069734df9c0c5814e65f07c2bc9fa7b60d9cd1c17a59e942` |
| 3 | `def` | [zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/zero--c14fe56b042fd002216c6437.md) | 42 | `declaration-track:c14fe56b042fd002216c6437d5529377cd6ade0f804ef7eb295d0a2863b7f24d` |
| 4 | `def` | [add](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/add--04c591290db8ba9cd4b346c2.md) | 45 | `declaration-track:04c591290db8ba9cd4b346c2b271dee353db6d2a500a1a3ff3c9644f3c5e5b0e` |
| 5 | `def` | [map](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/map--3a18c9390682598227393346.md) | 50 | `declaration-track:3a18c9390682598227393346d4372abeba891ed2e24e5a8a914a1a021ec42b3e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/instance--4ec8f562d2355782ad8bb4d8.md) | 56 | `declaration-track:4ec8f562d2355782ad8bb4d879cfedbd2e851439ffdbd5579ee11d8e9e691219` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/instance--92884506c9359bb3824ef9f3.md) | 59 | `declaration-track:92884506c9359bb3824ef9f38d86bb4a269a71dbb635aebefa893c516478898d` |
| 8 | `theorem` | [value_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/value-zero--3e76463bc86be53de72e6016.md) | 63 | `result-track:3e76463bc86be53de72e6016a37a24a7ab48d720e5bf18132b5eecf5096f5393` |
| 9 | `theorem` | [value_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/value-add--894ed86bbbe7c7e87f2ad3c0.md) | 70 | `result-track:894ed86bbbe7c7e87f2ad3c009b4200fb361f9fcc669a78567cc64168b579edf` |
| 10 | `theorem` | [value_map](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variant09f76096752841b1a0a6df31e206e54451126717e572a923f9088c592564d440.lean/declarations/value-map--f5abd0d4cdf2d0ec2976a8b3.md) | 78 | `result-track:f5abd0d4cdf2d0ec2976a8b3db08bb1fd7cb1e9fc65cd864d5e452cb014a5660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
