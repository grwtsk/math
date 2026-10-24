# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d8ca52a56b1691d8d54dcb105f2744f143d7e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d8ca52a56b1691d8d54dcb105f2744f143d7e5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinBounds.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_le_rpow_sub_one_div](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/log-le-rpow-sub-one-div--b8c3db290560bcbe2cf42a68.md) | 30 | `result-track:b8c3db290560bcbe2cf42a68fe85eb38fe27314165eeeca2881d00519bc082d3` |
| 2 | `theorem` | [log_majorant_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/log-majorant-integral--0695c798daf3e3e4719e137d.md) | 39 | `result-track:0695c798daf3e3e4719e137d0600a890bc6477fb648d83be144a3f7d057440fc` |
| 3 | `theorem` | [fractionalMellin_deriv_norm_le_subtracted](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/fractionalmellin-deriv-norm-le-subtracted--59d6e48c00fdbe64a4b1b6aa.md) | 59 | `result-track:59d6e48c00fdbe64a4b1b6aab06c12e70210198267d1f9733186869333088fb9` |
| 4 | `theorem` | [fractionalMellin_deriv_norm_le_thirtyTwoSevenths](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/fractionalmellin-deriv-norm-le-thirtytwosevenths--9209af2803936167022f6a2d.md) | 105 | `result-track:9209af2803936167022f6a2db32c618dfffe8ef16ba96626de052c13f0acac15` |
| 5 | `theorem` | [fractionalMellin_vertical_variation_subtracted](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/fractionalmellin-vertical-variation-subtracted--ab8bb94baab2fb8410ffd0de.md) | 115 | `result-track:ab8bb94baab2fb8410ffd0de8f59a78b20909941e1504cde878c3c883fce5ef8` |
| 6 | `theorem` | [poleNormalized_deriv_norm_le_subtracted](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/polenormalized-deriv-norm-le-subtracted--2094a5f869a2e21fc90456e1.md) | 138 | `result-track:2094a5f869a2e21fc90456e15d30edb789d9b5946f86c04b5e8f46d864b76c0a` |
| 7 | `theorem` | [poleNormalized_deriv_norm_le_113_sevenths](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/declarations/polenormalized-deriv-norm-le-113-sevenths--4ea8292612fb747cbd194661.md) | 175 | `result-track:4ea8292612fb747cbd19466122f8a695f98d81ebbbc4ae0036622f082b1897e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
