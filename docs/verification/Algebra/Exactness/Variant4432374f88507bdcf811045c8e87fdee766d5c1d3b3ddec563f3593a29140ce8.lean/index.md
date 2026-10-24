# Verification target: GRWTSK.Algebra.Exactness.Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "669174773d5962bcafa3dc45e701054efeb360b8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `669174773d5962bcafa3dc45e701054efeb360b8`.

Source path: `GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Functoriality` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Filtration` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapPreimageDelta](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/mappreimagedelta--bd7f69133cdeceef012dc461.md) | 46 | `declaration-track:bd7f69133cdeceef012dc46189f9cfdc5980bc0079c7c397bc181986bc87d0c6` |
| 2 | `def` | [mapPreimage](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/mappreimage--4f9921654103aa723f7e8d5f.md) | 56 | `declaration-track:4f9921654103aa723f7e8d5fe16337be18336fe5c8204e6ee1770d09786b822a` |
| 3 | `theorem` | [map_surjective](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/map-surjective--be83c7f9a2b2b7774ddb0c2b.md) | 68 | `result-track:be83c7f9a2b2b7774ddb0c2b8de1d1ce52e179c0a177fdbfd712eb7457454fdc` |
| 4 | `theorem` | [map_injective](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/map-injective--353c97ee37387132ac2ee350.md) | 90 | `result-track:353c97ee37387132ac2ee3502302807799c87a52985ab058d0c10ed772bbaf31` |
| 5 | `def` | [mapExactAuxDelta](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/mapexactauxdelta--803d858601dd527b62a22482.md) | 122 | `declaration-track:803d858601dd527b62a224828739ad3ef20aa999fc146eae962eb87820f64b3a` |
| 6 | `def` | [mapExactAux](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/mapexactaux--1ee1251fc02c78d49d19e4fd.md) | 151 | `declaration-track:1ee1251fc02c78d49d19e4fd316be115e2ad85e644472ac166a8e4f98ed740be` |
| 7 | `theorem` | [map_exact](../../../../mathematics/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/declarations/map-exact--40f318fd3aa1b435b481b5cb.md) | 182 | `result-track:40f318fd3aa1b435b481b5cb0d3275bec299e8ce2873a1e5d1df2710dbce043a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
