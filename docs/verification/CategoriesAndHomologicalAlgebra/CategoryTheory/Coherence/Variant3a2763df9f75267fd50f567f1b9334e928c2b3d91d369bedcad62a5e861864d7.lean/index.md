# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c07f40c447b1ebc0a66c47032e6ad88a6f6fdb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c07f40c447b1ebc0a66c47032e6ad88a6f6fdb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Free` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.LocallyDiscrete` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inclusionPathAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/inclusionpathaux--2cc4acefb69ed82bf87b2b1f.md) | 62 | `declaration-track:2cc4acefb69ed82bf87b2b1f57b438fe3c5a8a7a64d3847c0396f31099a3fb38` |
| 2 | `instance` | [homCategory'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/homcategory--939a063ef482ec3afc2a82cf.md) | 72 | `declaration-track:939a063ef482ec3afc2a82cf9f572c3ff377830238c7636f65894aa34be8396b` |
| 3 | `def` | [inclusionPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/inclusionpath--3c016e33fed10f35f82ec1d0.md) | 78 | `declaration-track:3c016e33fed10f35f82ec1d0d9bd7200d7e63366dd2bc66b6ac6c434265fafd8` |
| 4 | `def` | [preinclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/preinclusion--02e019331a43ba5107ed004e.md) | 85 | `declaration-track:02e019331a43ba5107ed004e8a8dd3cd23b760bfbd8537d136a9e2ffb52f3984` |
| 5 | `theorem` | [preinclusion_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/preinclusion-obj--9f540e26dad96f8b43ac361b.md) | 92 | `result-track:9f540e26dad96f8b43ac361baf53e24c5f1e9613c54e900c344d546be4c92a40` |
| 6 | `theorem` | [preinclusion_map₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/preinclusion-map--6a9ea71373816584334bac59.md) | 96 | `result-track:6a9ea71373816584334bac594d4fbdb06a0cada49a62c98664506c103307ae93` |
| 7 | `def` | [normalizeAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeaux--ad5a999e47fc81e88755df4a.md) | 108 | `declaration-track:ad5a999e47fc81e88755df4acee38f13bf0295ca3d88ed02bdf8022e4983365e` |
| 8 | `def` | [normalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeiso--3cec7232ec445a68c3cd3b5b.md) | 136 | `declaration-track:3cec7232ec445a68c3cd3b5b78f2633a46296333a252fc94982e54a56dc9492a` |
| 9 | `theorem` | [normalizeAux_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeaux-congr--8bf917346795cb8d1fdcd110.md) | 147 | `result-track:8bf917346795cb8d1fdcd110425d34a45538414b02172d0ca70788f9d57bf0f9` |
| 10 | `theorem` | [normalize_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalize-naturality--2334d4489c2955f4449f94d4.md) | 159 | `result-track:2334d4489c2955f4449f94d4ab7144cf6cc78cd4589eacbbb827b8771bc9d062` |
| 11 | `theorem` | [normalizeAux_nil_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeaux-nil-comp--70f1e01313036cd6c3bd796c.md) | 185 | `result-track:70f1e01313036cd6c3bd796c64821a1192bb5f3a6e82c3bcdda6a00f8623cad4` |
| 12 | `def` | [normalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalize--67754cc39b1e825beec8cc95.md) | 193 | `declaration-track:67754cc39b1e825beec8cc956d4f5a1733a1468d66b85bf6c7ef95fa531d05bb` |
| 13 | `def` | [normalizeUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeunitiso--7d64b40af8ed9765d68f5df3.md) | 202 | `declaration-track:7d64b40af8ed9765d68f5df3d66f6d6fe27e9a071e9ec487c98e3a9d66465428` |
| 14 | `def` | [normalizeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/normalizeequiv--a2da2c12c28ba7c942c97515.md) | 212 | `declaration-track:a2da2c12c28ba7c942c97515d5ad48d1060ed8e835e9567b3978aa5b126efe24` |
| 15 | `instance` | [locally_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/locally-thin--12ebb417405daee7574dd194.md) | 225 | `declaration-track:12ebb417405daee7574dd19445412cec2688b3db34193b39992be60ad9484c55` |
| 16 | `def` | [inclusionMapCompAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/inclusionmapcompaux--12ef51f7ec840dc7ffacb7c6.md) | 230 | `declaration-track:12ef51f7ec840dc7ffacb7c60dba27a4c4278d769cf9117dc623ae62d7bd7a90` |
| 17 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/declarations/inclusion--40d3e35de7e182869a1e6565.md) | 239 | `declaration-track:40d3e35de7e182869a1e6565d29595c531faea148fd9764831cc580446beae97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
