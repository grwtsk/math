# Verification target: GRWTSK.Algebra.LinearAlgebra.RealificationDraft.Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee1a9301ecb132de22a0e1312c5d360817d8c833",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee1a9301ecb132de22a0e1312c5d360817d8c833`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Signature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.Module` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinates](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/coordinates--dfe33bb2866a77ab6bf5ff26.md) | 13 | `declaration-track:dfe33bb2866a77ab6bf5ff26672c95b28a4f33626fca9d1dfbe1cd5aa93c0998` |
| 2 | `def` | [diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/diagonalrealform--4a80a8858a2176e6229cb0c2.md) | 22 | `declaration-track:4a80a8858a2176e6229cb0c24d44c9c1b300b8eecd28fb6af530bdcef7a59efc` |
| 3 | `def` | [diagonalRealEquiv](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/diagonalrealequiv--17c9fdc2926eba6be64d0029.md) | 25 | `declaration-track:17c9fdc2926eba6be64d0029bc71862f26bf1dc0b5bb7ce546e21b7276011df0` |
| 4 | `theorem` | [diagonalRealForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/diagonalrealform-apply--8614fb8a7b53c3c237a66313.md) | 29 | `result-track:8614fb8a7b53c3c237a663130b77bbf07f8f0b7e6906db1cb54358e1d3d5377a` |
| 5 | `theorem` | [diagonal_hermitian_energy](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/diagonal-hermitian-energy--82943d1644aff3ffed513696.md) | 39 | `result-track:82943d1644aff3ffed513696440f36acfafa25c60e69c431078b7e1b1ad8b58b` |
| 6 | `theorem` | [doubled_count](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/doubled-count--f0c91df87ae07d1ab144b18b.md) | 50 | `result-track:f0c91df87ae07d1ab144b18b3d7deff58261a72f154d738e62435b4fe4c79300` |
| 7 | `theorem` | [sigPos_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/sigpos-diagonalrealform--16fde206b9e852168fa34571.md) | 59 | `result-track:16fde206b9e852168fa345712ca0ac260630729c0958181c428ef708e928e1cd` |
| 8 | `theorem` | [sigNeg_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/signeg-diagonalrealform--14457499b2b728343bd8feec.md) | 64 | `result-track:14457499b2b728343bd8feec8b5a37928ca7e1294eeaa8a75ea725069596f79c` |
| 9 | `theorem` | [radical_diagonalRealForm](../../../../../mathematics/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/declarations/radical-diagonalrealform--2dc2bd8c8595f9abe5e847a3.md) | 69 | `result-track:2dc2bd8c8595f9abe5e847a3f0dcee70b66e412be0b8c70c9e5600ff2b8838b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
