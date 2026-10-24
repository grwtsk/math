# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Instances.Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3302bb734ab888ca4a535ea9f29f77a282833f1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3302bb734ab888ca4a535ea9f29f77a282833f1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Bitraversable.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prod.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/prod-bitraverse--693d7d21aba25f9cc339c71a.md) | 39 | `declaration-track:693d7d21aba25f9cc339c71aee61044c519d6b16cc7b0f6c696b60121d999694` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--0a2988353fb85ee92873f078.md) | 42 | `declaration-track:0a2988353fb85ee92873f078f9b4d023a29a2751a24eb6600716a3afeec0a1eb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--7de5bfd23bf5a222833ce391.md) | 44 | `declaration-track:7de5bfd23bf5a222833ce391e0b9125bb1684873b258c5c4b367eb2f7b77b766` |
| 4 | `def` | [Sum.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/sum-bitraverse--04f236b20f34ae9df3bf8470.md) | 51 | `declaration-track:04f236b20f34ae9df3bf84707ec2a7ee830d9435cef4e769c21a64d2476c2735` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--fe5eb5c6fb2bc1000437c67e.md) | 55 | `declaration-track:fe5eb5c6fb2bc1000437c67e211ae17fa04629e79443fc738a95b1756a1179b8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--87c443ed730f36933a606cc5.md) | 57 | `declaration-track:87c443ed730f36933a606cc50d7cf18c3348d92af06a03e89f9ef5291cc86832` |
| 7 | `def` | [Const.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/const-bitraverse--516ff87e31e471b232202a09.md) | 65 | `declaration-track:516ff87e31e471b232202a0947391ec5be49ad9d89b0af8ffa08dd0f768cd1db` |
| 8 | `instance` | [Bitraversable.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/bitraversable-const--d4bc0f3f58eb8b9d8d167d87.md) | 69 | `declaration-track:d4bc0f3f58eb8b9d8d167d87eb212da183f2a784fba00c4320663f67e02e0df3` |
| 9 | `instance` | [LawfulBitraversable.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/lawfulbitraversable-const--cf30a703c934faf5b18fb013.md) | 71 | `declaration-track:cf30a703c934faf5b18fb013d2a9d65732e46d0fc49cdb7b4786a26876500acf` |
| 10 | `def` | [flip.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/flip-bitraverse--5a464eee788ae94979cd0e74.md) | 75 | `declaration-track:5a464eee788ae94979cd0e7486c0e7abec23f46e344f5b2396466ea1fb453a76` |
| 11 | `instance` | [Bitraversable.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/bitraversable-flip--ade0e56558535baf583c174a.md) | 79 | `declaration-track:ade0e56558535baf583c174a6ce89642f08b60026037aacd0dad44984ecf50d1` |
| 12 | `instance` | [LawfulBitraversable.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/lawfulbitraversable-flip--82232420cddf42328414688d.md) | 83 | `declaration-track:82232420cddf42328414688de7de2a615c42ed57025b4d96f937c026f9b9c8bc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--c47f5d712a0891ecd993ff77.md) | 88 | `declaration-track:c47f5d712a0891ecd993ff77821ab93aaaefec4381001cb7c3b468beffc2ba29` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--fdb719c78e47570b60db9535.md) | 91 | `declaration-track:fdb719c78e47570b60db9535e5ee27d9969638139bebfc517f58dce00b65b819` |
| 15 | `def` | [Bicompl.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/bicompl-bitraverse--b1ae9a4b36a44b50b05d5348.md) | 109 | `declaration-track:b1ae9a4b36a44b50b05d53486b5eb47a5c8ed0df3c53c0fb7396370c29d60403` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--a2af8414c130ed03119c1359.md) | 113 | `declaration-track:a2af8414c130ed03119c1359fc405cbc2c0bf6cb8854398f14badb7075327d05` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--0ba3c18246ff393d01f3955b.md) | 115 | `declaration-track:0ba3c18246ff393d01f3955bc565ab4550e9af228a47d9a9b6d5998cde6cbd13` |
| 18 | `def` | [Bicompr.bitraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/bicompr-bitraverse--039846c8c61041e7c58caa7e.md) | 131 | `declaration-track:039846c8c61041e7c58caa7e85a503489b793f781881c76ef021b1aad85daf75` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--7e9588dfac106bfd7690f132.md) | 135 | `declaration-track:7e9588dfac106bfd7690f132b3a3491372f7582d6f88aff8c76dc9c33f4b8f88` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Instances/Variantcbb3abfb697c595c7be3ef60cf960420511673c861757e9af5040407eb599fcf.lean/declarations/instance--e57340fe996f85691bed3a96.md) | 137 | `declaration-track:e57340fe996f85691bed3a96f2882808f46ce5c8600a54306847e6c24802a1d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
