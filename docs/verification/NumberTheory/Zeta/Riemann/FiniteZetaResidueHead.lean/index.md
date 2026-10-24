# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f47207cf95aae509028fec8f59d299e09fd3a893",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f47207cf95aae509028fec8f59d299e09fd3a893`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedZetaExplicitFormulaChannels.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nontrivialZeroResidueHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/nontrivialzeroresiduehead--d75d941f38fcc695569b02d3.md) | 33 | `declaration-track:d75d941f38fcc695569b02d341656a69e876cbf65154993eade088883f30f335` |
| 2 | `def` | [zetaPoleResidueTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/zetapoleresidueterm--b9d87135ba6ffbd54b9bcd62.md) | 36 | `declaration-track:b9d87135ba6ffbd54b9bcd622c84d5e0d6660be5efae93d8341c504cf68a24ed` |
| 3 | `def` | [knownFiniteZetaResidueHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/knownfinitezetaresiduehead--e7c35f916453c7d1145733ed.md) | 39 | `declaration-track:e7c35f916453c7d1145733eda3851aaca96eb216b020be25fe039138304f5a00` |
| 4 | `theorem` | [nontrivial_zero_weighted_local_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/nontrivial-zero-weighted-local-residue--bd6033700b29cca5d2e30999.md) | 42 | `result-track:bd6033700b29cca5d2e30999fc39ace3b943ca096a2c067aed2e21d5b798983e` |
| 5 | `theorem` | [pole_weighted_local_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/pole-weighted-local-residue--499f69deee92235ab7b9f75a.md) | 53 | `result-track:499f69deee92235ab7b9f75a83cfefd63763bbdcd7fb1bc4c201f8702c9655cd` |
| 6 | `theorem` | [nontrivialZeroResidueHead_add](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteZetaResidueHead.lean/declarations/nontrivialzeroresiduehead-add--4effc96a94eb221983dc8827.md) | 65 | `result-track:4effc96a94eb221983dc8827ab0db38cf0a4964fdfac6d806c30ab93c34026cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
