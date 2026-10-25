# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Skolem.Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379f1c59a6b638e0337e11534040b49a68c1a06b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379f1c59a6b638e0337e11534040b49a68c1a06b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementarySubstructures` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/skolem--b5d68200d065b417443524dd.md) | 51 | `declaration-track:b5d68200d065b417443524dd0dc87337814a851e5783e64b8650ed34ef1d892c` |
| 2 | `theorem` | [card_functions_sum_skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/card-functions-sum-skolem--021c15936ed363b3bf419581.md) | 56 | `result-track:021c15936ed363b3bf419581f965194957a60aa468cd3d6e67c9762b40e17b92` |
| 3 | `theorem` | [card_functions_sum_skolem₁_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/card-functions-sum-skolem-le--1da37dff14fbcf16e5ecec88.md) | 70 | `result-track:1da37dff14fbcf16e5ecec8858e08124d9a8eb1789c6ea9f8811c0ca546ddb16` |
| 4 | `instance` | [skolem₁Structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/skolem-structure--dee5b88da1d2f6f20a7eea74.md) | 82 | `declaration-track:dee5b88da1d2f6f20a7eea742e785ab32045a785211001c87de6aa1ec276bc64` |
| 5 | `theorem` | [skolem₁_reduct_isElementary](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/skolem-reduct-iselementary--ffbbe46ee92e2856a19ea1fa.md) | 88 | `result-track:ffbbe46ee92e2856a19ea1fa0fb7208d3f0544e207272a9bacc1659c9e87b9e9` |
| 6 | `def` | [elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/elementaryskolem-reduct--6202c78e52b4ba9235998ea8.md) | 100 | `declaration-track:6202c78e52b4ba9235998ea812820535fdac6ff469b6ab55859c1b0ea09ecc1e` |
| 7 | `theorem` | [coeSort_elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/coesort-elementaryskolem-reduct--c715cea77bb200ccca426a10.md) | 104 | `result-track:c715cea77bb200ccca426a105d6b5701106273dcfcd643bb10bdd0d41ad424cb` |
| 8 | `instance` | [Substructure.elementarySkolem₁Reduct.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/substructure-elementaryskolem-reduct-instsmall--238549cfc82e81fb1af96e74.md) | 114 | `declaration-track:238549cfc82e81fb1af96e7420ec629dc0f29caf242b9ed2aaa832a7149b9913` |
| 9 | `theorem` | [exists_small_elementarySubstructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/exists-small-elementarysubstructure--6b3e53e0948460b6932f6475.md) | 119 | `result-track:6b3e53e0948460b6932f647570b4d2b6f002950e0c63a7cf43858f029314a256` |
| 10 | `theorem` | [exists_elementarySubstructure_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variantb0c0eb5b77a56cf2a072e2c49490a1a041d970202d25adcd5c0515ba0c3b67eb.lean/declarations/exists-elementarysubstructure-card-eq--2d826082631af20aa80d2b23.md) | 128 | `result-track:2d826082631af20aa80d2b23b661acc1f96d1fc7e6aa9a62373f7f571bcffeaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
