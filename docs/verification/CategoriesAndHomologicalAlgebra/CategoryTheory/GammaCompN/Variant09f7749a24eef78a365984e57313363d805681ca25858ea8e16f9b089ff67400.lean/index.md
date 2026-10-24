# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaCompN.Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f821c20c670fc2ba77244160c6cacd88e6b4e1ae",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f821c20c670fc2ba77244160c6cacd88e6b4e1ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorGamma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.SplitSimplicialObject` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.HomologicalComplex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Γ₀NondegComplexIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/nondegcomplexiso--9e834fabdf2a41c66b76fd12.md) | 44 | `declaration-track:9e834fabdf2a41c66b76fd12f72e55835baa8711628f10f7b8e49fa4140e55db` |
| 2 | `def` | [Γ₀'CompNondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/compnondegcomplexfunctor--308a9eb2023a6ecb5da1bafe.md) | 69 | `declaration-track:308a9eb2023a6ecb5da1bafe839cf067ddba6a06e64c8aa021731c2743d93fb3` |
| 3 | `def` | [N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n--0abf80a8ca7a97c244e5b981.md) | 73 | `declaration-track:0abf80a8ca7a97c244e5b9817f2889d72d4686303ebbaede0edcbf16b215f55d` |
| 4 | `theorem` | [N₁Γ₀_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-app--086fe15095bfde61810d5f2b.md) | 82 | `result-track:086fe15095bfde61810d5f2bb34a72e2351ce3ccafa73565b3ed87f650216da8` |
| 5 | `theorem` | [N₁Γ₀_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-hom-app--6239ede996eda3fda5270c1d.md) | 90 | `result-track:6239ede996eda3fda5270c1dcd3e606dc8e08c8b2bbe796106d0a09569a3c379` |
| 6 | `theorem` | [N₁Γ₀_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-inv-app--35e361534bc43ace2c35f269.md) | 97 | `result-track:35e361534bc43ace2c35f2694cd73949ecccc1c1fb95b6860100c2c91bf63e65` |
| 7 | `theorem` | [N₁Γ₀_hom_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-hom-app-f-f--d1e620059c109bbc6c0895de.md) | 105 | `result-track:d1e620059c109bbc6c0895de9264b87bfffc762947f01d4ba9ad3c25abe1334a` |
| 8 | `theorem` | [N₁Γ₀_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-inv-app-f-f--bab44fa62d41fe70acece405.md) | 111 | `result-track:bab44fa62d41fe70acece405efd7deddc6c8767e2e36e985d349c83298054375` |
| 9 | `def` | [N₂Γ₂ToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-tokaroubiiso--f74639157d93aae8d75f0aaa.md) | 118 | `declaration-track:f74639157d93aae8d75f0aaa0a0a32ad58a6c1275813f3132fe8a6853c634dcb` |
| 10 | `lemma` | [N₂Γ₂ToKaroubiIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-tokaroubiiso-hom-app--e8e41082ab23a4edc6dc66a1.md) | 129 | `result-track:e8e41082ab23a4edc6dc66a19853a36e719fd10b40c77fcf26e57620bee63c65` |
| 11 | `lemma` | [N₂Γ₂ToKaroubiIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-tokaroubiiso-inv-app--a10194b30c5f1bd6dc4d3fb4.md) | 143 | `result-track:a10194b30c5f1bd6dc4d3fb45a10d205687aa473577d566abd1d275116e9d261` |
| 12 | `def` | [N₂Γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n--557470650c1b84051e5a422d.md) | 155 | `declaration-track:557470650c1b84051e5a422d190ad6abd08558c207c5007385466fb8ec1f89ad` |
| 13 | `theorem` | [N₂Γ₂_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-inv-app-f-f--45907074011a9e47f61a6ab3.md) | 160 | `result-track:45907074011a9e47f61a6ab3369df5b7079bac9f8dad57067e5e997a3affdbb5` |
| 14 | `lemma` | [whiskerLeft_toKaroubi_N₂Γ₂_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/whiskerleft-tokaroubi-n-hom--a728505e69a357b4b05eee14.md) | 173 | `result-track:a728505e69a357b4b05eee1437bd1569b4b060f8e7f6372959419570a6c0d0e8` |
| 15 | `theorem` | [N₂Γ₂_compatible_with_N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant09f7749a24eef78a365984e57313363d805681ca25858ea8e16f9b089ff67400.lean/declarations/n-compatible-with-n--662a3389419e2b6cad19f0b8.md) | 181 | `result-track:662a3389419e2b6cad19f0b8cd5bf3655c3f86bc5cb9d6bcab3380dbeeb1e283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
