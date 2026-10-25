# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaConversion.Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64e134c912d7f96a40e9d96b612878ab56d60b90",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64e134c912d7f96a40e9d96b612878ab56d60b90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.BetaNormalizer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conversion_iff_normal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/declarations/conversion-iff-normal-eq--70d2f2062ecc92e49e735f29.md) | 29 | `result-track:70d2f2062ecc92e49e735f29086b1df80b3584b3d37087deb35ef066a4df4a91` |
| 2 | `def` | [conversionFuel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/declarations/conversionfuel--242bab1d5b764595b3d96520.md) | 44 | `declaration-track:242bab1d5b764595b3d96520a26ddb7cf2229af953ac89d6ef46496339bc2de6` |
| 3 | `theorem` | [conversionFuel_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/declarations/conversionfuel-correct--3259ef87d5dfb2e2deb02b48.md) | 54 | `result-track:3259ef87d5dfb2e2deb02b48b338422e43101b0f4ccffe073d1cf291648faa7f` |
| 4 | `theorem` | [conversionFuel_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/declarations/conversionfuel-complete--4ff77597f117efd2dfc8426e.md) | 72 | `result-track:4ff77597f117efd2dfc8426e10469d114b6ee6090b06d2d88dffc8ccf34aac2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
