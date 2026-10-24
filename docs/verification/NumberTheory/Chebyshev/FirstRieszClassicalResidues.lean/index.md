# Verification target: GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalResidues

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40ef73391cf122ae4cabf330377dc8e72849137c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40ef73391cf122ae4cabf330377dc8e72849137c`.

Source path: `GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients`](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentResidueContributions`](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaValues` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riemannZeta_neg_one](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/declarations/riemannzeta-neg-one--f44cf422d3946155b580f06f.md) | 19 | `result-track:f44cf422d3946155b580f06fd4f06fd663234bcf9537604fd3831115d280f97d` |
| 2 | `theorem` | [continuousAt_neg_logDeriv_neg_one](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/declarations/continuousat-neg-logderiv-neg-one--0d65e5ac43e8364758e46d63.md) | 24 | `result-track:0d65e5ac43e8364758e46d63b132ddc7f874979001121800144bd5ff74c6b21d` |
| 3 | `theorem` | [firstRiesz_residue_zero](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/declarations/firstriesz-residue-zero--5281391874e4d5b805480f66.md) | 29 | `result-track:5281391874e4d5b805480f6617cf201b72cb047c55e25f1d9f96f9d957bb3e34` |
| 4 | `theorem` | [firstRiesz_residue_neg_one](../../../../mathematics/NumberTheory/Chebyshev/FirstRieszClassicalResidues.lean/declarations/firstriesz-residue-neg-one--beb88e42a1d35538fbea5972.md) | 46 | `result-track:beb88e42a1d35538fbea597233fbc003a6fe271af6c75c5cd35699d24990850f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
