# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "275eb35f5e1a372b9585e83ff224587631cd13fc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `275eb35f5e1a372b9585e83ff224587631cd13fc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lightProfiniteToLightCondSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/declarations/lightprofinitetolightcondset--c9ade557810dd8916ea92147.md) | 27 | `declaration-track:c9ade557810dd8916ea92147ef111f626a2de7320cb58fcdd0879e5ad6886e1c` |
| 2 | `abbrev` | [LightProfinite.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/declarations/lightprofinite-tocondensed--f14001a7d2433d52c35ca266.md) | 31 | `declaration-track:f14001a7d2433d52c35ca266c823d4a115fbdd5febdf95cfba0cd7da55003376` |
| 3 | `abbrev` | [lightProfiniteToLightCondSetFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/declarations/lightprofinitetolightcondsetfullyfaithful--816274e691f0cd0fb3e885b8.md) | 35 | `declaration-track:816274e691f0cd0fb3e885b8cb6d7e7478e3162a28dd85bc89f8e6a05ac1884a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/declarations/instance--24cdd13741d7974bc908e598.md) | 39 | `declaration-track:24cdd13741d7974bc908e598c91b12113161e9a11d3c49612c68802db674fc05` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb.lean/declarations/instance--c00a7eca2ed42a30830fe9f6.md) | 42 | `declaration-track:c00a7eca2ed42a30830fe9f6d6efc5c69c9aaed9b30cc8c23d7770a873003349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
