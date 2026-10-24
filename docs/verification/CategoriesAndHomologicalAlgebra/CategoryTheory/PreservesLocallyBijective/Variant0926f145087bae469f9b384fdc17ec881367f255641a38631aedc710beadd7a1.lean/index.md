# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLocallyBijective.Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "627a53e24a25e98ec187dd887e4fb3ec08b2aae7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `627a53e24a25e98ec187dd887e4fb3ec08b2aae7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.DenseSubsite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallyInjective_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallyinjective-whisker--31839f5ffe3db7ed9bc32699.md) | 39 | `result-track:31839f5ffe3db7ed9bc32699362118ef68a5761ed80ef155a45a1c19cc916512` |
| 2 | `lemma` | [isLocallyInjective_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallyinjective-of-whisker--066d534b4cd7b41421f12da3.md) | 43 | `result-track:066d534b4cd7b41421f12da3e1eba6bd5bae493c4b87a5a56ab5b7f780451b13` |
| 3 | `lemma` | [isLocallyInjective_whisker_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallyinjective-whisker-iff--0629e44551eb000ad11a0b9e.md) | 59 | `result-track:0629e44551eb000ad11a0b9eb0cc5118dcfed6a0de1f846c3a254395dbdddd00` |
| 4 | `lemma` | [isLocallySurjective_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallysurjective-whisker--7c4f21cf412493db61b504f2.md) | 64 | `result-track:7c4f21cf412493db61b504f2fa536d3a550293011af5206d045efa9df4c701e7` |
| 5 | `lemma` | [isLocallySurjective_of_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallysurjective-of-whisker--87c680a6954925131269a1ba.md) | 68 | `result-track:87c680a6954925131269a1ba1af833b559b00e4f55320403c6818dc727b39e10` |
| 6 | `lemma` | [isLocallySurjective_whisker_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLocallyBijective/Variant0926f145087bae469f9b384fdc17ec881367f255641a38631aedc710beadd7a1.lean/declarations/islocallysurjective-whisker-iff--58268b85d4698f4058b6d8bc.md) | 82 | `result-track:58268b85d4698f4058b6d8bcf904beec69a02a9a2157b1321c153c8103804c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
