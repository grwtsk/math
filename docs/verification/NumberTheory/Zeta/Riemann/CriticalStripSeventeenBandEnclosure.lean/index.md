# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02dbef260f6bc08ed237b835c7522210e175ad4c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02dbef260f6bc08ed237b835c7522210e175ad4c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [band_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/band-geometry--d77363350e7f31f97c42a9d9.md) | 21 | `result-track:d77363350e7f31f97c42a9d99e3daeb5fadc40ac0f42c9ba6e4c8872c216203e` |
| 2 | `lemma` | [band_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/band-shift-norm--1450ecea4becbd3f4638f475.md) | 36 | `result-track:1450ecea4becbd3f4638f47558908c56c2e78a0dd9ae3735c343dac1eb1e47fa` |
| 3 | `lemma` | [band_last_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/band-last-shift-norm--fefc410bfa8e7d16ffd1dd46.md) | 49 | `result-track:fefc410bfa8e7d16ffd1dd46f84fc400db4782fc340eb4c3f4798899913da3b2` |
| 4 | `lemma` | [parameter_products](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/parameter-products--80d10f92f82495220cce5ee3.md) | 62 | `result-track:80d10f92f82495220cce5ee37395c0b22b925793d54ccaea1c9e1959a8a29641` |
| 5 | `lemma` | [weight_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/weight-norm-le--c83597b4c95a125fe62f9d0f.md) | 92 | `result-track:c83597b4c95a125fe62f9d0f4c0d6a7535d7aca4210e5012303619fd5b86322b` |
| 6 | `lemma` | [finiteModel_jet_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/finitemodel-jet-error--912be06d653dd06f7bf69b3a.md) | 122 | `result-track:912be06d653dd06f7bf69b3ad157b1d43abc6959b1ca8c8cc4345642564e2650` |
| 7 | `lemma` | [actual_tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/actual-tail-error--a6ee2fb7bf3042967c65aeaf.md) | 146 | `result-track:a6ee2fb7bf3042967c65aeaf82fc38ce4d28e0bb64eb7bc656a4b93be0e35f6a` |
| 8 | `theorem` | [source_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandEnclosure.lean/declarations/source-enclosed--ece89391d2fd91b599996956.md) | 160 | `result-track:ece89391d2fd91b599996956e35c45e700ae7c80831ab3fd3cb65c93dd4a5285` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
