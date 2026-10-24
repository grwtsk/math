# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extend.Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0bbd31cebb1f65946416b59eabff9910e5dd11",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0bbd31cebb1f65946416b59eabff9910e5dd11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.AsLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/exists-hom--64391b69d5c1057eb3461c9e.md) | 47 | `result-track:64391b69d5c1057eb3461c9e4fdfbd10a07709f2546fd7e7febd4241fea6a858` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/functor--91927a047fa2c3fb5f514496.md) | 65 | `declaration-track:91927a047fa2c3fb5f5144965eab0b69b5daaebf04178f62c5d6373de341123e` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/example--f99e305825038ca7fa1aca3e.md) | 70 | `declaration-track:f99e305825038ca7fa1aca3ef3969504fbde35d42a4714858d6b2f1e4bb514d7` |
| 4 | `def` | [functorOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/functorop--bec229ce6b33f75c8c44d821.md) | 78 | `declaration-track:bec229ce6b33f75c8c44d821835b256a39e7ffb247c798849e4d69552bbb4b90` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/example--41a6dcf630fcea19786fbb3f.md) | 82 | `declaration-track:41a6dcf630fcea19786fbb3fc34e7ea0441421ff0788dabd0bd7f2b88444b9bf` |
| 6 | `lemma` | [functor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/functor-initial--a8d3e400168802bdf97112f1.md) | 91 | `result-track:a8d3e400168802bdf97112f19a6a50c509c0302bcf71e96ff5d7fc5f04e0eb27` |
| 7 | `lemma` | [functorOp_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/functorop-final--7e9a647415361c575ef41e99.md) | 112 | `result-track:7e9a647415361c575ef41e996a14e075a7d8369cb701160dbd301de785963057` |
| 8 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/cone--f415e527b8810e94a47602f8.md) | 130 | `declaration-track:f415e527b8810e94a47602f8f7f21170d25866fbc63238770444aa74518e1970` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/example--6860d2903da01f5c75f84c4e.md) | 137 | `declaration-track:6860d2903da01f5c75f84c4ea22f4b0ea8056d00dd6b39aea98f54998d352ef7` |
| 10 | `def` | [isLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/islimitcone--821d5817982ebcaa13a36eca.md) | 144 | `declaration-track:821d5817982ebcaa13a36ecaac633520891b8c3a093f1225175a5dc41dd8f66c` |
| 11 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/cocone--bce0d5f1bbcf7ae47f2f45ba.md) | 161 | `declaration-track:bce0d5f1bbcf7ae47f2f45ba267d939599730f1d33cc18f3cfe8d0856b55b692` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/example--bd3f577e0e669ce85a622faf.md) | 172 | `declaration-track:bd3f577e0e669ce85a622fafa0e94ae47fa91c67f75ea060c92e2b315e86088c` |
| 13 | `def` | [isColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/iscolimitcocone--faac67f5bbf43c36cad10d82.md) | 179 | `declaration-track:faac67f5bbf43c36cad10d82bd9808e6fb56fe6bc3442523092dcab3be8898e0` |
| 14 | `abbrev` | [fintypeDiagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/fintypediagram--aae58e67277e4efee12bdd4e.md) | 196 | `declaration-track:aae58e67277e4efee12bdd4e09d4643b73d09b849c06662d9d52dce4ca2d5ecd` |
| 15 | `abbrev` | [diagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/diagram--8c0f76409b7faf16b7d06463.md) | 200 | `declaration-track:8c0f76409b7faf16b7d064633071c1bd43e7a2e828036578cfc1a1f1b9602d3c` |
| 16 | `abbrev` | [asLimitCone'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/aslimitcone--52fac7a8348600a3f7d4d727.md) | 204 | `declaration-track:52fac7a8348600a3f7d4d727150add9e11bd2bd519cb887defd02d1137d80c36` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/instance--4630dd7742928d4a9ec46472.md) | 206 | `declaration-track:4630dd7742928d4a9ec46472dec89bf20c6f30963a7d5d7f800c437f3313d45e` |
| 18 | `def` | [asLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/aslimit--1c481eb4a126cd0bc63f61f6.md) | 210 | `declaration-track:1c481eb4a126cd0bc63f61f6d124fbee230f15b10519dca5c10b668de429f618` |
| 19 | `def` | [lim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant551948bee4248aab32d05502364cc4db10d79868bcc5a2ffa7190358f5ecf41c.lean/declarations/lim--9979bcedd689ef6a991111ed.md) | 213 | `declaration-track:9979bcedd689ef6a991111ed22519d102a7a61c02bd9cd73dd5cdd822f0bd987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
