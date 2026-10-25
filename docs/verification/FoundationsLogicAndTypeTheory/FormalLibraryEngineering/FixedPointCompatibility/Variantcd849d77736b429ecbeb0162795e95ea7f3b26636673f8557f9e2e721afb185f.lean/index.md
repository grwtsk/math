# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCompatibility.Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30d7eea85378532c833e118bf795281880cf27b1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30d7eea85378532c833e118bf795281880cf27b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.FixedPointTranscendency` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.BaseCaseIndexAnchor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealizationTraceTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/realizationtracetarget--1d27d6d6b6d4d26396b8f8e9.md) | 20 | `declaration-track:1d27d6d6b6d4d26396b8f8e9aa12eb490017d375cba7f8ec9fb36179b31e4f23` |
| 2 | `structure` | [RealizedIndexTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/realizedindextrace--21b1fc048565dda811280c4f.md) | 24 | `declaration-track:21b1fc048565dda811280c4fe4328ad831f17fc2ae41df15b0d5cf6b2162917e` |
| 3 | `structure` | [RealizedSpectralTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/realizedspectraltrace--2f2df765d454b0fd4ca114dd.md) | 29 | `declaration-track:2f2df765d454b0fd4ca114ddad4eacac904973517705af45c224ec6c16af2356` |
| 4 | `structure` | [CompatibilityObstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatibilityobstruction--278c4d530831de68f9ca077d.md) | 38 | `declaration-track:278c4d530831de68f9ca077db54e8fde17086f8b7675b657eac862c52907e359` |
| 5 | `structure` | [ObstructionVanishes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/obstructionvanishes--124023fa10a905ffd227c0a2.md) | 44 | `declaration-track:124023fa10a905ffd227c0a2641f1d19495b3357e4e0c23b1001cfb01979c25a` |
| 6 | `structure` | [ObstructionNonzero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/obstructionnonzero--a655a2e0c993f61994a3c328.md) | 49 | `declaration-track:a655a2e0c993f61994a3c328360bd3f022b1810e4568e994c5db725dbe57d56c` |
| 7 | `structure` | [SpectralConfiguration](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/spectralconfiguration--4b1078a7237014a3c1cd0208.md) | 54 | `declaration-track:4b1078a7237014a3c1cd0208382f921e999ed929905f0441490b3d555cbfb4e9` |
| 8 | `def` | [IsCompatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/iscompatible--862ad9ed4afb8897ec5ca86f.md) | 63 | `declaration-track:862ad9ed4afb8897ec5ca86f0c334b90b00a1ffd2a152356344c4a18efee4433` |
| 9 | `structure` | [ConfigHasOffCriticalPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/confighasoffcriticalpoint--1ab30b70f93ee4aa144a5d1c.md) | 71 | `declaration-track:1ab30b70f93ee4aa144a5d1c403f22cad9c5384e96ae939460a36a6b6325645e` |
| 10 | `def` | [ConfigOnCriticalLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/configoncriticalline--cc655cdc747a22fa11ed1aa3.md) | 79 | `declaration-track:cc655cdc747a22fa11ed1aa3d0b43ec555611ebe976621b0049a2bdacb63ab90` |
| 11 | `structure` | [FixedPointCompatibilityContract](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/fixedpointcompatibilitycontract--ff3bef84a07722b83ab153cd.md) | 90 | `declaration-track:ff3bef84a07722b83ab153cd997fd054bb3a26cde40b5417f314d6320c5fd768` |
| 12 | `theorem` | [compatibility_iff_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatibility-iff-obstruction-vanishes-if-supplied--c1f719d692c994f110748c6f.md) | 103 | `result-track:c1f719d692c994f110748c6f7cff386620746e71d6f3db605afe03691b6eef36` |
| 13 | `theorem` | [offcritical_forces_nonzero_obstruction_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/offcritical-forces-nonzero-obstruction-if-supplied--858f04b7ba319dfcd20bd48a.md) | 112 | `result-track:858f04b7ba319dfcd20bd48ab6908e6856fba362b0aa4ce1ba2adf0ce9902c11` |
| 14 | `theorem` | [compatibility_implies_critical_line_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatibility-implies-critical-line-if-supplied--1e2591352894899d2dd02cfa.md) | 128 | `result-track:1e2591352894899d2dd02cfa94a871cba6c0e905db537ff767a161a1f22a4011` |
| 15 | `theorem` | [compatible_obstruction_vanishes_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatible-obstruction-vanishes-if-supplied--efde1d52d15e5f072471832a.md) | 137 | `result-track:efde1d52d15e5f072471832a94ff5a8f8eb970ebd27c55b9184fa371b57d013a` |
| 16 | `theorem` | [compatibility_obstruction_has_index_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatibility-obstruction-has-index-trace--7853e16222035b5b9a6ec173.md) | 146 | `result-track:7853e16222035b5b9a6ec173c29fc3c984233f515a151af6728bec7b2258d769` |
| 17 | `theorem` | [compatibility_obstruction_has_spectral_trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointCompatibility/Variantcd849d77736b429ecbeb0162795e95ea7f3b26636673f8557f9e2e721afb185f.lean/declarations/compatibility-obstruction-has-spectral-trace--bfb39a513c1325750c340b60.md) | 151 | `result-track:bfb39a513c1325750c340b608e2e79966025fcd574b89ab4c3e2ca6f1984c2f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
