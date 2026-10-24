# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "316ef90c14cca25fd4edd19f608cae583f59f9bf",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `316ef90c14cca25fd4edd19f608cae583f59f9bf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean.json)

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
| 1 | `def` | [exteriorPower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/exteriorpower--a43ad38966b2ef6edd01cb10.md) | 38 | `declaration-track:a43ad38966b2ef6edd01cb109b93962e7d420fcc3dfa205274f26631ccda6aec` |
| 2 | `def` | [AlternatingMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/alternatingmap--76f5385cadd90507b6ae72e8.md) | 43 | `declaration-track:76f5385cadd90507b6ae72e80b40e83f89d63e808fcf1c34f9a70efbbafa75aa` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/instance--154a084a52598bed5cf77111.md) | 47 | `declaration-track:154a084a52598bed5cf7711129fb3e3a3b1266abb658f1e23c14294be7a4e7aa` |
| 4 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/ext--6dd07d0db6f390278147d609.md) | 56 | `result-track:6dd07d0db6f390278147d609f0757307fe3a08f27634b346eb8b3aeac91786a8` |
| 5 | `def` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/postcomp--06f50da8fca52ce94ae1030b.md) | 63 | `declaration-track:06f50da8fca52ce94ae1030be42c09faf33cdd7c05a28aef63a9f71955e772b3` |
| 6 | `lemma` | [postcomp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/postcomp-apply--4a2b514cbaed6ec80f6a51ef.md) | 67 | `result-track:4a2b514cbaed6ec80f6a51ef1723fee1d010aa1107548f3bcd2cae7a8ff941bf` |
| 7 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/mk--5514e303f93f05fd5bbaf9fa.md) | 76 | `declaration-track:5514e303f93f05fd5bbaf9fad289f5473d71ab1b3a0a36dfcd37de5c2342fec9` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/hom-ext--f0671095738253e8ac89560c.md) | 81 | `result-track:f0671095738253e8ac89560c664f6ba2a595ef5c0184a869bea6c07b50b9a787` |
| 9 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/desc--3062b9271d88a598b80004fe.md) | 88 | `declaration-track:3062b9271d88a598b80004fee1127fa7ab0755b27c2c3ce5bad94b386a3ef21d` |
| 10 | `lemma` | [desc_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/desc-mk--b11b981b6f52c7cf5c49a8a1.md) | 93 | `result-track:b11b981b6f52c7cf5c49a8a1fd9bf236785226d0c75728d3f4e8360307699ff8` |
| 11 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/map--b745d7aafe700f6a02cd6e3b.md) | 100 | `declaration-track:b745d7aafe700f6a02cd6e3b38df48a80b8f214c039d49cd6200b2ccc82f2840` |
| 12 | `lemma` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/map-mk--6703416a95bd6eea95ac51bb.md) | 105 | `result-track:6703416a95bd6eea95ac51bbc6a0310a4384e82cdbb229f6a4438bb20666aaab` |
| 13 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/functor--ecf0a30129fa9174d546ca62.md) | 113 | `declaration-track:ecf0a30129fa9174d546ca62115d812cf4286762910d4ad7782ec90c995b1075` |
| 14 | `def` | [iso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso--345d2a241b4ba6431c6d40a1.md) | 118 | `declaration-track:345d2a241b4ba6431c6d40a1bafcbbee66feb4866f372dbe058a80aa5585a495` |
| 15 | `lemma` | [iso₀_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso-hom-apply--5d065fd3049ff9113f28f36d.md) | 122 | `result-track:5d065fd3049ff9113f28f36da73aaaa897b30dd68157a2c7f71d220765fb73ac` |
| 16 | `lemma` | [iso₀_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso-hom-naturality--bd5d67fcf3c6791f6dc92a1e.md) | 127 | `result-track:bd5d67fcf3c6791f6dc92a1e0b216c4580b12fcd7693719df12626bb4462b504` |
| 17 | `def` | [iso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso--c3bb56d538cf2f4ac6c98fdc.md) | 132 | `declaration-track:c3bb56d538cf2f4ac6c98fdcbbe3b7e19faec92b63a381f02846e40ffa907a79` |
| 18 | `lemma` | [iso₁_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso-hom-apply--84f8314564ae6ad7f48e5386.md) | 136 | `result-track:84f8314564ae6ad7f48e5386e02960df01bd803ba585b601b87655db28a0478c` |
| 19 | `lemma` | [iso₁_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/iso-hom-naturality--52b52a26c4aa9612dce8d762.md) | 141 | `result-track:52b52a26c4aa9612dce8d7629a79bdc4eac2672a84053c9a100a45e5abdf2045` |
| 20 | `def` | [natIso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/natiso--eadb940fc03ebd848fa0d9f4.md) | 149 | `declaration-track:eadb940fc03ebd848fa0d9f43a48e4b9982ec3f951341a61722c96e912f0c1c4` |
| 21 | `def` | [natIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant7016ea533c7a77bc09736593dd46044e373f3a9baeac02de16e18dad7d8d9305.lean/declarations/natiso--3d4d92ebd31cb2054c9ce2da.md) | 154 | `declaration-track:3d4d92ebd31cb2054c9ce2da22eee1a3cdb4d4713bd154cac2c3998375d08ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
