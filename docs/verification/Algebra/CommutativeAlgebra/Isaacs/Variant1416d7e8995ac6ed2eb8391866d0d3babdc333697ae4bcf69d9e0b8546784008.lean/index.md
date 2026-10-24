# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Isaacs.Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5f3fdb5637b15d4b87a850a9f820b74e0d6a206",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5f3fdb5637b15d4b87a850a9f820b74e0d6a206`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.CosetCover` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_algHom_of_exist_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-alghom-of-exist-roots--26d6d4c2fc939ce0c693f893.md) | 37 | `result-track:26d6d4c2fc939ce0c693f8931acdda1446ff40c00aaf984653185445ad2d7b6d` |
| 2 | `theorem` | [nonempty_algHom_of_minpoly_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-alghom-of-minpoly-eq--7fa48f95f0818882f023aff1.md) | 71 | `result-track:7fa48f95f0818882f023aff19e24788555a89ce638423bb0d4127750aaa9f171` |
| 3 | `theorem` | [nonempty_algHom_of_range_minpoly_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-alghom-of-range-minpoly-subset--b6d31b00cf55aae4e8faeabc.md) | 76 | `result-track:b6d31b00cf55aae4e8faeabc5a04b2a2761f921e6325243333d1a059448d0aed` |
| 4 | `theorem` | [nonempty_algEquiv_of_range_minpoly_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-algequiv-of-range-minpoly-eq--aa239d76750ae671570044e9.md) | 81 | `result-track:aa239d76750ae671570044e9577b3348655cd3143f23690af77073e7b4cab48d` |
| 5 | `theorem` | [nonempty_algHom_of_aeval_eq_zero_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-alghom-of-aeval-eq-zero-subset--def8e616095c53014a6471ef.md) | 93 | `result-track:def8e616095c53014a6471efed6e4a150c514597dcc026b628d54225eb5b2188` |
| 6 | `theorem` | [nonempty_algEquiv_of_aeval_eq_zero_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/nonempty-algequiv-of-aeval-eq-zero-eq--4bada98cd084626025d08ec1.md) | 100 | `result-track:4bada98cd084626025d08ec12d6cf83370c8642c4e8e0ffd4cbcd35caa2024d5` |
| 7 | `theorem` | [_root_.IsAlgClosure.of_exist_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/Isaacs/Variant1416d7e8995ac6ed2eb8391866d0d3babdc333697ae4bcf69d9e0b8546784008.lean/declarations/root-isalgclosure-of-exist-roots--cdf25a822e11367784c503ac.md) | 107 | `result-track:cdf25a822e11367784c503acebcf5ab21d3934db8c6478c5a8ccc7ce70fd21c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
