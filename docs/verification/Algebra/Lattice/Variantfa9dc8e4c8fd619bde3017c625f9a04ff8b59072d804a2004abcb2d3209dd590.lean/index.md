# Verification target: GRWTSK.Algebra.Lattice.Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3e38d382403fe20a47bda53b6762fdcaef07e9e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3e38d382403fe20a47bda53b6762fdcaef07e9e`.

Source path: `GRWTSK/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/instance--9a6c890364cfbc67da97bf84.md) | 35 | `declaration-track:9a6c890364cfbc67da97bf8477618d542388d7e334a974e20ffcf8d46fcebdfc` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/instance--699d63219741ecaefb4946b3.md) | 38 | `declaration-track:699d63219741ecaefb4946b3aa034817a24119340d67a7aead6525a4a10fd838` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/instance--07fcbe69c7deee13f49b9b15.md) | 40 | `declaration-track:07fcbe69c7deee13f49b9b152fffcf90632791b7a6f1a11554ad9b3dc0c1238f` |
| 4 | `theorem` | [eq_top_of_unit_mem](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/eq-top-of-unit-mem--6f374bfe565df7b00b939ed6.md) | 43 | `result-track:6f374bfe565df7b00b939ed65c64ad8619bf2272c7575b66296b0af470075859` |
| 5 | `theorem` | [eq_top_of_isUnit_mem](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/eq-top-of-isunit-mem--9f3f6c01c74f6f8597d04667.md) | 50 | `result-track:9f3f6c01c74f6f8597d04667de336ebaf32f3c8040bd7bfcf2e38dbab4335a59` |
| 6 | `theorem` | [eq_top_iff_one](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/eq-top-iff-one--48598cd8585007c32d76b318.md) | 54 | `result-track:48598cd8585007c32d76b31868c895fab1dfa840ce3bacdeb58aec7d0432078d` |
| 7 | `theorem` | [ne_top_iff_one](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/ne-top-iff-one--867e691c75655995010edfb0.md) | 57 | `result-track:867e691c75655995010edfb09c44e71ba2b0384aa2bdeaa3ac2462d429141e44` |
| 8 | `theorem` | [mem_sup_left](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-sup-left--ac95fef15a6e93f13c25ff74.md) | 65 | `result-track:ac95fef15a6e93f13c25ff7498da9722f5d9842f26ec5eef4ee08fff51a317e3` |
| 9 | `theorem` | [mem_sup_right](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-sup-right--65aa60f7f0eaa14a7f0958f3.md) | 68 | `result-track:65aa60f7f0eaa14a7f0958f3ca2ced1f505024a0cfe2bc5fdbb8328b5bc7e90d` |
| 10 | `theorem` | [mem_iSup_of_mem](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-isup-of-mem--f33742db8dbc311fa6f439ad.md) | 71 | `result-track:f33742db8dbc311fa6f439ad2d6f3031f44280f67847479dc2d3ba09e7e60ef5` |
| 11 | `theorem` | [mem_sSup_of_mem](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-ssup-of-mem--504d67454168642bd32610c3.md) | 74 | `result-track:504d67454168642bd32610c37bc3d67f47b4b7a8dac5fa0a0995cc36c36fe7bd` |
| 12 | `theorem` | [mem_sInf](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-sinf--5fb9b8af6dfcc33a922c237b.md) | 78 | `result-track:5fb9b8af6dfcc33a922c237b21148cb060cb0b52ff2c3b3af6b97a824b7c1fed` |
| 13 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-inf--9176960da6532f54923b869a.md) | 82 | `result-track:9176960da6532f54923b869a15d316bb99c3504764987784e901e6c19df7df12` |
| 14 | `theorem` | [mem_iInf](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-iinf--c38051329219f86dcecdcadb.md) | 86 | `result-track:c38051329219f86dcecdcadb574d6b1a5b5d83ba3e604bd827998c1b081dfd23` |
| 15 | `theorem` | [mem_bot](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/mem-bot--be70a00aa1b57f96dbedd2c0.md) | 90 | `result-track:be70a00aa1b57f96dbedd2c07be43455b1ad2a9b696c8adb365e391474c824b6` |
| 16 | `theorem` | [eq_bot_or_top](../../../../mathematics/Algebra/Lattice/Variantfa9dc8e4c8fd619bde3017c625f9a04ff8b59072d804a2004abcb2d3209dd590.lean/declarations/eq-bot-or-top--52f0a97910f1a9fdd3eaba87.md) | 106 | `result-track:52f0a97910f1a9fdd3eaba87ed2c0f275864182be81c2675ba3c372fd64c8028` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
