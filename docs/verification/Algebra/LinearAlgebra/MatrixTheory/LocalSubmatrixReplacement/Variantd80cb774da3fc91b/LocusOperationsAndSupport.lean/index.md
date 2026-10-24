# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.LocalSubmatrixReplacement.Variantd80cb774da3fc91b.LocusOperationsAndSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2ea09b0c30aea1423002e4f9e04aa0aed589e8f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2ea09b0c30aea1423002e4f9e04aa0aed589e8f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/extractsubmatrix--ea790dab753e8becc25cdad8.md) | 39 | `declaration-track:ea790dab753e8becc25cdad84ec5cc04a9ff33b86a21f7acd95ca6d5b2c9e148` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/extractsubmatrix-apply--f0cb4e813c509324588383df.md) | 44 | `result-track:f0cb4e813c509324588383dfe1922e5bb79d006c7c6708046525cbd2e7100f58` |
| 3 | `def` | [implantSubmatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implantsubmatrix--633795414e65571ded2e2367.md) | 51 | `declaration-track:633795414e65571ded2e2367eda6b9e658a398692d04c4d8988e2c16ba425268` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implantsubmatrix-inside--866d7414fef79315619683a1.md) | 60 | `result-track:866d7414fef79315619683a1e38f2b496bd226fd1fd61ed1781d951f8dab1ce3` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/extractsubmatrix-implantsubmatrix--e8a37f1797ab84deb0b9e86d.md) | 70 | `result-track:e8a37f1797ab84deb0b9e86d93a777652d29e02e22d99cf42bdcf74d36f4312f` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implantsubmatrix-extractsubmatrix--b8aae76a1ef8184499b366b1.md) | 80 | `result-track:b8aae76a1ef8184499b366b12c5bfaf0ac5f9dbb8357255a97410fc4992037e8` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implantsubmatrix-outside--5877828dd91d710eaa085b6d.md) | 100 | `result-track:5877828dd91d710eaa085b6df2bda0b7e8feab455275ec4ff19a16ffdc3f0390` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implantsubmatrix-overwrite--8a9e638df5c456e9320e03a5.md) | 116 | `result-track:8a9e638df5c456e9320e03a544eb8466d03f326924a8a1ed9c9f3201485ee16a` |
| 9 | `def` | [differenceSupport](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/differencesupport--568de6b6b708e1cfa1eb92ef.md) | 127 | `declaration-track:568de6b6b708e1cfa1eb92ef04d2d7113c46b9db93c86302cd7aa09858642e18` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/mem-differencesupport-iff--bc0664256cc0862bd7974345.md) | 130 | `result-track:bc0664256cc0862bd79743450a235f41dc62ba2060ebf3fe4db6927f821d98f4` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/implant-differencesupport-inside--aae1fbdcb882de5e159d6f6a.md) | 135 | `result-track:aae1fbdcb882de5e159d6f6aa2c54888a3517849e1d74fbc840ff0e6cab73432` |
| 12 | `def` | [RowUnique](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/rowunique--bf0c50317008ee7f67e0afe8.md) | 149 | `declaration-track:bf0c50317008ee7f67e0afe80e0ed838aad3156f1344ec51eccf6848c1554028` |
| 13 | `def` | [ColumnUnique](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/LocusOperationsAndSupport.lean/declarations/columnunique--f683385b22c92c468fc345ef.md) | 153 | `declaration-track:f683385b22c92c468fc345efef671e404dc2e26eb997aaf1060190f4ab809aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
