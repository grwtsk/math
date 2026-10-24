# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40740f20335983f6847eea8199134084315e32ed",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40740f20335983f6847eea8199134084315e32ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Linear` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensorobj--8f4f07651f11fd2c18e7b91a.md) | 51 | `declaration-track:8f4f07651f11fd2c18e7b91af1d9a8f9a493d687420746941147edc700255022` |
| 2 | `def` | [tensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensorhom--9252c91690dc283d5499478e.md) | 55 | `declaration-track:9252c91690dc283d5499478e18fb1016cb0e27bb07f7169e8c8f54e1163953d9` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/whiskerleft--1a37ea0bb279d8baefc6febf.md) | 60 | `declaration-track:1a37ea0bb279d8baefc6febf2ebc67d7137648d340be78b2b7cc7c8595929cd8` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/whiskerright--7eee445a2022d88d5a5547e0.md) | 65 | `declaration-track:7eee445a2022d88d5a5547e047f6ee1c8db0d921156dc5a796d8766ac8b7ad11` |
| 5 | `theorem` | [tensor_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensor-id--69994429f5c49e4e1c048e9b.md) | 69 | `result-track:69994429f5c49e4e1c048e9b2892530c666c61a1c27bea1ed92edab5bc11a30e` |
| 6 | `theorem` | [tensor_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensor-comp--399b4f2bfb5bf23ad136da9b.md) | 75 | `result-track:399b4f2bfb5bf23ad136da9b8df02c5102d5bd7dc1fbf9ccb93e87809d968af1` |
| 7 | `def` | [associator](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/associator--fbebc7ed0e794e14b75aa82f.md) | 83 | `declaration-track:fbebc7ed0e794e14b75aa82f3e8d77a19be7a0cde949c731f6ed31204783b15f` |
| 8 | `def` | [leftUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/leftunitor--f93bc88b904dbb915ae7b76f.md) | 88 | `declaration-track:f93bc88b904dbb915ae7b76f71398e6acfc29dbcc84fc4a6099a3f28a0b01a76` |
| 9 | `def` | [rightUnitor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/rightunitor--0626810191137753fb49179a.md) | 92 | `declaration-track:0626810191137753fb49179aa6d99bb916aa007fa90e09abaea2fa65c7979770` |
| 10 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/instmonoidalcategorystruct--c7b855b37fae5f318af68a6a.md) | 96 | `declaration-track:c7b855b37fae5f318af68a6a58abbd9f1638d9a70d1755f9da347a457466c06a` |
| 11 | `theorem` | [associator_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/associator-naturality--91f0b96f2a26343767996744.md) | 106 | `result-track:91f0b96f2a26343767996744c236aff7e7a17802cc3635a56ee2ff9b5ecfeaa0` |
| 12 | `theorem` | [pentagon](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/pentagon--76883d66aef4e66f2f2d702f.md) | 115 | `result-track:76883d66aef4e66f2f2d702f82b2ea282865090886dbe9bb73cdcc28766c210d` |
| 13 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/leftunitor-naturality--0e139ea07d736317a45ee6fe.md) | 124 | `result-track:0e139ea07d736317a45ee6feae21341d8fbe9eb58a58940505b2c54d066b1bad` |
| 14 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/rightunitor-naturality--e4e294623be14ad660b8cd28.md) | 135 | `result-track:e4e294623be14ad660b8cd28401be51ef1d871b5687ddedf3e903b30b7e1383a` |
| 15 | `theorem` | [triangle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/triangle--29339d88ccf2e73927c119c3.md) | 146 | `result-track:29339d88ccf2e73927c119c3c15ca8a5d27522fd21c1baee6f61f2d53a7c9df9` |
| 16 | `instance` | [monoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/monoidalcategory--515e3fec2c90f3b21ca9b3a4.md) | 161 | `declaration-track:515e3fec2c90f3b21ca9b3a490e43a4ba9fa551cbc905fd2c24509b7ddc17aba` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/instance--36c9323bf6e759e3d3ed0a0c.md) | 171 | `declaration-track:36c9323bf6e759e3d3ed0a0c0a58c941d1cc849c8b723e00373eaf1015d2e4de` |
| 18 | `theorem` | [tensorHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensorhom-tmul--eac5ebc8bf54e02772d8c3a1.md) | 177 | `result-track:eac5ebc8bf54e02772d8c3a1098b9c3934e423ce7521362feb7e2a6a2be969a5` |
| 19 | `theorem` | [whiskerLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/whiskerleft-apply--e96bb06be2edb897123932c1.md) | 182 | `result-track:e96bb06be2edb897123932c1f2698b0db7046ec72c7ff7564c26a287ec2a458c` |
| 20 | `theorem` | [whiskerRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/whiskerright-apply--acc7c414441fed0fc5c3566f.md) | 188 | `result-track:acc7c414441fed0fc5c3566fd7a3c4f8078b55e4b15424e7dad5d9c31280d9a9` |
| 21 | `theorem` | [leftUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/leftunitor-hom-apply--9ca301ad144fb8c65d2c3e54.md) | 194 | `result-track:9ca301ad144fb8c65d2c3e548b2f0aaf14951d1235307ecfc87ff4d8fd0fceb7` |
| 22 | `theorem` | [leftUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/leftunitor-inv-apply--91ed93e744b5981668a3b679.md) | 199 | `result-track:91ed93e744b5981668a3b67905f7e1ec44b106bb6bb289dcb551559942116512` |
| 23 | `theorem` | [rightUnitor_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/rightunitor-hom-apply--d7a1a4a26b12130742a87026.md) | 204 | `result-track:d7a1a4a26b12130742a87026b5ca3c5248557e217a2b7ade673bcfcfaa1c3037` |
| 24 | `theorem` | [rightUnitor_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/rightunitor-inv-apply--0f0f152a0a10a4d77c5f7866.md) | 209 | `result-track:0f0f152a0a10a4d77c5f786653651f726a3e1f36a98f3b6096491dcec1878e86` |
| 25 | `theorem` | [associator_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/associator-hom-apply--0a395c8ac3960e70f639fca9.md) | 214 | `result-track:0a395c8ac3960e70f639fca99dde7bea4f84ee22ba34a882b478b2855c1b4d17` |
| 26 | `theorem` | [associator_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/associator-inv-apply--ff9b97e85baf1b3036ae3f51.md) | 219 | `result-track:ff9b97e85baf1b3036ae3f5103a193b81cc5d7d5eba18fc1622db2a69b6fb6d6` |
| 27 | `def` | [tensorLift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensorlift--0c25f1330cefcb5b317b6ed8.md) | 233 | `declaration-track:0c25f1330cefcb5b317b6ed8e62091526cab5ed3584a6e08557f8c646d3e9bf9` |
| 28 | `lemma` | [tensorLift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensorlift-tmul--44d0e942151496c7362c0cf9.md) | 237 | `result-track:44d0e942151496c7362c0cf9500c4b738a35145dc58caf291f9c79d3ea55df2b` |
| 29 | `lemma` | [tensor_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensor-ext--f94e44f476f527fe2977e0f8.md) | 242 | `result-track:f94e44f476f527fe2977e0f815cf97122b0412b6fd544167b0339a3450c5edf2` |
| 30 | `lemma` | [tensor_ext₃'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensor-ext--2b72d28daed58b08e13e9de9.md) | 247 | `result-track:2b72d28daed58b08e13e9de9394e37c32e82caea260e9747269325c4cd5dee4e` |
| 31 | `lemma` | [tensor_ext₃](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/tensor-ext--83c70daecf9a824ed0b03839.md) | 253 | `result-track:83c70daecf9a824ed0b03839bfc7a4bf0f924da9a8598feb9cfe262e05945243` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/instance--a4d2261291480cf9f0d057f4.md) | 263 | `declaration-track:a4d2261291480cf9f0d057f48f2a46e13d0b668115a96bf6b65c90830bd072db` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/instance--deae876b30452f874cbfa555.md) | 296 | `declaration-track:deae876b30452f874cbfa55594749f031279f70c765a788fe99cb6874c61ab1f` |
| 34 | `lemma` | [ofHom₂_compr₂](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean/declarations/ofhom-compr--2260c8a59401a7e891217c56.md) | 313 | `result-track:2260c8a59401a7e891217c567c723a1068bcde6cb2017f582a442df2a23aabae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
