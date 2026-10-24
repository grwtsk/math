# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiniteMellinAgreement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23139b75f6982252cb48fa424a4dbd60b6c5c649",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23139b75f6982252cb48fa424a4dbd60b6c5c649`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivative_bounds_agree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/derivative-bounds-agree--107a133c7251a8f394f8e2ef.md) | 25 | `result-track:107a133c7251a8f394f8e2ef9c1dc539b05f373574d78f6114d88e93cba16800` |
| 2 | `theorem` | [finitePower_prefix_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/finitepower-prefix-residual--85ab241171887df5a3fc2310.md) | 29 | `result-track:85ab241171887df5a3fc2310874a75a693def24d62a211a1363a9ccf1af976c9` |
| 3 | `theorem` | [finitePower_prefix_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/finitepower-prefix-error--6cbe946cc1b2ae8910cebdf7.md) | 38 | `result-track:6cbe946cc1b2ae8910cebdf74449c18f2afd93549c62315a54cf9adebf3d589d` |
| 4 | `theorem` | [sample_agreement_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/sample-agreement-le--e6900f6199ebcecdaa91881e.md) | 49 | `result-track:e6900f6199ebcecdaa91881e23432a9507e83cfde34ca999d35ed46c2be34894` |
| 5 | `theorem` | [exact_margin_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/exact-margin-iff--fd4341ff164be6d35fc4766f.md) | 68 | `result-track:fd4341ff164be6d35fc4766faea184b06b1911e194f7e04bff9e99a4be14e346` |
| 6 | `theorem` | [no_strict_finitePower_margin_at_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/no-strict-finitepower-margin-at-zero--b74f2b72d4b7b161da2f4deb.md) | 76 | `result-track:b74f2b72d4b7b161da2f4deb2eceeb696627cb0aa5a4e70eb4c7bd18e96c7802` |
| 7 | `theorem` | [nonzero_iff_exists_finitePower_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/nonzero-iff-exists-finitepower-margin--22f14488320c5a5b890b9d17.md) | 86 | `result-track:22f14488320c5a5b890b9d175351325f62784f4bea5ffd5732ebabcf6db78aff` |
| 8 | `theorem` | [nonzero_of_power_sample](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/nonzero-of-power-sample--149f5d1b04402294e44de4b3.md) | 102 | `result-track:149f5d1b04402294e44de4b315adf1e71e2979868ac949a00bd511824ae8ea7b` |
| 9 | `theorem` | [pole_values_agree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean/declarations/pole-values-agree--18a68e63f3a5b88e6b0e1abf.md) | 112 | `result-track:18a68e63f3a5b88e6b0e1abfa30b6a8cefab3c733f1ed3cdf611ea442a57ccff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
