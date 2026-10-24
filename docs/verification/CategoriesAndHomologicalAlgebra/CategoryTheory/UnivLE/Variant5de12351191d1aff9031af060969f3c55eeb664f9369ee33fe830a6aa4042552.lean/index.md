# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e4352810483fa306e8efcac5207810842a8291d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e4352810483fa306e8efcac5207810842a8291d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnivLE.ofEssSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/univle-ofesssurj--0e9a0dbc5150213ffe94a4cb.md) | 22 | `result-track:0e9a0dbc5150213ffe94a4cb50764bb5977dc1e2d9c6d826764bfaef2389c017` |
| 2 | `instance` | [EssSurj.ofUnivLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/esssurj-ofunivle--ce5945c7cf57e1d121070efa.md) | 28 | `declaration-track:ce5945c7cf57e1d121070efa66db982528b4a1438ee5a75e960261d61350920b` |
| 3 | `theorem` | [UnivLE_iff_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/univle-iff-esssurj--fcf92f43611b1cd542014da6.md) | 33 | `result-track:fcf92f43611b1cd542014da6df94d6ac9155673d56dc8193cfe4d0aff4d6955f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/instance--f80833936367894e0943c675.md) | 37 | `declaration-track:f80833936367894e0943c67500ac7a5cb86d29005341bd5b277208920c5b290b` |
| 5 | `def` | [UnivLE.witness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/univle-witness--c1797f674f274ce794ee2a9f.md) | 39 | `declaration-track:c1797f674f274ce794ee2a9f33d51845fa1e913d188abb572ba2fca8b047cdb9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/instance--d9014f910ecd6645bed0953e.md) | 42 | `declaration-track:d9014f910ecd6645bed0953e6e3292baefaa0483cf72901067b6723a19473772` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552.lean/declarations/instance--3ccd3ca3f35ac3d53ddb6d92.md) | 45 | `declaration-track:3ccd3ca3f35ac3d53ddb6d9299c26f1086c09a05a465b2e8021acc840975c023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
