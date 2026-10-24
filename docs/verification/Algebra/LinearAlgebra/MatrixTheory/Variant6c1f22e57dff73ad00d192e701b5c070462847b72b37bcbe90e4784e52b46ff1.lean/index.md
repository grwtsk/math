# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac23a8eeb536c1d78a092b444d604b47b74d211f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac23a8eeb536c1d78a092b444d604b47b74d211f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix--2bedc29a2b1a964276c5484a.md) | 44 | `declaration-track:2bedc29a2b1a964276c5484a57d508acadacfb5d21fb9544b8ad93b428fe39c5` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-apply--644248a9a80a573fd791322c.md) | 48 | `result-track:644248a9a80a573fd791322c7c258fbd19903053e49c08b36ef7e325c5fe38f8` |
| 3 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-self--6f7ccab579dd8bf4cef03b9c.md) | 52 | `result-track:6f7ccab579dd8bf4cef03b9ce7d298b170d78e2cace7069e9921604aaba98c43` |
| 4 | `theorem` | [toMatrix_row_sum_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-row-sum-one--c661477ae07c0b64c49c72fd.md) | 58 | `result-track:c661477ae07c0b64c49c72fdee7020bec96839f60e5060d768aab7d3a588e79e` |
| 5 | `theorem` | [affineIndependent_of_toMatrix_right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/affineindependent-of-tomatrix-right-inv--3b1d8956f227006b94f0de1a.md) | 63 | `result-track:3b1d8956f227006b94f0de1a1f4957be0031b86d8b287422b134f815285392ee` |
| 6 | `theorem` | [affineSpan_eq_top_of_toMatrix_left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/affinespan-eq-top-of-tomatrix-left-inv--87446a92b90cee1ab306d58b.md) | 80 | `result-track:87446a92b90cee1ab306d58b8bf274d5e450d9317607e4749fe7fc542e8f6382` |
| 7 | `theorem` | [toMatrix_vecMul_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-vecmul-coords--19bef211802c22e353dd8b0b.md) | 112 | `result-track:19bef211802c22e353dd8b0b2249fcc0ad537f1957e4376e21c77174939c50f9` |
| 8 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-mul-tomatrix--cea1f775715b6cd6af68050f.md) | 121 | `result-track:cea1f775715b6cd6af68050faa0105b7271436681f468eae2196d526adc7a26d` |
| 9 | `theorem` | [isUnit_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/isunit-tomatrix--93cc69f266d2711d2af46fb0.md) | 126 | `result-track:93cc69f266d2711d2af46fb043e38be7877c6587ae3390c0215b940fb1cbb388` |
| 10 | `theorem` | [isUnit_toMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/isunit-tomatrix-iff--90a92ace6412b7e3c2dfbe47.md) | 132 | `result-track:90a92ace6412b7e3c2dfbe47693425878569feb9cd594036166e8c4dcece9def` |
| 11 | `theorem` | [toMatrix_inv_vecMul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/tomatrix-inv-vecmul-tomatrix--09525f9d7d47c5d6adaceb29.md) | 154 | `result-track:09525f9d7d47c5d6adaceb291e39f5d3aea5c201605fc92892fcc10ff5796d80` |
| 12 | `theorem` | [det_smul_coords_eq_cramer_coords](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6c1f22e57dff73ad00d192e701b5c070462847b72b37bcbe90e4784e52b46ff1.lean/declarations/det-smul-coords-eq-cramer-coords--e1361c06988f24b02c96b87b.md) | 163 | `result-track:e1361c06988f24b02c96b87bb884a47ba52c04e2c5f322ef94a0849fa7b92e87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
