# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8f0995dc9d24abcc94dff1535f375a78b47956d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8f0995dc9d24abcc94dff1535f375a78b47956d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/coefficients--0ee6a8b4db12f94812cf9c93.md) | 20 | `declaration-track:0ee6a8b4db12f94812cf9c930d83380bfac88cdc3f19afd216d1377d3b5ecb4e` |
| 2 | `def` | [basis](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/basis--770a16b243998ccd4a775a11.md) | 23 | `declaration-track:770a16b243998ccd4a775a11292b701463d0787f9f72b206101227841887a576` |
| 3 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/value--cc7f15df6cb757431327d7db.md) | 24 | `declaration-track:cc7f15df6cb757431327d7db917fb2608c1d6383a867967519a5fec22a70225c` |
| 4 | `lemma` | [value_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/value-nonneg--557c2337ef78ccda74833ce9.md) | 27 | `result-track:557c2337ef78ccda74833ce95cfcebc1e9ec50294f130270fd7db7d984fcda69` |
| 5 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/tensor-identity--207c624e7d937fd222e9d149.md) | 39 | `result-track:207c624e7d937fd222e9d149726d1fc7069729c103ca403fa63543de0b8af398` |
| 6 | `theorem` | [polynomial_projection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/polynomial-projection--c5382d8660d4af51d585a6db.md) | 46 | `result-track:c5382d8660d4af51d585a6dbd5628379b0915430646475875e276c45c012dcc7` |
| 7 | `theorem` | [projection_failure_below_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/declarations/projection-failure-below-band--074497e50813866b17e6b1e2.md) | 57 | `result-track:074497e50813866b17e6b1e2bf91cb48b72cae09c2cecf2caa5aea7c64dbe24c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
