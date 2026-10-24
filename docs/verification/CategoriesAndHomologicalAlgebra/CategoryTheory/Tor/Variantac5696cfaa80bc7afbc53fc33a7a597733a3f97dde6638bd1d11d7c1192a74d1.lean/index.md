# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tor.Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bf2c3cf85f18341603fe602a28fc4fd079731fb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bf2c3cf85f18341603fe602a28fc4fd079731fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.LeftDerived` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/tor--53fc7602724938294077ed0b.md) | 43 | `declaration-track:53fc7602724938294077ed0b15c024e8325880155490ac8c33e7534509ea2694` |
| 2 | `def` | [Tor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/tor--3e225621c3de5a1dfd0578e7.md) | 51 | `declaration-track:3e225621c3de5a1dfd0578e7f14c0462a0b616c2cdf419c53bdd28f4f828e57d` |
| 3 | `lemma` | [Tor'_map_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/tor-map-app--7928e9c8889334b2e5fa2c86.md) | 61 | `result-track:7928e9c8889334b2e5fa2c86568bc33cda3ceaf9f2729a3d5c79834c65ee0ec3` |
| 4 | `lemma` | [Tor'_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/tor-obj-map--de870635a9202540fe12883b.md) | 68 | `result-track:de870635a9202540fe12883be1a7c6fda289df37d89099c5531e127670912021` |
| 5 | `def` | [torSuccOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/torsuccofprojective--5d2ac5c3f4352b18bc715ca5.md) | 74 | `declaration-track:5d2ac5c3f4352b18bc715ca5c728dcd57f36b989c21191f35212faeb6965e1fd` |
| 6 | `def` | [tor'SuccOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/declarations/tor-succofprojective--df699db9f720920b1b9f065f.md) | 80 | `declaration-track:df699db9f720920b1b9f065fd2b0e159e7fd073d328496046797fdd655732b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
