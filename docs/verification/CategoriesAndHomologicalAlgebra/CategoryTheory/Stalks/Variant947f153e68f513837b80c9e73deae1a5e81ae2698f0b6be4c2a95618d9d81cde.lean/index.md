# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d463861180d35e98e6fa296364ceba8ddd98fedb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d463861180d35e98e6fa296364ceba8ddd98fedb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hom.stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/hom-stalkmap--1a80bf2a683674af4514602a.md) | 40 | `declaration-track:1a80bf2a683674af4514602a2ec911d66b2f01eeb96ee948c0332d2204b6ceb6` |
| 2 | `theorem` | [stalkMap_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/stalkmap-germ--37d6bb3c9d7df42d85ba0071.md) | 45 | `result-track:37d6bb3c9d7df42d85ba00713cadc5d11d1ccd2090cc9d36c8a5d2bd0e4a34ef` |
| 3 | `def` | [restrictStalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/restrictstalkiso--b50fd8234d8af9df5b22147e.md) | 56 | `declaration-track:b50fd8234d8af9df5b22147e9a921088ced1cabd28b5d7ecb3470bf73c4d9b6c` |
| 4 | `theorem` | [restrictStalkIso_hom_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/restrictstalkiso-hom-eq-germ--a977591976caed1cfd2d4a16.md) | 66 | `result-track:a977591976caed1cfd2d4a1611df46168cfedaf4807e66b191de4695b851bcc2` |
| 5 | `theorem` | [restrictStalkIso_inv_eq_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/restrictstalkiso-inv-eq-germ--2e1e6938d5d42bc30198bb37.md) | 76 | `result-track:2e1e6938d5d42bc30198bb37e8a3069e86773f722c33c6e5b5e54cea9bd29904` |
| 6 | `theorem` | [restrictStalkIso_inv_eq_ofRestrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/restrictstalkiso-inv-eq-ofrestrict--21f07c87d0023fd157b13109.md) | 83 | `result-track:21f07c87d0023fd157b13109c8619d4f9e04692a3e7973feec46176980d9d1e2` |
| 7 | `instance` | [ofRestrict_stalkMap_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/ofrestrict-stalkmap-isiso--a87d60182ba0013348c3b5e1.md) | 98 | `declaration-track:a87d60182ba0013348c3b5e1064c17d4cf5d7edca56d4b99739ee4f52f9b30ab` |
| 8 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/id--49d248d1ae3815013a48cd62.md) | 108 | `result-track:49d248d1ae3815013a48cd622aecf7b4acc39d8aaa5f50c9a7ebe833c8ad3cc8` |
| 9 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/comp--51d4b2ce26313ce66ef4d094.md) | 119 | `result-track:51d4b2ce26313ce66ef4d094ef8b5335c2232b03f6252a70b0ac74b43117ed09` |
| 10 | `theorem` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/congr--be4513a308479e2e3fe182cf.md) | 134 | `result-track:be4513a308479e2e3fe182cf232d06538cf93f5888016fbf440ce85442f2d706` |
| 11 | `theorem` | [congr_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/congr-hom--efa122cddba1707320f84acc.md) | 143 | `result-track:efa122cddba1707320f84acca95cf5a8a40370d076b2811e3d1080e7549131f6` |
| 12 | `theorem` | [congr_point](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/congr-point--7395c883ab832fb167d734cc.md) | 149 | `result-track:7395c883ab832fb167d734cc873496a76c8c3fce1eb385e9814de4b2ef8c3d3d` |
| 13 | `instance` | [isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/isiso--2608f13d3ddbf0cddd17e4a2.md) | 156 | `declaration-track:2608f13d3ddbf0cddd17e4a2b19a4e3bb742163b6bbc7c56ccf5276921bf20fa` |
| 14 | `def` | [stalkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/stalkiso--93f3f154a82f6c8724469f3d.md) | 180 | `declaration-track:93f3f154a82f6c8724469f3db3748846dde9104b4c747c27a1d93302a06c08d0` |
| 15 | `theorem` | [stalkSpecializes_stalkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant947f153e68f513837b80c9e73deae1a5e81ae2698f0b6be4c2a95618d9d81cde.lean/declarations/stalkspecializes-stalkmap--8f21a67b51a2903df0c852d6.md) | 186 | `result-track:8f21a67b51a2903df0c852d616bb51deeef7514b02c770828f6b6387fd95cdec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
