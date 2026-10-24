# Verification target: GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6282342dcf45c447702dd5a10a68b519152a4304",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6282342dcf45c447702dd5a10a68b519152a4304`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionErrorTransfer.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachProgressionArcModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcmodel--7116a0b5577c4717e998413c.md) | 47 | `declaration-track:7116a0b5577c4717e998413cc3bf07ec2d670e9c57a11cf0db693d9bd16a7cf6` |
| 2 | `def` | [goldbachProgressionArcModelMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcmodelmajorsum--25c3af4c776e385f6c559200.md) | 52 | `declaration-track:25c3af4c776e385f6c559200c1d237e920ba24621877fffc224b0b7e53d4c0fc` |
| 3 | `def` | [goldbachProgressionArcResidual](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcresidual--33ed97d21c732e8e81ed1f58.md) | 59 | `declaration-track:33ed97d21c732e8e81ed1f58591505cdc274f6ad28466226136c4a058eec5ae2` |
| 4 | `def` | [goldbachProgressionResidueErrorTotal](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionresidueerrortotal--f74b76f8aeff7b764bc29eea.md) | 65 | `declaration-track:f74b76f8aeff7b764bc29eea29ec112145fc6ce598cddbd06daa9620ee88ee34` |
| 5 | `def` | [goldbachProgressionPointwiseErrorBudget](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionpointwiseerrorbudget--e208f9bb9d610e2a3422cb51.md) | 71 | `declaration-track:e208f9bb9d610e2a3422cb51641ca7efee8c6512a7213aa8e1cd360c46724e84` |
| 6 | `def` | [goldbachProgressionArcErrorBudget](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcerrorbudget--27b8520237e065a80fc15547.md) | 79 | `declaration-track:27b8520237e065a80fc1554748c42d0b78bee5cd743737781209dbd85d298e77` |
| 7 | `theorem` | [continuous_goldbachProgressionCircleModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/continuous-goldbachprogressioncirclemodel--7831c358ce7d3de0547eb42c.md) | 87 | `result-track:7831c358ce7d3de0547eb42c17bf6962896049fc496df241fd1c46db1de9943d` |
| 8 | `theorem` | [integrableOn_goldbachProgressionArcModel](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/integrableon-goldbachprogressionarcmodel--ca90bd8b9611a4e3b14ac971.md) | 98 | `result-track:ca90bd8b9611a4e3b14ac971470c29755cccab74df7ff7a04b8f7b1b0294c85d` |
| 9 | `theorem` | [goldbachProgressionArcResidual_eq_integral](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionarcresidual-eq-integral--100e4b7130be25b0964c09cb.md) | 109 | `result-track:100e4b7130be25b0964c09cb411448e13f73404d91d63f6972be64f4a543f051` |
| 10 | `theorem` | [goldbachProgressionResidueErrorTotal_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionresidueerrortotal-nonneg--f5e524bfcae3d01de6429359.md) | 125 | `result-track:f5e524bfcae3d01de64293594ad80f524f22bbaa0e3fa5e431f7451ce6b281e8` |
| 11 | `theorem` | [goldbachProgressionPointwiseErrorBudget_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachprogressionpointwiseerrorbudget-nonneg--acae5bc5638f7a58df27cf1f.md) | 135 | `result-track:acae5bc5638f7a58df27cf1fcd80eb0707c084bbe1e02215d210475708f3ea8c` |
| 12 | `theorem` | [norm_goldbachProgressionCircleResidual_le_on_arc](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/norm-goldbachprogressioncircleresidual-le-on-arc--1026f863ea0791af0710d0cb.md) | 150 | `result-track:1026f863ea0791af0710d0cba49de6761d159799613db13ae58da9e64166b460` |
| 13 | `theorem` | [norm_goldbachProgressionArcResidual_le](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/norm-goldbachprogressionarcresidual-le--23e978bdb893fac582287fad.md) | 178 | `result-track:23e978bdb893fac582287fade791d17f8854201c5c87f9b13c2aaaee7f77d7bd` |
| 14 | `theorem` | [goldbachRationalArcSum_eq_progressionModel_add_residual](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachrationalarcsum-eq-progressionmodel-add-residual--3e98866451dba7f922cf4780.md) | 220 | `result-track:3e98866451dba7f922cf4780465da3eb925f11e941a884e32ec413adaca3786e` |
| 15 | `theorem` | [goldbachCount_pos_of_progression_residue_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachcount-pos-of-progression-residue-bounds--2bd2bd4f0106b1ac950304c6.md) | 236 | `result-track:2bd2bd4f0106b1ac950304c63e5da214304a85ad3b906906dd3389012de0de33` |
| 16 | `theorem` | [goldbachCount_pos_of_progression_truncated_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/declarations/goldbachcount-pos-of-progression-truncated-certificate--f9614be642fa2d11fe8c669c.md) | 276 | `result-track:f9614be642fa2d11fe8c669c6668f2a3c6cb5d9e990b312be8e948dee87cb6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
