# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74fb3e5e50c2ed66494af5566287043540abdea7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74fb3e5e50c2ed66494af5566287043540abdea7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Yoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/colimitcocone--6671a02e48928d074850db49.md) | 34 | `declaration-track:6671a02e48928d074850db49236bda10f0eef02728ea5d842e28960bbcd8cb1a` |
| 2 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/colimitcoconeiscolimit--db1cb6ae8ace4c9da5a421f9.md) | 41 | `declaration-track:db1cb6ae8ace4c9da5a421f94aeda73ea306a6e53517efbfb74aa80efaad96f4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/instance--4bb20b4f0fdb6badba103f3e.md) | 53 | `declaration-track:4bb20b4f0fdb6badba103f3eceea010036211a6721686f8ffffaadfb9312f1fd` |
| 4 | `def` | [colimitCoyonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/colimitcoyonedaiso--a3a4b4ee818bbc4e7630ad6a.md) | 60 | `declaration-track:a3a4b4ee818bbc4e7630ad6ad1e10f214386ef02145afa117fd1e48c11d5d014` |
| 5 | `def` | [Limits.coneOfSectionCompYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/limits-coneofsectioncompyoneda--f4da024bd365f40a23d29252.md) | 77 | `declaration-track:f4da024bd365f40a23d292529a9fd5cab148017cf270d4d882ef76b67665afd8` |
| 6 | `instance` | [yoneda_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yoneda-preserveslimit--bb56060867bc65ca895c159a.md) | 82 | `declaration-track:bb56060867bc65ca895c159a115b06c4472ecd474f1067442a38671756ceaa34` |
| 7 | `instance` | [yoneda_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yoneda-preserveslimitsofshape--f2baffc777cd876018604173.md) | 94 | `declaration-track:f2baffc777cd876018604173fb78c1e8c7700615fbdb065b10cf4c47017ccff7` |
| 8 | `def` | [yonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yonedajointlyreflectslimits--2e5a32ff3cefd83816f5bf2d.md) | 98 | `declaration-track:2e5a32ff3cefd83816f5bf2d1fa50c86107e29a1cdfa2a7c79740a417b5ee25a` |
| 9 | `def` | [Limits.Cocone.isColimitYonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/limits-cocone-iscolimityonedaequiv--e1874c056f24ed52f95f4b97.md) | 113 | `declaration-track:e1874c056f24ed52f95f4b97525bf04b394e7f14f91023f50a04cabb34e6a804` |
| 10 | `def` | [Limits.coneOfSectionCompCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/limits-coneofsectioncompcoyoneda--ffe9962bdfd88dd3c0744855.md) | 122 | `declaration-track:ffe9962bdfd88dd3c0744855f2689e7da45e6298bacb7a966ec155ad9236659e` |
| 11 | `instance` | [coyoneda_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyoneda-preserveslimit--546e16dfe15050f9a4313ffe.md) | 127 | `declaration-track:546e16dfe15050f9a4313ffe36838bfa256afb63e24813f64e6816461dc51f08` |
| 12 | `instance` | [coyonedaPreservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyonedapreserveslimitsofshape--c038ec501bfaa376703168fa.md) | 136 | `declaration-track:c038ec501bfaa376703168fa9b5dee194a2657ef416531236be41112d6f6befb` |
| 13 | `def` | [coyonedaJointlyReflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyonedajointlyreflectslimits--7a57dd0cc5088ea3c7349843.md) | 140 | `declaration-track:7a57dd0cc5088ea3c73498432adfe9562bbd89d5d367bd886826eca1ef87db5c` |
| 14 | `def` | [Limits.Cone.isLimitCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/limits-cone-islimitcoyonedaequiv--c11d3e2fa07b51c49fae75e9.md) | 154 | `declaration-track:c11d3e2fa07b51c49fae75e93a636b56e9d96c048fc4d3b0f7ebd59c513ac1c7` |
| 15 | `instance` | [yoneda_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yoneda-preserveslimits--e3709a176a6f9bdee17b60a9.md) | 164 | `declaration-track:e3709a176a6f9bdee17b60a9d439a7df66082f8f69d70327d1eb660bf4053e33` |
| 16 | `instance` | [coyoneda_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyoneda-preserveslimits--43cdc12088601b24566555bf.md) | 168 | `declaration-track:43cdc12088601b24566555bff4d071291d06fda24f53851b435992b2be264116` |
| 17 | `instance` | [yonedaFunctor_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yonedafunctor-preserveslimits--3e5fd2bb085d9906131eb24e.md) | 171 | `declaration-track:3e5fd2bb085d9906131eb24e764fcb8edcca1b6240c3648dc3dd72825d529799` |
| 18 | `instance` | [coyonedaFunctor_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyonedafunctor-preserveslimits--c4ad74b805b5c7e6495131ef.md) | 178 | `declaration-track:c4ad74b805b5c7e6495131ef8c1a2cc24e5e66a70e00f3f82d90bc88355619e4` |
| 19 | `instance` | [yonedaFunctor_reflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/yonedafunctor-reflectslimits--b9645e13edfcce1aa2ee2d33.md) | 185 | `declaration-track:b9645e13edfcce1aa2ee2d3352bf4630ec07200836be4a2335a27a4a490c6ff3` |
| 20 | `instance` | [coyonedaFunctor_reflectsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/coyonedafunctor-reflectslimits--6535445b763831a7f163dbc2.md) | 188 | `declaration-track:6535445b763831a7f163dbc2fe7a01a3106f0c7fee2d4ed291b736b62b3609e6` |
| 21 | `instance` | [representable_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/representable-preserveslimit--7f5a06e702054887aafc4a75.md) | 197 | `declaration-track:7f5a06e702054887aafc4a7529a2114946a05204dddec404129e6fa810f221da` |
| 22 | `instance` | [representable_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/representable-preserveslimitsofshape--c53fb8612abc2dabd7f2932f.md) | 202 | `declaration-track:c53fb8612abc2dabd7f2932f614d80878a15ce4d8017c1d19e27f43aa8f0bd06` |
| 23 | `instance` | [representable_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/representable-preserveslimits--d0a282b78debf98bd2125b50.md) | 205 | `declaration-track:d0a282b78debf98bd2125b504d59ba3771b458448f102b3a40d174531ed6bd2b` |
| 24 | `instance` | [corepresentable_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/corepresentable-preserveslimit--305d99ef742dd64d037872fd.md) | 214 | `declaration-track:305d99ef742dd64d037872fd0d22d6389a4ea150121018e60d99c5454c0772c7` |
| 25 | `instance` | [corepresentable_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/corepresentable-preserveslimitsofshape--c41e874b926e6a78ed51c3da.md) | 219 | `declaration-track:c41e874b926e6a78ed51c3da20bf43ae7198218cf263811472160f75c3cce108` |
| 26 | `instance` | [corepresentable_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/declarations/corepresentable-preserveslimits--a1bb82dd7ab04f312d1b025c.md) | 222 | `declaration-track:a1bb82dd7ab04f312d1b025c863bab71547e355fb43d7cdf87b2d2844c678c6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
