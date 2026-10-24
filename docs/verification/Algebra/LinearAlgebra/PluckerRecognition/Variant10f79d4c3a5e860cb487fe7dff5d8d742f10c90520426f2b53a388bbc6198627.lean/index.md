# Verification target: GRWTSK.Algebra.LinearAlgebra.PluckerRecognition.Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37a1b34085d659e2813b33f42480249da509c856",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37a1b34085d659e2813b33f42480249da509c856`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotExistence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [columnSubmatrix_update_selection](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/columnsubmatrix-update-selection--d5b6ba0d5de6d5480dc43bee.md) | 35 | `result-track:d5b6ba0d5de6d5480dc43bee14328cdba2887c3e763fbccf02c130c9c61a2b0b` |
| 2 | `theorem` | [det_updateCol_identity](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/det-updatecol-identity--be284c050350c53fc81aa861.md) | 47 | `result-track:be284c050350c53fc81aa8613f99bcdcb6bb37a54d182369e4ca6e293aa68d41` |
| 3 | `theorem` | [normalized_entry_eq_columnMinor](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/normalized-entry-eq-columnminor--a95a516794ef5f274b80c429.md) | 58 | `result-track:a95a516794ef5f274b80c4295290b53df626a687b9a2e3183eac3a9b9726b754` |
| 4 | `theorem` | [pivotNormalize_entry_eq_ratio](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/pivotnormalize-entry-eq-ratio--5ad3b53daa30775b8c9b1ff7.md) | 66 | `result-track:5ad3b53daa30775b8c9b1ff79c14df73de1837892837da2adb7df5f80b898ebe` |
| 5 | `theorem` | [columnMinor_proportional_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/columnminor-proportional-of-ordered--6d70bb9d9d2c0cd7a9cf9bff.md) | 74 | `result-track:6d70bb9d9d2c0cd7a9cf9bff7f92b11bb40b9ad1bc7aa4fdde1d011bd8ef50d6` |
| 6 | `theorem` | [pivotNormalize_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/pivotnormalize-eq-of-columnminor-proportional--96b79b9ecb2d26e788e06539.md) | 89 | `result-track:96b79b9ecb2d26e788e06539784385f189762fec2a8381a45b1f213e43bd24c7` |
| 7 | `theorem` | [exists_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/exists-rowchange-of-framerowspace-eq--01fe3a312fd93f7f3463b454.md) | 102 | `result-track:01fe3a312fd93f7f3463b4545f0710a8be9bbb2cb30de7671143e7cd5e8b2adc` |
| 8 | `theorem` | [frameRowSpace_eq_iff_rowChange](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/framerowspace-eq-iff-rowchange--9d59c21cb2ca9f2e2d6a4140.md) | 123 | `result-track:9d59c21cb2ca9f2e2d6a4140d7c281dea1206c24bb4104ee484e61b2b74d5d06` |
| 9 | `theorem` | [columnMinor_proportional_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/columnminor-proportional-of-framerowspace-eq--d7dad268841162ddb992243f.md) | 133 | `result-track:d7dad268841162ddb992243f691b168ef286b664f7c034f80dc19e708a8add50` |
| 10 | `theorem` | [frameRowSpace_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/framerowspace-eq-of-columnminor-proportional--2c3fadd33aadd83286cb85e0.md) | 144 | `result-track:2c3fadd33aadd83286cb85e0644b95586e1574920b66a4a9d4bf0b5a046f5af2` |
| 11 | `theorem` | [frameRowSpace_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/framerowspace-eq-iff-orderedminor-proportional--30e3c6f68ae2806b3ee000f9.md) | 157 | `result-track:30e3c6f68ae2806b3ee000f9a835a0749226d83f6a42a5fc8671229e1bbf6d8d` |
| 12 | `theorem` | [orderedMinor_factor_unique](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/orderedminor-factor-unique--b21188dc4be180e12e280e3b.md) | 171 | `result-track:b21188dc4be180e12e280e3ba5cb57ceab9d609fdef03ccf37617eacfb3a2fb6` |
| 13 | `theorem` | [orderedMinor_factor_pos](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/orderedminor-factor-pos--9f860345f84b9ef7f672b258.md) | 179 | `result-track:9f860345f84b9ef7f672b2583e52f45d143167a16a9bfc6e1901715fd4e90a15` |
| 14 | `theorem` | [frameRowSpace_eq_iff_positive_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/framerowspace-eq-iff-positive-orderedminor-proportional--93e30c0beabe9e9051d92d47.md) | 192 | `result-track:93e30c0beabe9e9051d92d473c07bd28233a5a3c4983bd1d1ad39253241b9373` |
| 15 | `theorem` | [exists_positive_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant10f79d4c3a5e860cb487fe7dff5d8d742f10c90520426f2b53a388bbc6198627.lean/declarations/exists-positive-rowchange-of-framerowspace-eq--b7a540a6cf5c1f2977d79d0b.md) | 208 | `result-track:b7a540a6cf5c1f2977d79d0b7d9751018034e0ab79a3b65ace5e7e343974e676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
