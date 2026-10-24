# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e2c05bcce26e9830e95abce8ebe68c314f5d027",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e2c05bcce26e9830e95abce8ebe68c314f5d027`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Discrete.LocallyConstant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Module` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Algebra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functortopresheaves--4adcecb59a3ab6deb75fb092.md) | 38 | `declaration-track:4adcecb59a3ab6deb75fb09241ebe0ce12b4a76267dd021e63858d3a5fb81e65` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functor--18a43c989038cce6d743a1a4.md) | 49 | `declaration-track:18a43c989038cce6d743a1a48a3108ba084ab832ab99ab81c2a0b4e339b259fd` |
| 3 | `abbrev` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functortopresheaves--4ac98c7a496834bbfc8315f1.md) | 69 | `declaration-track:4ac98c7a496834bbfc8315f19c78a7cd6d2a073b0dd773177181fac31e6585f3` |
| 4 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functor--2b490a30341b66e83921115b.md) | 73 | `declaration-track:2b490a30341b66e83921115bf8c7d37b85634c4f6be10c282d25cfa6e81e4a05` |
| 5 | `def` | [functorIsoDiscreteAux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscreteaux--f3dffbf374823b1142185300.md) | 78 | `declaration-track:f3dffbf374823b114218530031bbef57462166cf731f006b4289d1266a1104ca` |
| 6 | `def` | [functorIsoDiscreteAux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscreteaux--06a8a87811dbc50b549b7aca.md) | 84 | `declaration-track:06a8a87811dbc50b549b7aca49be276ac0662507e3166542a16971bc22e2fe17` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--38f350d0e1bc142ba866b7f3.md) | 90 | `declaration-track:38f350d0e1bc142ba866b7f3962c23d0d83a052f284a6a9078b0be93a4281fa7` |
| 8 | `def` | [functorIsoDiscreteComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscretecomponents--810bc1fb3c75274f706d07b0.md) | 106 | `declaration-track:810bc1fb3c75274f706d07b0473c3be49009ab998acd3e84c3c8182847b278be` |
| 9 | `def` | [functorIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscrete--c4bfb5af69aff36acfc2e03b.md) | 118 | `declaration-track:c4bfb5af69aff36acfc2e03b7464799156ac82b7329e8087017e3248a04c7233` |
| 10 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/adjunction--f4f2b66fa6769b56d513b27f.md) | 136 | `declaration-track:f4f2b66fa6769b56d513b27f9f89d5000eec46f7067b0ab4741128418b42e1e1` |
| 11 | `def` | [fullyFaithfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/fullyfaithfulfunctor--a11ad40273ce54fb2733759e.md) | 142 | `declaration-track:a11ad40273ce54fb2733759e9411ee83341ea3d6111b306606a4fb4b665d451b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--8ad0439182a9aa4250e2177e.md) | 146 | `declaration-track:8ad0439182a9aa4250e2177e89d5de22d3a3ec622c51fbe322426352f70745a4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--26c10bbeb8c7d94af3a005bd.md) | 148 | `declaration-track:26c10bbeb8c7d94af3a005bd6ae525790df3667971beb3e188840bc851316bbd` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--7766a4c96a8b3f7a18cfde33.md) | 150 | `declaration-track:7766a4c96a8b3f7a18cfde33cde4f20cf87b54b8383ac4c571ecfe0b2ef2078e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--a0955dd3e109d52591701f5d.md) | 153 | `declaration-track:a0955dd3e109d52591701f5dd5b9a7afcbb9f81c1582e056b5ef022b52c998dd` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--7b6e0d6ea0afb2a92c10f8cd.md) | 156 | `declaration-track:7b6e0d6ea0afb2a92c10f8cd466b00e5b01cc0a69941ca66d2e7cfad17399117` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--4c4ef453a5189b282a29b8bd.md) | 159 | `declaration-track:4c4ef453a5189b282a29b8bdf3e8636430f135bc75cd7cd69509e8310af51e0f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--22bbfb950a69087c049aa116.md) | 163 | `declaration-track:22bbfb950a69087c049aa1164123fc55cd2b7d45abff89ef8325f964dedee9a5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--1fe89c9b30afc0c759d48fd7.md) | 167 | `declaration-track:1fe89c9b30afc0c759d48fd76dcec7750a19af99a829f7fd4e9d699bbeb1ea6b` |
| 20 | `abbrev` | [functorToPresheaves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functortopresheaves--f616768fd3c123603775f9b6.md) | 179 | `declaration-track:f616768fd3c123603775f9b6c849dc3e34ab67cd8e3d9a8498af75a653404e27` |
| 21 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functor--521f2234af4c2cb40070b77c.md) | 183 | `declaration-track:521f2234af4c2cb40070b77cff6e987eeef8963bf2c0cf22d8835736680c46d7` |
| 22 | `def` | [functorIsoDiscreteAux₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscreteaux--2ea6d15d3160484d1dd144af.md) | 188 | `declaration-track:2ea6d15d3160484d1dd144aff0b9bf94a2934796eaa464e145de85db1e375d6e` |
| 23 | `def` | [functorIsoDiscreteAux₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscreteaux--be96662ead6aa5a3ade6a4d5.md) | 194 | `declaration-track:be96662ead6aa5a3ade6a4d52bb046d21894cf15d8a34740acd306f4723f5f09` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--a52a26255e383116620286b8.md) | 200 | `declaration-track:a52a26255e383116620286b8144a3f016c95d30ca801c1d9a31c1890bc6fe2b1` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--7d45c1f7c8f540a4392ec4d0.md) | 204 | `declaration-track:7d45c1f7c8f540a4392ec4d0192e6e4da20a13b1b844b24028fd0cc13f1b6afe` |
| 26 | `def` | [functorIsoDiscreteComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscretecomponents--fb0f5a6f94decf6de6bb2cfe.md) | 222 | `declaration-track:fb0f5a6f94decf6de6bb2cfe8ec4cd5b1148216d08c543b225a41a71beb78a87` |
| 27 | `def` | [functorIsoDiscrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/functorisodiscrete--305194b15d9b9c20c066d8fe.md) | 234 | `declaration-track:305194b15d9b9c20c066d8fe892c6bf8afce96b35dd50ec44eacfd126fd1b639` |
| 28 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/adjunction--ae8fbcc13b7d42a59c93b406.md) | 252 | `declaration-track:ae8fbcc13b7d42a59c93b406776f0791f77b7adbb10b42e9980f46e0a41104f2` |
| 29 | `def` | [fullyFaithfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/fullyfaithfulfunctor--a69b9e21b81b572ed4b174c0.md) | 258 | `declaration-track:a69b9e21b81b572ed4b174c0992b14c54dc40e4133366f979834334f7fdc7ef8` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--eedca15ecc3402e7c2748a6b.md) | 262 | `declaration-track:eedca15ecc3402e7c2748a6b21e2eaf1aa0bf0631743fb8484cb2fc64e71700c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--aec562a09633485d6022faf1.md) | 264 | `declaration-track:aec562a09633485d6022faf10362d4ced50852dfb6eecd514714a630cb71dfa2` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--cfa9d6aa1a753bec1d37377a.md) | 266 | `declaration-track:cfa9d6aa1a753bec1d37377a6d83435b083adc99983194b8597b7e98c2ae5e78` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--147a8f15534b3fc2eda07c0c.md) | 268 | `declaration-track:147a8f15534b3fc2eda07c0c76d668546cd23d8f7bfc0036cfbd878401017349` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--f1c3797e6a5287bdd6a73c8d.md) | 271 | `declaration-track:f1c3797e6a5287bdd6a73c8d0052962ad0762f04b4001b1006971bf8061fd5de` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--b4775e54c5e0b5b057ee9595.md) | 274 | `declaration-track:b4775e54c5e0b5b057ee95953e46dd97847e2fbf1b1893ada2e3d2a3d7c53881` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--1f74ace155279066b38c5430.md) | 278 | `declaration-track:1f74ace155279066b38c54308ee92afa6cf5d635dd854ffb517fcd7a2a2d4559` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant20960bcbca0410feb030d1d32804c394c420c781bf087fe1676be478048f5a25.lean/declarations/instance--1755540c804428b43e921900.md) | 282 | `declaration-track:1755540c804428b43e921900432a4451e95efd81b4f8b5b3a99bb70e445371ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
