# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SpectralPacket.Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "608b6153d745e8acf3a36fe3d1093ef313e7ac25",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `608b6153d745e8acf3a36fe3d1093ef313e7ac25`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralPacketData](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/spectralpacketdata--c23b3ee3d81d1dd7bec6452b.md) | 30 | `declaration-track:c23b3ee3d81d1dd7bec6452b1bfe2e1442913d63228a26611a8f780051b9ea9b` |
| 2 | `def` | [rawAmplitude](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/rawamplitude--e73bcc09322d8df8f3602215.md) | 41 | `declaration-track:e73bcc09322d8df8f36022157308acb19095b01c96d7245489568896e676c9d1` |
| 3 | `theorem` | [rawAmplitude_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/rawamplitude-pos--68942f9c18c5f7f032ad11de.md) | 46 | `result-track:68942f9c18c5f7f032ad11dea562ffc7478e71831e1292c8756a93e42f22d1bd` |
| 4 | `def` | [rawVector](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/rawvector--88d58652237f76bda979b13c.md) | 52 | `declaration-track:88d58652237f76bda979b13c188c67db42ed4016b0326dc1a0e01b1b19d9f1f6` |
| 5 | `theorem` | [rawVector_apply_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/rawvector-apply-zero--f9ea2ae54f916a0caea6b7e2.md) | 59 | `result-track:f9ea2ae54f916a0caea6b7e26fde039c8672d375e67a28a7d42299fb7b22d30e` |
| 6 | `theorem` | [rawVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/rawvector-ne-zero--18591418926bfa4f2b5e378f.md) | 64 | `result-track:18591418926bfa4f2b5e378f49f1dc2e532b39468cd6692ba228b01e5ea8da04` |
| 7 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/vector--a46b155a7e80736991a1cc53.md) | 74 | `declaration-track:a46b155a7e80736991a1cc5366221f09950e9886a17a9072802e65af31b87008` |
| 8 | `theorem` | [vector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/vector-norm--68365280fec56b1f27a22c03.md) | 78 | `result-track:68365280fec56b1f27a22c034156b98b8e60f461cc0a87c846403e84230ece72` |
| 9 | `structure` | [NormalizedSpectralPacket](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/normalizedspectralpacket--d0af23946df2e70d89f9b521.md) | 87 | `declaration-track:d0af23946df2e70d89f9b5210c67f3951c1fb1ad569f975eccf8057a81685731` |
| 10 | `def` | [normalized](../../../../../mathematics/Analysis/FunctionalAnalysis/SpectralPacket/Variantdac2eec99bfd3dac672487133f682c0fdf6d5b6612bb1a4394b4eb18c921e42d.lean/declarations/normalized--3dc9694af0c15954c219eef0.md) | 92 | `declaration-track:3dc9694af0c15954c219eef0e8f0b994dc5fda20bb91d9597bc401192a7a6b3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
