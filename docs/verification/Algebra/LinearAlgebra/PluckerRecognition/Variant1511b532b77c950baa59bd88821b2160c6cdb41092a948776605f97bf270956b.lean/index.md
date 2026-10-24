# Verification target: GRWTSK.Algebra.LinearAlgebra.PluckerRecognition.Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ca512b87491063da32a6bedb2603c000245a54f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ca512b87491063da32a6bedb2603c000245a54f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean.json)

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
| 1 | `theorem` | [columnSubmatrix_update_selection](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/columnsubmatrix-update-selection--1f9a9d1a90434b5307ff197e.md) | 35 | `result-track:1f9a9d1a90434b5307ff197ec8510f6c0f2201e33230f47abb65863d8af7d074` |
| 2 | `theorem` | [det_updateCol_identity](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/det-updatecol-identity--1dee9217ea84fbe884b09bc9.md) | 47 | `result-track:1dee9217ea84fbe884b09bc9fb3cb8d6c2444dbe94050c12998439f68abdb9f7` |
| 3 | `theorem` | [normalized_entry_eq_columnMinor](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/normalized-entry-eq-columnminor--1d21bac0cd1673ffcbf85052.md) | 58 | `result-track:1d21bac0cd1673ffcbf8505223cd6b10c6d8aba66d6539e797e09db67a2e48c4` |
| 4 | `theorem` | [pivotNormalize_entry_eq_ratio](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/pivotnormalize-entry-eq-ratio--40d726fe89460875bf3805f9.md) | 66 | `result-track:40d726fe89460875bf3805f9bed7281febbb215e24d5d5353dd7fced03f67e13` |
| 5 | `theorem` | [columnMinor_proportional_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/columnminor-proportional-of-ordered--7b334649a64b87a498b58fb8.md) | 74 | `result-track:7b334649a64b87a498b58fb85470b747ebcb4949db3c546731cf06983cdd7938` |
| 6 | `theorem` | [pivotNormalize_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/pivotnormalize-eq-of-columnminor-proportional--19027708bc1812acd4bdb9b0.md) | 89 | `result-track:19027708bc1812acd4bdb9b0a5cf94edae6d30374d6160850ce1ec7b994d0866` |
| 7 | `theorem` | [exists_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/exists-rowchange-of-framerowspace-eq--ef9d27548039d682efef4476.md) | 102 | `result-track:ef9d27548039d682efef4476a467a3e6c3e9dbdc41355cdd708b9fee04c93797` |
| 8 | `theorem` | [frameRowSpace_eq_iff_rowChange](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/framerowspace-eq-iff-rowchange--2a161284d43033169b921c60.md) | 124 | `result-track:2a161284d43033169b921c60773db5ba93d362d70c7d0f5146d694505f190059` |
| 9 | `theorem` | [columnMinor_proportional_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/columnminor-proportional-of-framerowspace-eq--90eb25c84dede5f3c502f969.md) | 134 | `result-track:90eb25c84dede5f3c502f9696222ef72d3a7003f3f4d0d9a74c100e650775f10` |
| 10 | `theorem` | [frameRowSpace_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/framerowspace-eq-of-columnminor-proportional--f64c49023e9768b12d85904f.md) | 145 | `result-track:f64c49023e9768b12d85904f8aabcf28011e803cf3404dd3145ec3a280d68ba3` |
| 11 | `theorem` | [frameRowSpace_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/framerowspace-eq-iff-orderedminor-proportional--36897af413db1916beee421b.md) | 158 | `result-track:36897af413db1916beee421ba01c81e9269ab64cdafbfc49ca3be1aa3f01862b` |
| 12 | `theorem` | [orderedMinor_factor_unique](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/orderedminor-factor-unique--cfdc47030c7827ceaf6148d0.md) | 172 | `result-track:cfdc47030c7827ceaf6148d0975b8da5f4acb474c17de6debd6f856156f47ee2` |
| 13 | `theorem` | [orderedMinor_factor_pos](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/orderedminor-factor-pos--7ca27fafd0163927d54a940b.md) | 180 | `result-track:7ca27fafd0163927d54a940bd090b0018d19b6ed39d92a5605062d04d9ff7c13` |
| 14 | `theorem` | [frameRowSpace_eq_iff_positive_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/framerowspace-eq-iff-positive-orderedminor-proportional--9dfe3af66766aa805a4942f9.md) | 193 | `result-track:9dfe3af66766aa805a4942f96b018d3c56f16145bdb4f2a3964d2c7021e1cc66` |
| 15 | `theorem` | [exists_positive_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant1511b532b77c950baa59bd88821b2160c6cdb41092a948776605f97bf270956b.lean/declarations/exists-positive-rowchange-of-framerowspace-eq--a6c47826068657d6f2a40579.md) | 209 | `result-track:a6c47826068657d6f2a405797fd2ac28b409f726a43b4612bed909c8a41ccf8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
