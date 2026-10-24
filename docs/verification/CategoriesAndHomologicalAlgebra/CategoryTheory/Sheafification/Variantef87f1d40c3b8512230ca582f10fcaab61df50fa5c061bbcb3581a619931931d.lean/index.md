# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafification.Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc5425bc43825604d22e79985f03ceafbffddde8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc5425bc43825604d22e79985f03ceafbffddde8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafify` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafification--9550853ec75ba6c418ba7a26.md) | 45 | `declaration-track:9550853ec75ba6c418ba7a2663c2f8fd7dc1afcf8586fffe89ed865f03ed1bda` |
| 2 | `def` | [sheafificationCompToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafificationcomptosheaf--0e9128f9c60848309f886610.md) | 63 | `declaration-track:0e9128f9c60848309f88661030388976872b285879ee7aa51b7a1d1e90d71590` |
| 3 | `def` | [sheafificationCompForgetCompToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafificationcompforgetcomptopresheaf--ef38e5a65f1de9bd29234c47.md) | 70 | `declaration-track:ef38e5a65f1de9bd29234c4704acbea2a05072e47dc212647fc62a4f48175b84` |
| 4 | `def` | [sheafificationHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafificationhomequiv--ec8c3fe8b892ef19c0deec81.md) | 77 | `declaration-track:ec8c3fe8b892ef19c0deec8112a5b716a41d8f404f74d091adfe6ae912a14ac1` |
| 5 | `lemma` | [toPresheaf_map_sheafificationHomEquiv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/topresheaf-map-sheafificationhomequiv-def--cb2569b77a25eb2343211d8b.md) | 83 | `result-track:cb2569b77a25eb2343211d8bc29b8a50a54e9562adf8147a9a7fbfa19931b2c4` |
| 6 | `lemma` | [toPresheaf_map_sheafificationHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/topresheaf-map-sheafificationhomequiv--f551850ed48a91872714d0b0.md) | 89 | `result-track:f551850ed48a91872714d0b0a46105fdacfd7f97a38b807358ca056340903667` |
| 7 | `lemma` | [toSheaf_map_sheafificationHomEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/tosheaf-map-sheafificationhomequiv-symm--e9347d1d5f22100ec917513f.md) | 98 | `result-track:e9347d1d5f22100ec917513f6f11e0bba70af3b45cab362c63436431cb65a5d2` |
| 8 | `def` | [sheafificationAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafificationadjunction--f26fca5ae1091c0804979b79.md) | 112 | `declaration-track:f26fca5ae1091c0804979b79624434444614e8f2614d65cf94049d36ddf1d4be` |
| 9 | `lemma` | [sheafificationAdjunction_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/sheafificationadjunction-homequiv-apply--75c375696ddb8c5ca9dffa82.md) | 128 | `result-track:75c375696ddb8c5ca9dffa823ac6ce13a3c032658dd4662174c0f7fed2a892c1` |
| 10 | `lemma` | [toPresheaf_map_sheafificationAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/topresheaf-map-sheafificationadjunction-unit-app--4a91007860126072e2576dfa.md) | 133 | `result-track:4a91007860126072e2576dfa61eef08c5bd500761ff681e9cf42fa2e848734d6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--74dbe750f6bc547d2ea9f4b2.md) | 137 | `declaration-track:74dbe750f6bc547d2ea9f4b25f5a654a0707f57c74cc7d8251dc255d2c156f84` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--9758b383c29fc6c679195d32.md) | 146 | `declaration-track:9758b383c29fc6c679195d32ffc38b11dabfaad44e96a149348501cb9bfc16f7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--364b8905552f6af3808abaea.md) | 150 | `declaration-track:364b8905552f6af3808abaea34f89ae291e9e9fbe64e6886b82de4f7604690e4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--e3d018afdb4a00d5f740290d.md) | 153 | `declaration-track:e3d018afdb4a00d5f740290dbc540c4595bc4a9e3909ec1f3bdb8c3284ca8ab8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--b54b0537e34204c0ebb2705c.md) | 156 | `declaration-track:b54b0537e34204c0ebb2705c1c4e0f11471a076ca7f416acb93fc0080fef64ab` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variantef87f1d40c3b8512230ca582f10fcaab61df50fa5c061bbcb3581a619931931d.lean/declarations/instance--20c8f7e9866d35ef5b9ec0b4.md) | 159 | `declaration-track:20c8f7e9866d35ef5b9ec0b448cca4038dcc64e29a249a2dfa807485823e4875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
