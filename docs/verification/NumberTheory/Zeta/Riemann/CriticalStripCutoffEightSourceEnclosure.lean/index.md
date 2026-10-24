# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "163d8bf9bf46cb3e9d41d04ce14a90aa8d3efc97",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `163d8bf9bf46cb3e9d41d04ce14a90aa8d3efc97`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightJetData`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [band_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/band-geometry--191a0258e7a914644db07c75.md) | 21 | `result-track:191a0258e7a914644db07c751ebbbc138544dc95ec3380cc1f65b4ea6c60e010` |
| 2 | `lemma` | [band_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/band-shift-norm--7a6f8f72a616d9a1a18e702a.md) | 36 | `result-track:7a6f8f72a616d9a1a18e702af6fb561c9d5d8606861488a4d6e3dedbb4763c09` |
| 3 | `lemma` | [band_last_shift_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/band-last-shift-norm--b257b68dd7a145767e8448ea.md) | 49 | `result-track:b257b68dd7a145767e8448eacc382882a01a2e4963cf4f2d30217959dbf191b7` |
| 4 | `lemma` | [parameter_products](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/parameter-products--676d9d0fda79d18f9381cdc6.md) | 62 | `result-track:676d9d0fda79d18f9381cdc6e6dabb660bd20fb91c5a8860147f59d187ea91cb` |
| 5 | `lemma` | [weight_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/weight-norm-le--93d11b7045e3797d98b75816.md) | 92 | `result-track:93d11b7045e3797d98b758160e1654f75630a167f60ad1c3c6033005de77d101` |
| 6 | `lemma` | [eight_power_shift](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/eight-power-shift--4d23abd8b5ea6ce12d29014f.md) | 122 | `result-track:4d23abd8b5ea6ce12d29014f5ffd89bf5eb9946fcf8105460d002c49ef97181a` |
| 7 | `lemma` | [finiteModel_eight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/finitemodel-eight--df2ffe534e78465212429238.md) | 128 | `result-track:df2ffe534e784652124292386a5a81390b78ce989dc4f1127ab2f478ee0f02ba` |
| 8 | `lemma` | [finiteModel_jet_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/finitemodel-jet-error--d1e3fa6db3210ac052cfa6ab.md) | 145 | `result-track:d1e3fa6db3210ac052cfa6ab288313baee738dac7a98db5823bb86e41bfc10bd` |
| 9 | `lemma` | [cutoff_weight_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/cutoff-weight-bound--9006eada92db1a2371469cc4.md) | 169 | `result-track:9006eada92db1a2371469cc45fcbafb05fac704f8d87c31cd7ed113f4fd0543c` |
| 10 | `lemma` | [actual_tail_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/actual-tail-error--fa9ae7de2ff44b998dca2f13.md) | 181 | `result-track:fa9ae7de2ff44b998dca2f1351d43423d79fd354a5cf697de1b36257ec08edca` |
| 11 | `theorem` | [source_enclosed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightSourceEnclosure.lean/declarations/source-enclosed--a19c1bffe1f913bd3ef0dcec.md) | 195 | `result-track:a19c1bffe1f913bd3ef0dceca65ac5a6352f50e1d088bd7ac7f00f45a980b0c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
