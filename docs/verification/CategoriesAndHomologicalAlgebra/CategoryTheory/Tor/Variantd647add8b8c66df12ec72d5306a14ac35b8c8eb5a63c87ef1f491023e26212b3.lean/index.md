# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tor.Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adb1c83b0400b8f20bd230b32c98c6ddd3fbe47b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adb1c83b0400b8f20bd230b32c98c6ddd3fbe47b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.LeftDerived` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/declarations/tor--d5a408c79efe75cae30561d3.md) | 48 | `declaration-track:d5a408c79efe75cae30561d3b3033216887986b2e3620196a2823c52d89ce68c` |
| 2 | `def` | [Tor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/declarations/tor--b6bbdc6d1b9e9991c06a3972.md) | 54 | `declaration-track:b6bbdc6d1b9e9991c06a3972b299ef3d8476c3e28156f68425585e341fff300f` |
| 3 | `lemma` | [Tor'_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/declarations/tor-obj-map--2438f090abbc61a75a4c1a45.md) | 62 | `result-track:2438f090abbc61a75a4c1a4591a37e21b56a44ff5014ac3974e04928e3ee124c` |
| 4 | `lemma` | [isZero_Tor_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/declarations/iszero-tor-succ-of-projective--75f6d2911a05278838409139.md) | 66 | `result-track:75f6d2911a052788384091392dd2e6b109eb8f95206071c40d95ab47e623a45d` |
| 5 | `lemma` | [isZero_Tor'_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantd647add8b8c66df12ec72d5306a14ac35b8c8eb5a63c87ef1f491023e26212b3.lean/declarations/iszero-tor-succ-of-projective--994da5403912ed25e50257c9.md) | 71 | `result-track:994da5403912ed25e50257c995e4e22408667d7174ef091fb3bd2819aa909c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
