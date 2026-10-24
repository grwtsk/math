# Verification target: GRWTSK.Algebra.LinearAlgebra.TotallyUnimodular.Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "688621618ad6842c7370ba44fc3543f5eacaca02",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `688621618ad6842c7370ba44fc3543f5eacaca02`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular--74f7fd8a3e53a6929fd1cd6c.md) | 38 | `declaration-track:74f7fd8a3e53a6929fd1cd6c7f422badb1bcdc6d09c4dc049b9827db3e462bec` |
| 2 | `lemma` | [isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-iff--acaadcf6628ddbe53295d012.md) | 42 | `result-track:acaadcf6628ddbe53295d012f90070c7a39ba833f9eb484d339e9cea93c10859` |
| 3 | `lemma` | [isTotallyUnimodular_iff_fintype.](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-iff-fintype--660c01b83e33fd0c02f16b71.md) | 61 | `result-track:660c01b83e33fd0c02f16b7144b7d38b94a717b767a66bf27daedc2f20fcd10c` |
| 4 | `lemma` | [IsTotallyUnimodular.apply](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-apply--95f7d080b178146ebfec7fc6.md) | 73 | `result-track:95f7d080b178146ebfec7fc6d764de2a8af81c677febb8022ab93d6a3002f846` |
| 5 | `lemma` | [IsTotallyUnimodular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-submatrix--0d42d852173f31a527ea5984.md) | 78 | `result-track:0d42d852173f31a527ea5984525d40d0faf5c74548e6d948174426028c62795b` |
| 6 | `lemma` | [IsTotallyUnimodular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-transpose--9b62e7b16c0ced2c467e2bfe.md) | 85 | `result-track:9b62e7b16c0ced2c467e2bfe6db70d14aa340687f23d6597f0b42d749f4ab97d` |
| 7 | `lemma` | [transpose_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/transpose-istotallyunimodular-iff--d1d784c35458ce88ecf6062f.md) | 91 | `result-track:d1d784c35458ce88ecf6062f2dd41f8947e06ec3cc6af1ba8fdc00e893b93b6c` |
| 8 | `lemma` | [IsTotallyUnimodular.reindex](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-reindex--3c2c46be7d5e0ea6343ed6ff.md) | 95 | `result-track:3c2c46be7d5e0ea6343ed6ffe5e26add5e7c994871bc892a769cfcbd15489cbb` |
| 9 | `lemma` | [reindex_isTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/reindex-istotallyunimodular--4c9e4313eee0476d0d03512e.md) | 100 | `result-track:4c9e4313eee0476d0d03512e478da1893127693ded14644c1382c1fa0b5dbc81` |
| 10 | `lemma` | [emptyRows_isTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/emptyrows-istotallyunimodular--d2450f51ffbfe5896a31eace.md) | 107 | `result-track:d2450f51ffbfe5896a31eaceca53026b2ee9ed1844ca5063b4135da870e99b8c` |
| 11 | `lemma` | [emptyCols_isTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/emptycols-istotallyunimodular--002516f986222c9044db6060.md) | 116 | `result-track:002516f986222c9044db6060f870e41e1fa66e3df91bf34241f87795f9669f7c` |
| 12 | `lemma` | [IsTotallyUnimodular.fromRows_unitlike](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/istotallyunimodular-fromrows-unitlike--abda76137db9512689f4b47a.md) | 122 | `result-track:abda76137db9512689f4b47ae4f4a19759b15a642fa1d6d57a6f23e3814fe54a` |
| 13 | `lemma` | [fromRows_isTotallyUnimodular_iff_rows](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/fromrows-istotallyunimodular-iff-rows--7f054e726cc0d97412e12188.md) | 162 | `result-track:7f054e726cc0d97412e12188f38dedeaa068de90a40ac0bb2676f05656822b10` |
| 14 | `lemma` | [fromRows_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/fromrows-one-istotallyunimodular-iff--1b8497ab0869b5628d7c7b07.md) | 167 | `result-track:1b8497ab0869b5628d7c7b0718001bdbee860e884996c07d2a77ea522a2783bf` |
| 15 | `lemma` | [one_fromRows_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/one-fromrows-istotallyunimodular-iff--087911bf1dd25d3f23a76ed8.md) | 172 | `result-track:087911bf1dd25d3f23a76ed8968f961bda3041f64e3d6f6b491eb2ed85044b08` |
| 16 | `lemma` | [fromCols_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/fromcols-one-istotallyunimodular-iff--37237b541bbb81209dfb620e.md) | 180 | `result-track:37237b541bbb81209dfb620e972b58accae7be7dc8894cd608d5e2c5550c752a` |
| 17 | `lemma` | [one_fromCols_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/one-fromcols-istotallyunimodular-iff--57379784c3163c384655a188.md) | 185 | `result-track:57379784c3163c384655a188d80eb259dc22ea00a901a60bcba0058a60c70fca` |
| 18 | `lemma` | [fromRows_replicateRow0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/fromrows-replicaterow0-istotallyunimodular-iff--dd6c8090c693944b1a218cac.md) | 195 | `result-track:dd6c8090c693944b1a218cac6b63604d4c4326ea9fb0c87f938ec2609bb83c46` |
| 19 | `lemma` | [fromCols_replicateCol0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variantb18bb572d931d44b8fd37d29f680d9411ca1be48ee56b4fd03d45fd35d535d79.lean/declarations/fromcols-replicatecol0-istotallyunimodular-iff--446ee7216b5a97614ac3ed3b.md) | 204 | `result-track:446ee7216b5a97614ac3ed3b8d4a32f666d6b0456700f95535cbbff8547d77c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
