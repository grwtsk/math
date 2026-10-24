# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e40eac5a298bf259cb4bf4aea7d5d062367ca2d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e40eac5a298bf259cb4bf4aea7d5d062367ca2d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/map-id-c-app--567c7f0a0db65cddc480a8c9.md) | 66 | `result-track:567c7f0a0db65cddc480a8c981e721cd4c95dcc4c5dbbf156166405178b53959` |
| 2 | `theorem` | [map_comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/map-comp-c-app--8b606abcf9467f28d71f0b0c.md) | 77 | `result-track:8b606abcf9467f28d71f0b0c74c38d844e82815a1836e08433229074e87c4a9f` |
| 3 | `def` | [componentwiseDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/componentwisediagram--c95e4f29fd153c4453633310.md) | 96 | `declaration-track:c95e4f29fd153c4453633310d3b8ff72e8105838ff35f9b680c26dc3f2f84641` |
| 4 | `def` | [pushforwardDiagramToColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/pushforwarddiagramtocolimit--ba90d61413ca5ba10555881d.md) | 127 | `declaration-track:ba90d61413ca5ba10555881dbe2e0cf2192e6386367ea1b0b738a4f5c5cb4d5f` |
| 5 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimit--ab9c249ee7374bda662930b6.md) | 189 | `declaration-track:ab9c249ee7374bda662930b66b25588513520439aba680d1e613c284526a6f27` |
| 6 | `theorem` | [colimit_carrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimit-carrier--ba0c2c25d9152c3b8767991c.md) | 196 | `result-track:ba0c2c25d9152c3b8767991cff3f819a884efdfbac3ba96bd2aaccfde61f31d6` |
| 7 | `theorem` | [colimit_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimit-presheaf--9d8c8dcbe05ce8b74e83008c.md) | 203 | `result-track:9d8c8dcbe05ce8b74e83008ced53201b991d775c570c1d70ef4c2b460eec26f1` |
| 8 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimitcocone--6694e28841b9b5bd3489d92a.md) | 212 | `declaration-track:6694e28841b9b5bd3489d92a9ebb600bf392a50861556faef9c1276618f068f4` |
| 9 | `def` | [descCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/desccapp--bb9182ea2da56a32c84be2ba.md) | 242 | `declaration-track:bb9182ea2da56a32c84be2bae5f94f4598d5bb4fd705c625be4812fc9bd48ba3` |
| 10 | `theorem` | [desc_c_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/desc-c-naturality--74d1295e3aa47697abcc7b30.md) | 273 | `result-track:74d1295e3aa47697abcc7b30bc1b97d9999c13a4d298c03ac6b44c01460dbd35` |
| 11 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/desc--0ad6633799492c32cef69a1a.md) | 299 | `declaration-track:0ad6633799492c32cef69a1a7d9412f1e613d657a0a6160b48efaa94a875ef93` |
| 12 | `theorem` | [desc_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/desc-fac--4a827904fc7937ee80858357.md) | 307 | `result-track:4a827904fc7937ee80858357c57c61eecc0f0bf8af7e51be3f119063fd7549b1` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimitcoconeiscolimit--43562ce8bfcc6d57a540d8df.md) | 327 | `declaration-track:43562ce8bfcc6d57a540d8dfd3121bf45ebd206ef1df73f8794c39a544561ae4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/instance--94f3491a8d0750950a9e1a63.md) | 357 | `declaration-track:94f3491a8d0750950a9e1a63461a24fad07c469669022e470b08eb3f6c573ab4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/instance--190663026fc67163fec08a4c.md) | 360 | `declaration-track:190663026fc67163fec08a4c3a080e4ec7d94bb0f31decbfeeef22fe377e0b40` |
| 16 | `instance` | [instHasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/insthascolimits--1d892291da6f058bc9980be2.md) | 370 | `declaration-track:1d892291da6f058bc9980be2c1190b5d5dd49f36e0600f04935809438d829915` |
| 17 | `instance` | [forgetPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/forgetpreservescolimits--278295a0eaadd5ebbfc67624.md) | 376 | `declaration-track:278295a0eaadd5ebbfc67624092e199a31c8ae6e8055eac0a9ce4ab3445d5829` |
| 18 | `def` | [colimitPresheafObjIsoComponentwiseLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimitpresheafobjisocomponentwiselimit--971237020cd8be51137a2a18.md) | 391 | `declaration-track:971237020cd8be51137a2a186b862c1d3c7282f39ff0c3d366cb707fc28accd1` |
| 19 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_inv_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimitpresheafobjisocomponentwiselimit-inv-app--49a23dcd3f0a3864669b3b59.md) | 420 | `result-track:49a23dcd3f0a3864669b3b593396de18d3393b260bda9cb6d64eabf00cd2aa35` |
| 20 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variante147dfc9e6891d694289a8a114613307ddf8ba5c9697510b6b6d54e9b2903ab5.lean/declarations/colimitpresheafobjisocomponentwiselimit-hom--e44ee44efef1f085bd2d76f1.md) | 444 | `result-track:e44ee44efef1f085bd2d76f1488066f8a2c07e4dd33afaef13f2dd04f0f12a56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
