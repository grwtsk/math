# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Fiber.Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2059813bffdc434384c79d9bd20c9248469c075a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2059813bffdc434384c79d9bd20c9248469c075a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Expansion.Shell` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Tensor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralShellFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/spectralshellfiber--3c168d205445afe995ff7c7a.md) | 30 | `declaration-track:3c168d205445afe995ff7c7a12cdf7ecc5ef692c2bd24110f0f205cb2f98f0e0` |
| 2 | `theorem` | [ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/ext--d372db8c6569a14016f29cac.md) | 40 | `result-track:d372db8c6569a14016f29cac0b8e06d1b28e6f158c0bbb1a6c622d59ca386faa` |
| 3 | `def` | [zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/zero--f7324b946e7befb871a9e740.md) | 50 | `declaration-track:f7324b946e7befb871a9e740135be281b87be6f02b45d4ad6c84cad9dcb881dd` |
| 4 | `def` | [add](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/add--7be7c9124bfa4a3fbb06626d.md) | 53 | `declaration-track:7be7c9124bfa4a3fbb06626dab0cdc6df5758a1be6cec5214ed03898593d02e7` |
| 5 | `def` | [map](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/map--50c7df06a46a8d1cb18fd15f.md) | 58 | `declaration-track:50c7df06a46a8d1cb18fd15fe2fc024cfd056acb2e89a80ae33d6f294b41b172` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/instance--fcdfb548d86906282d449439.md) | 64 | `declaration-track:fcdfb548d86906282d4494392932d9e10824c09d8268d2418ff60420c6de3537` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/instance--137f7da13b212e6595ce6d57.md) | 67 | `declaration-track:137f7da13b212e6595ce6d57ead2a5755c117121b5db4266ce9e919d488b7ad9` |
| 8 | `theorem` | [value_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/value-zero--89bf0e2e532f5038db49bf0b.md) | 71 | `result-track:89bf0e2e532f5038db49bf0b67d0ac01c5f26237ba490219eff254b32025b4f9` |
| 9 | `theorem` | [value_add](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/value-add--790c74e92a7d455923e7425e.md) | 78 | `result-track:790c74e92a7d455923e7425e657d4da7acc046733ab40d61c2331caf8d820331` |
| 10 | `theorem` | [value_map](../../../../../mathematics/Analysis/FunctionalAnalysis/Fiber/Variantaa164828f30c164bb853e68d21585bd5c3ccc816ba6ba044b0f1245138d66f18.lean/declarations/value-map--49725db13f0cf14dec3454cd.md) | 86 | `result-track:49725db13f0cf14dec3454cd3bcdd069869892e9b5a1a41ce734c7e4fdd1d005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
