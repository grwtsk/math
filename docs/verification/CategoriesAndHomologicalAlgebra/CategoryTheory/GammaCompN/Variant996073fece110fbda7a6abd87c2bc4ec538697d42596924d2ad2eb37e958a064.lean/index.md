# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaCompN.Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5e2e85339768e23536152f297b2f160cd33a531",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5e2e85339768e23536152f297b2f160cd33a531`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorGamma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Γ₀NondegComplexIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/nondegcomplexiso--7932488df141b27ff445ec28.md) | 43 | `declaration-track:7932488df141b27ff445ec2861c510ff2157ad16d0261b5af4b779345cc5f21c` |
| 2 | `def` | [Γ₀'CompNondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/compnondegcomplexfunctor--408e8cffb5a2db17175f9e1c.md) | 67 | `declaration-track:408e8cffb5a2db17175f9e1cf74d8c13a876317859a44ab77aa760ebc342927b` |
| 3 | `def` | [N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n--cbcda464a01ecdfc5e3255ac.md) | 72 | `declaration-track:cbcda464a01ecdfc5e3255ac6828aca3b5e9bb225197119108dabe9b0cdc3364` |
| 4 | `theorem` | [N₁Γ₀_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-app--5320e7426307c6060759d680.md) | 83 | `result-track:5320e7426307c6060759d68096be9ff1b7d34028becb380e268f34e9f57cd90d` |
| 5 | `theorem` | [N₁Γ₀_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-hom-app--dc3c80a088f4751af1c83c47.md) | 93 | `result-track:dc3c80a088f4751af1c83c47c8a45787d9c4bb55ac8434b60c66deba20f71bc8` |
| 6 | `theorem` | [N₁Γ₀_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-inv-app--d9c155af232159747d2bb2a0.md) | 102 | `result-track:d9c155af232159747d2bb2a05ba111f025f6ff9a5e3c1fbe3d230876628d218a` |
| 7 | `theorem` | [N₁Γ₀_hom_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-hom-app-f-f--9c30b916ee8e64c0ff11dc53.md) | 112 | `result-track:9c30b916ee8e64c0ff11dc5318aebc1f8aef6d621b0ca76db73466d09e72cb00` |
| 8 | `theorem` | [N₁Γ₀_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-inv-app-f-f--98a4fa251b02aef318fb04c4.md) | 120 | `result-track:98a4fa251b02aef318fb04c4bb428db73d716cb5f308a79d71d9fece8c092bca` |
| 9 | `theorem` | [N₂Γ₂_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-tokaroubi--65a2e3cb0bb37d2d3992eef0.md) | 130 | `result-track:65a2e3cb0bb37d2d3992eef028610b371fc65edf7650b991a4922ecef602ebf8` |
| 10 | `def` | [N₂Γ₂ToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-tokaroubiiso--87ad5e82fc488a4cb1cda227.md) | 143 | `declaration-track:87ad5e82fc488a4cb1cda22715f0fc9054592adbe33d87bd1ed76d9c54f43904` |
| 11 | `def` | [N₂Γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n--6574bead33266f2d8611dd23.md) | 152 | `declaration-track:6574bead33266f2d8611dd2338494fef8e4d443c953eaae4cd142778fb750a27` |
| 12 | `theorem` | [N₂Γ₂_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-inv-app-f-f--55617c59560331c0a7a8c102.md) | 159 | `result-track:55617c59560331c0a7a8c10298b50251a8e9f7e7d70a2dcf94b0008a379789e2` |
| 13 | `lemma` | [whiskerLeft_toKaroubi_N₂Γ₂_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/whiskerleft-tokaroubi-n-hom--c46123fe5fceb2474e1312b3.md) | 176 | `result-track:c46123fe5fceb2474e1312b3e31617735696677665f833edd4cdc2a5d3c0e49e` |
| 14 | `theorem` | [N₂Γ₂_compatible_with_N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant996073fece110fbda7a6abd87c2bc4ec538697d42596924d2ad2eb37e958a064.lean/declarations/n-compatible-with-n--6e887fb6effc53dde47fd878.md) | 187 | `result-track:6e887fb6effc53dde47fd8783b8487380d22d4307d913e9dd0da34e0a1ac07c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
