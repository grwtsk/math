# Verification target: GRWTSK.Algebra.Unramified.Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f0952a47462ebab8dd138151e0476fb107362ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f0952a47462ebab8dd138151e0476fb107362ce`.

Source path: `GRWTSK/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Unramified.Locus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormallyUnramified](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/formallyunramified--1b8ee955c399bb3584d94eb2.md) | 24 | `declaration-track:1b8ee955c399bb3584d94eb2972f13407a0f4fe905b8762f55f0cb010d225f60` |
| 2 | `lemma` | [formallyUnramified_algebraMap](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/formallyunramified-algebramap--7a0c5e7ec2115d8f7d7865bc.md) | 28 | `result-track:7a0c5e7ec2115d8f7d7865bc8c69c607c9d793a1ea345e96f0210e47d0bd8dd0` |
| 3 | `lemma` | [stableUnderComposition](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/stableundercomposition--3750010797b26e61d47ae9c7.md) | 36 | `result-track:3750010797b26e61d47ae9c794186dbcd44ecaa42f48a3dff90d6785a82d51bb` |
| 4 | `lemma` | [respectsIso](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/respectsiso--772244893003b262d439c3ac.md) | 42 | `result-track:772244893003b262d439c3ace386e54cee1e5a65aa8435b096c2ac2f21ffa173` |
| 5 | `lemma` | [isStableUnderBaseChange](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/isstableunderbasechange--31e9a52834c4f08f2243fd3f.md) | 49 | `result-track:31e9a52834c4f08f2243fd3fba17ee8a74edc2d3e047b4f0d6e833850293d30f` |
| 6 | `lemma` | [holdsForLocalizationAway](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/holdsforlocalizationaway--da36fceaf98d78d0d8552497.md) | 57 | `result-track:da36fceaf98d78d0d8552497acaade1c5b179f55658d7fe0c414504f5f341f34` |
| 7 | `lemma` | [ofLocalizationPrime](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/oflocalizationprime--2fcb4a0870447a1c8c396364.md) | 63 | `result-track:2fcb4a0870447a1c8c396364e753874db1312d2f04c7df25293d330a2563352b` |
| 8 | `lemma` | [ofLocalizationSpanTarget](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/oflocalizationspantarget--74cd340b88f5435bdcaecf0c.md) | 78 | `result-track:74cd340b88f5435bdcaecf0c166600f3fd9859165a9b5983b0bf2f281e160855` |
| 9 | `lemma` | [propertyIsLocal](../../../../mathematics/Algebra/Unramified/Variantcc7b155950476a83ab590676f0bf7146ce0a6370082c46b6d4c8205f28f14fb6.lean/declarations/propertyislocal--b98427644a41484c8aff0abd.md) | 93 | `result-track:b98427644a41484c8aff0abdbdc71f50166f9d1389506d32aa627fc335fdc159` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
