# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78d98141abaa3ea526adcaca6190ba42d65be9a6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78d98141abaa3ea526adcaca6190ba42d65be9a6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtQuotientEndpoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/declarations/inverse-sqrt-antiderivative--af14aa47a44cced1a1915a21.md) | 21 | `result-track:af14aa47a44cced1a1915a21a75f31f538c622affeeb02d98e52c8f6699271cd` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/declarations/inverse-sqrt-cell-integrable--de387d41010ba104f8536872.md) | 32 | `result-track:de387d41010ba104f8536872c63d17c1196b501735e9f5ae9bc72ad3e945b8f8` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/declarations/inverse-sqrt-integral--c8b87b25a566476cd3443343.md) | 41 | `result-track:c8b87b25a566476cd344334326ccdfb961a9842bc7d8d1ce95e6791541026346` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/declarations/columnenvelopemass--e60eefdad7cea15cbc810d1b.md) | 52 | `declaration-track:e60eefdad7cea15cbc810d1bf780fcbc2460763a5161b5eda98d343a4a122ba5` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variant07c8f1415d0dafff4d45c6d33ccb1c9d42378cc3156f70f515172683bdb73c36.lean/declarations/columnenvelopemass-le--accb2d04ff89d1ddc9a43f91.md) | 59 | `result-track:accb2d04ff89d1ddc9a43f91a551745792e9125e6b46e4a68acc2c89e821ee1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
