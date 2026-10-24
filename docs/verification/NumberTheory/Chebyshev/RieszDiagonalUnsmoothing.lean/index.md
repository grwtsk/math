# Verification target: GRWTSK.NumberTheory.Chebyshev.RieszDiagonalUnsmoothing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "607e6774caa9e0a89dd64f884ab7d59eea3e2a84",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `607e6774caa9e0a89dd64f884ab7d59eea3e2a84`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.NormalizedRieszFiniteEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [radius](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/radius--11ed297f3df19828971708ce.md) | 17 | `declaration-track:11ed297f3df19828971708ce2c1f75ca273fe0ec5119f191c20dcfd2e60f0b34` |
| 2 | `theorem` | [radius_pos](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/radius-pos--d8b6baf977b8ab591a2b7881.md) | 19 | `result-track:d8b6baf977b8ab591a2b78819473f8216b3ab474c764eb12fcb43375e4f565dd` |
| 3 | `theorem` | [radius_le_half](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/radius-le-half--568335e16e272a289e04fdcc.md) | 21 | `result-track:568335e16e272a289e04fdccbca0f6b30ff6d629d48df5e349b979886d2a201b` |
| 4 | `theorem` | [radius_tendsto_zero](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/radius-tendsto-zero--6d89157c463fa0f3aa616ce7.md) | 26 | `result-track:6d89157c463fa0f3aa616ce78ccb6c5648f68fd19a00b710fbf90eb1d9bf5531` |
| 5 | `theorem` | [exists_diagonal_height](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/exists-diagonal-height--386a7469a24e6dffa65befe4.md) | 34 | `result-track:386a7469a24e6dffa65befe41296bd0bb77120ee67301b6b2c23dc04be62eda6` |
| 6 | `theorem` | [diagonal_tendsto_psiHalf](../../../../mathematics/NumberTheory/Chebyshev/RieszDiagonalUnsmoothing.lean/declarations/diagonal-tendsto-psihalf--7992b09e04d369cf0f231acd.md) | 46 | `result-track:7992b09e04d369cf0f231acde136f3b6e8214369d1aa0f6badaace084c0462ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
