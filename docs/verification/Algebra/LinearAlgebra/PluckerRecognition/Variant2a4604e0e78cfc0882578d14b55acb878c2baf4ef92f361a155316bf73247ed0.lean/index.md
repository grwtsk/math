# Verification target: GRWTSK.Algebra.LinearAlgebra.PluckerRecognition.Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6796d6b1011888c08fbde25d812b6117fad3a367",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6796d6b1011888c08fbde25d812b6117fad3a367`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotExistence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [columnSubmatrix_update_selection](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/columnsubmatrix-update-selection--584be846fa4e158c09a58eb5.md) | 27 | `result-track:584be846fa4e158c09a58eb56a8c7f3d942648d6e618fb4d53f3d7ad58c6b0a6` |
| 2 | `theorem` | [det_updateCol_identity](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/det-updatecol-identity--6c15232a61d2c5e494fcfbe8.md) | 39 | `result-track:6c15232a61d2c5e494fcfbe88e4850ebdf79c32abebdf79a6121fabffff668d3` |
| 3 | `theorem` | [normalized_entry_eq_columnMinor](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/normalized-entry-eq-columnminor--b272c904904c5cf59ae6cdf2.md) | 50 | `result-track:b272c904904c5cf59ae6cdf278078831921596d0b9c62956b1947d59e6e2ea1f` |
| 4 | `theorem` | [pivotNormalize_entry_eq_ratio](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/pivotnormalize-entry-eq-ratio--4300842c5e03c86953bff3e8.md) | 58 | `result-track:4300842c5e03c86953bff3e8288f5615cdc8cbc95c030135d0d4092785803a76` |
| 5 | `theorem` | [columnMinor_proportional_of_ordered](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/columnminor-proportional-of-ordered--f25d20b4e19c4db3cea6067b.md) | 66 | `result-track:f25d20b4e19c4db3cea6067b8d1007d775258f3fd9cac44dd4d178b27637bf1f` |
| 6 | `theorem` | [pivotNormalize_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/pivotnormalize-eq-of-columnminor-proportional--297ca557eb90df33fa412a37.md) | 81 | `result-track:297ca557eb90df33fa412a373272f5fbd3dc007be8bef1ecb1d9d3a0e3a35131` |
| 7 | `theorem` | [exists_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/exists-rowchange-of-framerowspace-eq--ff1e014d6adedd50113a57c0.md) | 94 | `result-track:ff1e014d6adedd50113a57c0484fa6561c365f05a8ce05a0969f24ffe9c0ab3b` |
| 8 | `theorem` | [frameRowSpace_eq_iff_rowChange](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/framerowspace-eq-iff-rowchange--5f544a6128c5b2d62229017d.md) | 115 | `result-track:5f544a6128c5b2d62229017d5b794cde338c3195cce09dae43c93c5b56bb69dd` |
| 9 | `theorem` | [columnMinor_proportional_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/columnminor-proportional-of-framerowspace-eq--028909251a31755f1646bf7d.md) | 125 | `result-track:028909251a31755f1646bf7d6ad742a46c2c98cb96423eea81e2011ab669e2a9` |
| 10 | `theorem` | [frameRowSpace_eq_of_columnMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/framerowspace-eq-of-columnminor-proportional--5b96dd6fc473f41b44ee9b2b.md) | 136 | `result-track:5b96dd6fc473f41b44ee9b2b6c4218081fb3df78f8fa769fccb966ae5ebb973e` |
| 11 | `theorem` | [frameRowSpace_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/framerowspace-eq-iff-orderedminor-proportional--41ae983f213ccbcd8f222c85.md) | 149 | `result-track:41ae983f213ccbcd8f222c85ddc08848a67a6e63a6a386bad515526dd62b11a0` |
| 12 | `theorem` | [orderedMinor_factor_unique](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/orderedminor-factor-unique--45faed38246d610217033a6f.md) | 163 | `result-track:45faed38246d610217033a6ffbce6c219e01cb930e21863a5b379ec6a59f9842` |
| 13 | `theorem` | [orderedMinor_factor_pos](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/orderedminor-factor-pos--d13ab5057cc4267f599baa6d.md) | 171 | `result-track:d13ab5057cc4267f599baa6d32bc5c57153cd6f7ba71cc8f4ed4d00bbacf0ecd` |
| 14 | `theorem` | [frameRowSpace_eq_iff_positive_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/framerowspace-eq-iff-positive-orderedminor-proportional--fa93bd82129cf72b12d6ea13.md) | 184 | `result-track:fa93bd82129cf72b12d6ea139e88f2e2587adbd98da72b839a666712346eb7ea` |
| 15 | `theorem` | [exists_positive_rowChange_of_frameRowSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/PluckerRecognition/Variant2a4604e0e78cfc0882578d14b55acb878c2baf4ef92f361a155316bf73247ed0.lean/declarations/exists-positive-rowchange-of-framerowspace-eq--a40f6c36045adda4ea8f8a6b.md) | 200 | `result-track:a40f6c36045adda4ea8f8a6b84db6f99f6c7d9bb9a2139efe83e79fc9ecb0496` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
