# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tor.Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7de1d3d2762a10010ae6bb99944f3e5a3dd8fc29",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7de1d3d2762a10010ae6bb99944f3e5a3dd8fc29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.LeftDerived` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/tor--5ddd9d6685c248eb052e05cd.md) | 51 | `declaration-track:5ddd9d6685c248eb052e05cdf60b8a34cf468a795d97dc48f314e032e9a62d51` |
| 2 | `def` | [Tor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/tor--a4c3978240cf0884f70e4ecf.md) | 59 | `declaration-track:a4c3978240cf0884f70e4ecfc332375e08f6b9da786588c649ab4fef95eb6f31` |
| 3 | `lemma` | [Tor'_map_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/tor-map-app--3cdd81522dff0f064a804dec.md) | 69 | `result-track:3cdd81522dff0f064a804dec9c0a33e4818ecbc3d2c68b3623dabf639fe08f43` |
| 4 | `lemma` | [Tor'_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/tor-obj-map--7948af5560bfb495c36981d1.md) | 76 | `result-track:7948af5560bfb495c36981d1c3b55029de39a804ba17d5a8a8f8b392ba6fcf50` |
| 5 | `def` | [torSuccOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/torsuccofprojective--2d155b8465ff07996c890b72.md) | 82 | `declaration-track:2d155b8465ff07996c890b72cb7f834c4661ef8138fe9c46d50ea20efd2cc6a5` |
| 6 | `def` | [tor'SuccOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/declarations/tor-succofprojective--64a29ec8917f48e40d54ebf2.md) | 88 | `declaration-track:64a29ec8917f48e40d54ebf2d104e20bc89c08de401fdcde6896740cf0173868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
