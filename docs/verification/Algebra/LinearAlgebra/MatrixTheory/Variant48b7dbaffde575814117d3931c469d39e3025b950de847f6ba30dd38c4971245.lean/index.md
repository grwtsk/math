# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4b3f5544cd2a5dc8c4d1edecf409ad21da38bf5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/elab--bf7c404040ff2d1512a4ba10.md) | 26 | `declaration-track:bf7c404040ff2d1512a4ba103645396dde6c81fcb4ccf5586c10371f21aa301c` |
| 2 | `def` | [mkMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/mkmatrix--67172953a91d46b81cde5a36.md) | 55 | `declaration-track:67172953a91d46b81cde5a3616e508932ea0af4b6531af1ec72bed974b2f7ea2` |
| 3 | `def` | [mkColumnVector](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/mkcolumnvector--998ac020886b788ffff5be4e.md) | 57 | `declaration-track:998ac020886b788ffff5be4e9bc0a7d68efa327ec590844960748c2a8d1df2ff` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--fd92c1e384a28ae90792117f.md) | 113 | `declaration-track:fd92c1e384a28ae90792117f2c6ae550326c1bc25b38a1f9ac76b3f2829f0df5` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--ec86032100e857ae737e5152.md) | 117 | `declaration-track:ec86032100e857ae737e5152267b31faed25457fa0688e081d0ff42bed2e5eab` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--06b91ca63d85abb989ef8cdf.md) | 121 | `declaration-track:06b91ca63d85abb989ef8cdf831154bb1d03881843c30491148c42a8b42d5fa9` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--f8467ad349d8898bf6385cff.md) | 126 | `declaration-track:f8467ad349d8898bf6385cff930da3061b54e33f7148353f6133b2b81a66ef40` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--6b0cfd3279eccfc936482db6.md) | 138 | `declaration-track:6b0cfd3279eccfc936482db6cbc7c566f602e60b3d417b13aca8520afdecece4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--39e6505a801451fd5ec641b4.md) | 150 | `declaration-track:39e6505a801451fd5ec641b4715902f353665867f51da0afd124aa5d9b54bb44` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--a81498c46a8e059393f86844.md) | 164 | `declaration-track:a81498c46a8e059393f86844188032fae2c59bf577997ef2287cc84295f52be9` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--6ee12d0eed099735b54c7526.md) | 172 | `declaration-track:6ee12d0eed099735b54c752615cfdd02258d9be0a540257b8cd434803f87f7a9` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--db1d1b81d3a24b9ebddbf065.md) | 176 | `declaration-track:db1d1b81d3a24b9ebddbf0658d067f54241e2cc40d44cf50cf5ef3088032f3d0` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--6c74e4e2cdf9fe9844c3fbd5.md) | 180 | `declaration-track:6c74e4e2cdf9fe9844c3fbd5616711de3429db920fe9ce6abe144bd82808c50a` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant48b7dbaffde575814117d3931c469d39e3025b950de847f6ba30dd38c4971245.lean/declarations/example--b6d3fdfcb172b51bcaff0f6d.md) | 184 | `declaration-track:b6d3fdfcb172b51bcaff0f6dca8b38f4cb572c6fd354bf004dd20117f08bbcb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
