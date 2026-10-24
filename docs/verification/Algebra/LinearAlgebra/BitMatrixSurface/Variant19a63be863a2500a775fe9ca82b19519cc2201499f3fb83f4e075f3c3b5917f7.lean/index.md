# Verification target: GRWTSK.Algebra.LinearAlgebra.BitMatrixSurface.Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60fe5bed6c2bf873d5519abf7e80c749ef23b329",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60fe5bed6c2bf873d5519abf7e80c749ef23b329`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `URSMContracts` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [asContractSquare](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/declarations/ascontractsquare--2bddb1682ec3ab6252204947.md) | 10 | `declaration-track:2bddb1682ec3ab625220494764b68dfb8de553b6843b4d0f84cf0a80953fcbaf` |
| 2 | `abbrev` | [asBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/declarations/asbitmatrix--aacb097f9f15034102bff932.md) | 14 | `declaration-track:aacb097f9f15034102bff93245fb9890fe86598b42fd1e1e681c43cba542a627` |
| 3 | `theorem` | [roundTripBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/declarations/roundtripbitmatrix--dc4b6ff53ef439c300f284da.md) | 18 | `result-track:dc4b6ff53ef439c300f284da59aa559c566ad5114a50fc89a25776fae6a2164e` |
| 4 | `theorem` | [roundTripContractSquare](../../../../../mathematics/Algebra/LinearAlgebra/BitMatrixSurface/Variant19a63be863a2500a775fe9ca82b19519cc2201499f3fb83f4e075f3c3b5917f7.lean/declarations/roundtripcontractsquare--727ba08b04ee95c2c3474dcd.md) | 23 | `result-track:727ba08b04ee95c2c3474dcde92b3a517ee78239f1f405c73110e77c7d931a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
