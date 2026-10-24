# Verification target: GRWTSK.Spectral.Sheaf.RationalMomentFredholmBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f4de1ec88a98f476681e8f6d5296d9226cb56e1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f4de1ec88a98f476681e8f6d5296d9226cb56e1`.

Source path: `GRWTSK/Spectral/Sheaf/RationalMomentFredholmBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/Sheaf/RationalMomentFredholmBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.LinearMap.FrequencyScrew`](../../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FrequencyScrew.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RationalMomentAlgebra.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.LinearAlgebra.Determinant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MomentSheaf](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/momentsheaf--3bb3f623f280fd74208afd34.md) | 33 | `declaration-track:3bb3f623f280fd74208afd34e5470725c3b28b1d3c45b21713e3c889dd703f93` |
| 2 | `def` | [transport](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/transport--8a3a812d923efc0fae1ebf3b.md) | 47 | `declaration-track:8a3a812d923efc0fae1ebf3b82dc13a81a082873f2b978d14fceba7da588b4b2` |
| 3 | `theorem` | [transport_naturality](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/transport-naturality--011dc63465b05d3ff2bda25c.md) | 53 | `result-track:011dc63465b05d3ff2bda25c205019fe60ea02a9d26a4bb861e317d6d6de3e69` |
| 4 | `structure` | [SpectralComponent](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/spectralcomponent--8b5a10e4e70569e8f1cd4b66.md) | 68 | `declaration-track:8b5a10e4e70569e8f1cd4b662d3e6f4c70a97eb131b361dc19578692f5224cf6` |
| 5 | `theorem` | [zeta_preserved](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/zeta-preserved--1add4b520806bd0ab7d23c9b.md) | 84 | `result-track:1add4b520806bd0ab7d23c9b0ec9d9c792886d54e8516211b1ae472250c29d63` |
| 6 | `theorem` | [mobius_preserved](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/mobius-preserved--d5485880950eef0286ea3412.md) | 94 | `result-track:d5485880950eef0286ea3412f7e7043fdd24319e4643881911687ef9b797a995` |
| 7 | `theorem` | [mobius_zeta_on_component](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/mobius-zeta-on-component--6561ddd794e940d3cc39da61.md) | 105 | `result-track:6561ddd794e940d3cc39da616521ee1f83fad2577ad7f0c49dbb99ff50748939` |
| 8 | `structure` | [FiniteFredholmBridge](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/finitefredholmbridge--68a59fb28f073a241396dda4.md) | 117 | `declaration-track:68a59fb28f073a241396dda4a13409296ff4ec11abf1f04f46700246ab40332c` |
| 9 | `def` | [FiniteFredholmBridge.determinant](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/finitefredholmbridge-determinant--5a26701d425f7422a45d5adc.md) | 127 | `declaration-track:5a26701d425f7422a45d5adcba81a71cbb60e5e48b189d89a6b6214bb10bb944` |
| 10 | `theorem` | [FiniteFredholmBridge.determinant_zero](../../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/declarations/finitefredholmbridge-determinant-zero--cedc094aa1bdb108d0677cb1.md) | 136 | `result-track:cedc094aa1bdb108d0677cb1b90e010ff757676db46726498578dab5d2d2649f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
