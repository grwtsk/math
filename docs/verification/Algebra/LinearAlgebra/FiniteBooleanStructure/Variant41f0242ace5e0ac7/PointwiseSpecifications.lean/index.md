# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.PointwiseSpecifications

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b167bd8e1c68b62f0065b1f233f43db9f8cab42",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b167bd8e1c68b62f0065b1f233f43db9f8cab42`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.RowMajorArrayRepresentation`](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RowMajorArrayRepresentation.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_mapInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/get-mapinplace--e0fa762be5c5a992074237eb.md) | 57 | `result-track:e0fa762be5c5a992074237ebd20945aae53c7878d5287545eea0176c3fd7e6ed` |
| 2 | `theorem` | [get_zipWithInPlace](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/get-zipwithinplace--465335ed0e68c11504a46bd6.md) | 68 | `result-track:465335ed0e68c11504a46bd6e78f0dc0a66ea4d1b558c2785149617d33d72201` |
| 3 | `theorem` | [mapInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/mapinplace-spec--ceeb0c6a3de0eb68429508ea.md) | 82 | `result-track:ceeb0c6a3de0eb68429508eab43026db20013657ab9cb017d44d8a4cc03919e0` |
| 4 | `theorem` | [zipWithInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/zipwithinplace-spec--be7528f4ec3946db6727d851.md) | 97 | `result-track:be7528f4ec3946db6727d8516c4a908250414c43b08953a93b2860585069481b` |
| 5 | `theorem` | [andInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/andinplace-spec--147d5d8f7a55b0927fbbd0c0.md) | 106 | `result-track:147d5d8f7a55b0927fbbd0c02782e79de34a599564021ce30de8e7e8eb254cab` |
| 6 | `theorem` | [orInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/orinplace-spec--dd928f6da51adfe8d0f50702.md) | 113 | `result-track:dd928f6da51adfe8d0f507025e4aca153c2895e28749675cdf0b98cfb734567b` |
| 7 | `theorem` | [xorInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/xorinplace-spec--bbd97e302149ef5b7fe1349d.md) | 120 | `result-track:bbd97e302149ef5b7fe1349dd7e9b292de8fd02677850e70109edeacb1c0676d` |
| 8 | `theorem` | [notInPlace_spec](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/declarations/notinplace-spec--8c0f805364825822f60a65ad.md) | 127 | `result-track:8c0f805364825822f60a65ad6489dcf2103cccf5c871fc67f196bfdc7d820a3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
