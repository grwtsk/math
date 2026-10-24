# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralPacket.Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a06acdb4c72e7ff26b5893b012c5501abed36d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a06acdb4c72e7ff26b5893b012c5501abed36d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralPacketData](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/spectralpacketdata--a244f96cc64f0796b82bcb55.md) | 22 | `declaration-track:a244f96cc64f0796b82bcb5574db5fb3f685d75e4dcae095b6944519a21b17d4` |
| 2 | `def` | [rawAmplitude](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/rawamplitude--d89de5089247b0185c5ef87e.md) | 33 | `declaration-track:d89de5089247b0185c5ef87e6b34320d1a3f4cb924f2ea48ca22d8b0c01db623` |
| 3 | `theorem` | [rawAmplitude_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/rawamplitude-pos--2b04cd339986c2c3bea9ba69.md) | 38 | `result-track:2b04cd339986c2c3bea9ba690a4fa2fcec3ec3ceb5600bc42ba446eb020a809d` |
| 4 | `def` | [rawVector](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/rawvector--60be17d05062342d95bb399f.md) | 44 | `declaration-track:60be17d05062342d95bb399f52d03f8b1b27f8011e3f3440a4a4c5a2f912d5b5` |
| 5 | `theorem` | [rawVector_apply_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/rawvector-apply-zero--7c94a99eb02dac65557ea26f.md) | 51 | `result-track:7c94a99eb02dac65557ea26f1b81c8cfe4eb55d4083adbff3a2170989a6942f1` |
| 6 | `theorem` | [rawVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/rawvector-ne-zero--2f1c0b9abac466760618900d.md) | 56 | `result-track:2f1c0b9abac466760618900de567c24b51f5ac24ca8fe61e19041adeec43f0dc` |
| 7 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/vector--e3f44df630ea16e44191a3bd.md) | 66 | `declaration-track:e3f44df630ea16e44191a3bd03ff2f97c14bd6b8c084da2ba8846700daefca0b` |
| 8 | `theorem` | [vector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/vector-norm--6f77d32a371e496866560310.md) | 70 | `result-track:6f77d32a371e4968665603105b344cdd182336361f844731a03ed89371d83ee9` |
| 9 | `structure` | [NormalizedSpectralPacket](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/normalizedspectralpacket--ef147bfbe0d3da495ba30424.md) | 79 | `declaration-track:ef147bfbe0d3da495ba304242ce2fa0d37c4c895f83d7e20cbe82ba96396e7a8` |
| 10 | `def` | [normalized](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variant3c0ec4423f3cd7ff7a1640e41178a7c729bbd60518a840a9ae1d9cb2e9966b4a.lean/declarations/normalized--632e0c3b04980ec605baa75f.md) | 84 | `declaration-track:632e0c3b04980ec605baa75f151875946788952f4d0bf78c944b9c53dca4d158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
