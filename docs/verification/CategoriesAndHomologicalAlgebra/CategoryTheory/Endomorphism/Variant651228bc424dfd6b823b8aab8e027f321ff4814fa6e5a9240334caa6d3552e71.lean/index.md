# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Endomorphism.Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccf7177556b159d5b9ed0c9398a9fd066390cecc",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccf7177556b159d5b9ed0c9398a9fd066390cecc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [End](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/end--4431c7710d2abadaf569ae13.md) | 28 | `declaration-track:4431c7710d2abadaf569ae13e958f0f22ba21730662097b5858c0f2db41b0919` |
| 2 | `instance` | [one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/one--3e07b11aff321a4cd1762b3b.md) | 36 | `declaration-track:3e07b11aff321a4cd1762b3b3377af7c7458912ca3d5f75c18a8e65f8aaf3a00` |
| 3 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/inhabited--abab766dd8a5a40c89312e17.md) | 38 | `declaration-track:abab766dd8a5a40c89312e17e2d4abd0e3d3d2564dee2ee5a2fa578bc0bd3010` |
| 4 | `instance` | [mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mul--e3b626b5a87922c26023495d.md) | 42 | `declaration-track:e3b626b5a87922c26023495dd047b90417d06ab2c669e978c23c8756791605d1` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/of--5e075c953d5c7d35556643fb.md) | 47 | `declaration-track:5e075c953d5c7d35556643fb54fd14f8ea48cc7ceb2ec3ff7d78ada2dbb8f1bb` |
| 6 | `def` | [asHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/ashom--731b1ab0211d62c421e97515.md) | 51 | `declaration-track:731b1ab0211d62c421e97515a1eb5d2aa2b8e27c872ab9f17074a7e3bd30e3aa` |
| 7 | `theorem` | [one_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/one-def--b18114121d1661d93d21f96c.md) | 54 | `result-track:b18114121d1661d93d21f96cf94af4bc038575cbe3a26b082b949e9d46d8baac` |
| 8 | `theorem` | [mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mul-def--ce78bc5c9356bf57aaa3d87a.md) | 57 | `result-track:ce78bc5c9356bf57aaa3d87a118d1d539c1aadc1aea19b1ff473e9fb7b163da5` |
| 9 | `instance` | [monoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/monoid--88a40d0a05141ac3fd53ce39.md) | 62 | `declaration-track:88a40d0a05141ac3fd53ce39bee4ea84fb6ae07b09489f390feacbf1d9e8bf45` |
| 10 | `instance` | [mulActionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mulactionright--5e502e22ace113ad6bb681fd.md) | 73 | `declaration-track:5e502e22ace113ad6bb681fd793ef903cce13aae00bcf932b5ad67bed1b1cc95` |
| 11 | `instance` | [mulActionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mulactionleft--8e4a9302c089030dde1e08a6.md) | 78 | `declaration-track:8e4a9302c089030dde1e08a6e851b36c28887a588c1e7d772c34362627e4d551` |
| 12 | `theorem` | [smul_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/smul-right--7936d032c30b571bac5adf00.md) | 83 | `result-track:7936d032c30b571bac5adf00e3146ff1be325066125cce90398ca05cc2f4df83` |
| 13 | `theorem` | [smul_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/smul-left--6ae5d8153cc70d8e97864588.md) | 86 | `result-track:6ae5d8153cc70d8e97864588d6aa67f9ea7b7447566145bafb879ef5e369af76` |
| 14 | `instance` | [group](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/group--5cb1c76febb29e932898a01e.md) | 92 | `declaration-track:5cb1c76febb29e932898a01ebad01f12e5e73db0dc8cdbc0466d129f42ff27cb` |
| 15 | `theorem` | [isUnit_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/isunit-iff-isiso--2d548586cb46158700685cb3.md) | 98 | `result-track:2d548586cb46158700685cb3a5a0910c09080baeedf10e9792575cd11fc5b530` |
| 16 | `def` | [Aut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/aut--d26559a284b3ab514ec4a46c.md) | 110 | `declaration-track:d26559a284b3ab514ec4a46c2aca5afa11d77335f738e72d088faaed82855d81` |
| 17 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/ext--a629086923bc8a9d6ce58a73.md) | 115 | `result-track:a629086923bc8a9d6ce58a73c414232ccb8044291ba199e42284fef5b748ec10` |
| 18 | `instance` | [inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/inhabited--6e8f9275fc92e15a76c94f79.md) | 118 | `declaration-track:6e8f9275fc92e15a76c94f79f3a1bcf3dd7640eba05651e176718dc4462b4197` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/instance--62fd2249c05c1f39a86d64d3.md) | 120 | `declaration-track:62fd2249c05c1f39a86d64d34b45aefdd4d95fabee8e9a6efc278c071c05c4a9` |
| 20 | `theorem` | [Aut_mul_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/aut-mul-def--7bbc8f3ab6d81d07a89a6cbf.md) | 129 | `result-track:7bbc8f3ab6d81d07a89a6cbf04a566347d3506fa0353305ad72c7b6e7d551659` |
| 21 | `theorem` | [Aut_inv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/aut-inv-def--796f18b8dcbd006356e92f98.md) | 131 | `result-track:796f18b8dcbd006356e92f987384fa95b53ac9ca9cd87d17171c2055f80f766a` |
| 22 | `def` | [unitsEndEquivAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/unitsendequivaut--72cd2e9965526dbaf70cdd25.md) | 136 | `declaration-track:72cd2e9965526dbaf70cdd25c22f15e04112ad0ac3cf9912334535121189e6d0` |
| 23 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/toend--3bc3b3b8f18c1e4a493626bd.md) | 145 | `declaration-track:3bc3b3b8f18c1e4a493626bdef62073f3e6dcef4efd64c8719bfaaf2022b24fc` |
| 24 | `def` | [autMulEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/autmulequivofiso--9922817eb4d5954063401e02.md) | 148 | `declaration-track:9922817eb4d5954063401e02d515d3f0361f61fe0edb3d0d4ee65d4e80e7fa6a` |
| 25 | `def` | [mapEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mapend--873f708429b67caa0664927c.md) | 163 | `declaration-track:873f708429b67caa0664927ca868798fac664787dfac7ff4ef88801c5c4b12f0` |
| 26 | `def` | [mapAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mapaut--aa2229a80dd30330a038fb61.md) | 169 | `declaration-track:aa2229a80dd30330a038fb61a69467fe47be8dac81ba10a5d71000b0be5f587b` |
| 27 | `def` | [mulEquivEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/mulequivend--b7950b40c11da98ad807bf1b.md) | 181 | `declaration-track:b7950b40c11da98ad807bf1b4cc718a0dc7b82e4d04141f385740b4f34b92d27` |
| 28 | `def` | [autMulEquivOfFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant651228bc424dfd6b823b8aab8e027f321ff4814fa6e5a9240334caa6d3552e71.lean/declarations/autmulequivoffullyfaithful--4477c3eb86f09b1b7b1555f1.md) | 188 | `declaration-track:4477c3eb86f09b1b7b1555f134c2a036dceaf5e897f8376c37d3bcd38619be33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
