# Verification target: GRWTSK.Algebra.LinearAlgebra.LDL.Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea8c6e0f2583d62cfd051b16248975906e4c1e6f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea8c6e0f2583d62cfd051b16248975906e4c1e6f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LDL.lowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lowerinv--2146557d05d617ba3b89ff5c.md) | 57 | `declaration-track:2146557d05d617ba3b89ff5c50af0d6becc978379ddd9ce05d602a592731e495` |
| 2 | `theorem` | [LDL.lowerInv_eq_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lowerinv-eq-gramschmidtbasis--4499cf1966fe41694bd36f25.md) | 61 | `result-track:4499cf1966fe41694bd36f25d544ac8af55eb679d7f44a8e947edf918eaeab29` |
| 3 | `instance` | [LDL.invertibleLowerInv](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-invertiblelowerinv--f7b162025ee55cfd42f48898.md) | 72 | `declaration-track:f7b162025ee55cfd42f48898452911c17677c0fcd999ac3896605ff490aef52d` |
| 4 | `theorem` | [LDL.lowerInv_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lowerinv-orthogonal--9944836a4d6173f17e894726.md) | 80 | `result-track:9944836a4d6173f17e894726ac35dcf9b34264076de34ae1308848af00ac7116` |
| 5 | `def` | [LDL.diagEntries](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-diagentries--9ef78e62e7818e846b440197.md) | 85 | `declaration-track:9ef78e62e7818e846b440197e0861d526d2d1045dedde2aa468348692ebef0ec` |
| 6 | `def` | [LDL.diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-diag--311961b0c023e1960aedc7b1.md) | 89 | `declaration-track:311961b0c023e1960aedc7b1d28f25e3d7416edd43a802382ca50876d1144c31` |
| 7 | `theorem` | [LDL.lowerInv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lowerinv-triangular--3a65e5e76b4fe64e1491f62a.md) | 92 | `result-track:3a65e5e76b4fe64e1491f62aa68aec29e9b63335f545f7bc6b3cf06b952d53c2` |
| 8 | `theorem` | [LDL.diag_eq_lowerInv_conj](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-diag-eq-lowerinv-conj--2223ba5f464ca5bea6483538.md) | 100 | `result-track:2223ba5f464ca5bea6483538c9dcc3208cee9338be4dc122bf620cf5293e3ae8` |
| 9 | `def` | [LDL.lower](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lower--a07efe78d02ce2b8f5b6762a.md) | 114 | `declaration-track:a07efe78d02ce2b8f5b6762a21015893b358e508fa303bcc1483a6349c400d2e` |
| 10 | `theorem` | [LDL.lower_conj_diag](../../../../../mathematics/Algebra/LinearAlgebra/LDL/Variant1b77b04a96c01ec67c326584e5cce37cd7a4070658e164940386c0f52bfd1fd5.lean/declarations/ldl-lower-conj-diag--11a5529b158d00bb464fea8f.md) | 119 | `result-track:11a5529b158d00bb464fea8f63a7860888aa0169586bd127789c6b00a6466494` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
