# Verification target: GRWTSK.Algebra.Locus.Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7dcd48adbdffb95fd752cca2a22f70025781fa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/index.md) · [Full source](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7dcd48adbdffb95fd752cca2a22f70025781fa`.

Source path: `GRWTSK/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Etale.Kaehler` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.FreeLocus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Support` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsSmoothAt](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/issmoothat--df637832557e31c9f833ebfc.md) | 42 | `declaration-track:df637832557e31c9f833ebfcdd0fb5168051db3906804dc6699e5bde15af973e` |
| 2 | `def` | [smoothLocus](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/smoothlocus--b534d738ee878a21b5ede130.md) | 47 | `declaration-track:b534d738ee878a21b5ede13037143d3983bea975131eff438bce0fb76372dff9` |
| 3 | `lemma` | [smoothLocus_eq_compl_support_inter](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/smoothlocus-eq-compl-support-inter--3584090cb7936a2fa8a147d7.md) | 52 | `result-track:3584090cb7936a2fa8a147d78a89593be20a6491fb1a9b0a67ea64250259a991` |
| 4 | `lemma` | [basicOpen_subset_smoothLocus_iff](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/basicopen-subset-smoothlocus-iff--659d331eed02ec1f482d8b29.md) | 73 | `result-track:659d331eed02ec1f482d8b29ca0edf15c67e031555e9eb3998fb12edfce83e68` |
| 5 | `lemma` | [basicOpen_subset_smoothLocus_iff_smooth](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/basicopen-subset-smoothlocus-iff-smooth--1bb4e93e1de7afaef3759ba5.md) | 89 | `result-track:1bb4e93e1de7afaef3759ba5acfa2188d460f3a4c5d6e1492f83795cd94d63a0` |
| 6 | `lemma` | [smoothLocus_eq_univ_iff](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/smoothlocus-eq-univ-iff--4c6d6245c8dab8ed46f135e6.md) | 96 | `result-track:4c6d6245c8dab8ed46f135e61e3c1f9cb84a8ba9827dacd1a1cba4b249437696` |
| 7 | `lemma` | [smoothLocus_comap_of_isLocalization](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/smoothlocus-comap-of-islocalization--1c75f1a6d7a64961b4d56847.md) | 103 | `result-track:1c75f1a6d7a64961b4d5684711a071049328455fc23ede8393cb3bb2eeabbc99` |
| 8 | `lemma` | [isOpen_smoothLocus](../../../../mathematics/Algebra/Locus/Variant79bf7f5c6199593b154a0028b684fbead6ccd4bfd81a6566912cdf604e737506.lean/declarations/isopen-smoothlocus--2eb9422e81d87417424dfd69.md) | 116 | `result-track:2eb9422e81d87417424dfd69b741a6cb6540947b26e742d58fbc67b6da8a48ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
