# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Skolem.Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ff7aa3c3c2b8b2bf872480de04605093834acf6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ff7aa3c3c2b8b2bf872480de04605093834acf6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementarySubstructures` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/skolem--0d6a84c5c1fcb2b59dd5f2a6.md) | 43 | `declaration-track:0d6a84c5c1fcb2b59dd5f2a6b904422c57ca1239503925d5590502ff901d3c81` |
| 2 | `theorem` | [card_functions_sum_skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/card-functions-sum-skolem--489e2df71de65ab56d902439.md) | 48 | `result-track:489e2df71de65ab56d902439a7d0b6484e28b32be31de5433967c3402896fec5` |
| 3 | `theorem` | [card_functions_sum_skolem₁_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/card-functions-sum-skolem-le--634c682574082b262ee790cb.md) | 62 | `result-track:634c682574082b262ee790cb428fd541d09222dc4d643b7fe85a9744550ea280` |
| 4 | `instance` | [skolem₁Structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/skolem-structure--13585b034ede0a4759926f35.md) | 74 | `declaration-track:13585b034ede0a4759926f3545ad50ad3e3c4f1ee1342e8af30ae992af9ce3ed` |
| 5 | `theorem` | [skolem₁_reduct_isElementary](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/skolem-reduct-iselementary--53e58fe63c157219e6e58004.md) | 80 | `result-track:53e58fe63c157219e6e58004c34620610019427290e52948e5eaef5895cfa2fd` |
| 6 | `def` | [elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/elementaryskolem-reduct--15d59a14de814a4cd8e3f835.md) | 92 | `declaration-track:15d59a14de814a4cd8e3f835873902cfae68fc632ffb262583872fd3fef33dc4` |
| 7 | `theorem` | [coeSort_elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/coesort-elementaryskolem-reduct--9a153023bdb1a55fac28edc6.md) | 96 | `result-track:9a153023bdb1a55fac28edc667c9bff3eaab68614fde0da68c6635aa608328ba` |
| 8 | `instance` | [Substructure.elementarySkolem₁Reduct.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/substructure-elementaryskolem-reduct-instsmall--f1e168a3fdf95d6ab5bae782.md) | 106 | `declaration-track:f1e168a3fdf95d6ab5bae782a9546be0499886aabb6aef424fb789ba35da3f8d` |
| 9 | `theorem` | [exists_small_elementarySubstructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/exists-small-elementarysubstructure--e9754f297935d87739555799.md) | 111 | `result-track:e9754f297935d8773955579923e7d65e4257491218f689f9b1379816715b1ba7` |
| 10 | `theorem` | [exists_elementarySubstructure_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant769beec1dd39a186a8b9199ea0afe0a256234531693783ab84bc48a8447742cd.lean/declarations/exists-elementarysubstructure-card-eq--0a8e2e255ca9f6559c455620.md) | 120 | `result-track:0a8e2e255ca9f6559c45562002c6a8ed4578d0784acb8594a068e3c88e654593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
