# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentFiniteHeadGram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c73b42d61be39e040ff7e6a4e1e318c6f0514cf7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c73b42d61be39e040ff7e6a4e1e318c6f0514cf7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSpectralPort.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteHeadCorrection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/declarations/finiteheadcorrection--c017be67c0042f173ad3cbf7.md) | 46 | `declaration-track:c017be67c0042f173ad3cbf75572e5b245da3de699e1db0af1d23530de64e66e` |
| 2 | `theorem` | [finiteHeadCorrection_sub_canonicalCorrection_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/declarations/finiteheadcorrection-sub-canonicalcorrection-eq--5f1ab8e4277fe081d3a1109d.md) | 56 | `result-track:5f1ab8e4277fe081d3a1109d5b5fb4f520a10e6b6caf1b20a197d6aea545203c` |
| 3 | `theorem` | [wrong_sign_defect](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/declarations/wrong-sign-defect--bab5c22ed5d36d5fd815f176.md) | 71 | `result-track:bab5c22ed5d36d5fd815f1766f9d8900fa1ab9311833f27e3904f31e2d116f15` |
| 4 | `theorem` | [norm_finiteHeadCorrection_sub_canonicalCorrection_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/declarations/norm-finiteheadcorrection-sub-canonicalcorrection-le--3c7c6853fd73f842a57153a4.md) | 85 | `result-track:3c7c6853fd73f842a57153a4a402e1633f51f9b76a48d1b56c876cd8bfccd6c1` |
| 5 | `theorem` | [norm_finiteHeadCorrection_sub_sourceGram_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentFiniteHeadGram.lean/declarations/norm-finiteheadcorrection-sub-sourcegram-le--745ab7d104086fd583fc620d.md) | 97 | `result-track:745ab7d104086fd583fc620d00f0736d527235ed30f77882fc129030e85e34eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
