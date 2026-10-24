# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Noetherian.Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fcccea7400bbf7713901dd3678968ff97a0dadb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fcccea7400bbf7713901dd3678968ff97a0dadb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Simple` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoetherianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/noetherianobject--c521d9e6bac1925932029439.md) | 43 | `declaration-track:c521d9e6bac192593202943983ec43000f07cf5a5bfe15dfdefdb51a4e54e88c` |
| 2 | `lemma` | [NoetherianObject.subobject_gt_wellFounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/noetherianobject-subobject-gt-wellfounded--e7060b946af898eb0a801d2e.md) | 46 | `result-track:e7060b946af898eb0a801d2e90a13ec956ac1d024be6b01fae53d5ac8c168d32` |
| 3 | `class` | [ArtinianObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/artinianobject--9154a99156bca4f8a17587c6.md) | 53 | `declaration-track:9154a99156bca4f8a17587c6e52fdcba844d17faa36439c9332d36fb9ab49f6e` |
| 4 | `lemma` | [ArtinianObject.subobject_lt_wellFounded](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/artinianobject-subobject-lt-wellfounded--9bc4faaa26ea511e307db3ea.md) | 56 | `result-track:9bc4faaa26ea511e307db3eaaddce5e707bb3b358d53c774d3cc850c5cc0a8f5` |
| 5 | `class` | [Noetherian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/noetherian--9ec238057beec5f1ef523398.md) | 63 | `declaration-track:9ec238057beec5f1ef523398a06dc79d196118d7cb235f1660d10cf0171af39f` |
| 6 | `class` | [Artinian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/artinian--8545c4f60df901cfc9781455.md) | 69 | `declaration-track:8545c4f60df901cfc978145503fd95c0754141ccca11dc78141e5f31d030a0f5` |
| 7 | `theorem` | [exists_simple_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/exists-simple-subobject--704af598f42ddaea2f6d40e2.md) | 80 | `result-track:704af598f42ddaea2f6d40e2559b4f83b86397c69a9233575231ad1dae615bb3` |
| 8 | `def` | [simpleSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/simplesubobject--00fe35a06450b4e4f4eb90f8.md) | 88 | `declaration-track:00fe35a06450b4e4f4eb90f89c1e9ddea7b234837b2b2b77c412d1a61025e86e` |
| 9 | `def` | [simpleSubobjectArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/simplesubobjectarrow--96ffe5ac2283e343c98cef67.md) | 92 | `declaration-track:96ffe5ac2283e343c98cef6767ab8cea14a8449a5fa4a51cdf97be4289f6f781` |
| 10 | `instance` | [mono_simpleSubobjectArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/mono-simplesubobjectarrow--c833aa045e75c74256b0d838.md) | 96 | `declaration-track:c833aa045e75c74256b0d8388ac86962905a11ead11ffe7720086fdea417aeec` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Noetherian/Variant88be03aaff3f13d11e724a95cbcfba12e7766a6d96ec62ff76066e83f32da6c5.lean/declarations/instance--f7c8d9957055c77cd1fdffe0.md) | 101 | `declaration-track:f7c8d9957055c77cd1fdffe04883c62a4f6c6725ee867038d07f47e72e9d0efd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
