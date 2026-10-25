# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Curry.Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c6c82c2067695df95e8290c50de87ea461dce8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c6c82c2067695df95e8290c50de87ea461dce8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.OfArity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry--4b9a82ce0fb031652049432e.md) | 38 | `declaration-track:4b9a82ce0fb031652049432e05d66aeed388ec83f4a9a56effc399eb1475d162` |
| 2 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry--2edfea09cc2695b22377c2ca.md) | 44 | `declaration-track:2edfea09cc2695b22377c2caa4ec662eb0a9caada448f36b0a0857d86012f6cc` |
| 3 | `theorem` | [uncurry_apply_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-apply-cons--9d4269cf429cf03d7cd73b07.md) | 50 | `result-track:9d4269cf429cf03d7cd73b07b22007790a54778de117d1f8c5003d2bc67517f0` |
| 4 | `theorem` | [uncurry_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-apply-succ--4d661e5845d71ea3e105043e.md) | 55 | `result-track:4d661e5845d71ea3e105043ea81f58a2aefe823bc0f43040bdccbcf21d47844c` |
| 5 | `theorem` | [curry_apply_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-apply-cons--903c95ffad2b3d4bbdeed0af.md) | 61 | `result-track:903c95ffad2b3d4bbdeed0af55d3fe13990b7c5628b5d4f32de458ef9855c5c0` |
| 6 | `theorem` | [curry_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-apply-succ--575d021b2bf39d2aee1d1c92.md) | 66 | `result-track:575d021b2bf39d2aee1d1c92147de0bd72ea4fb2670dd0222d5341c203daa3b0` |
| 7 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-uncurry--eeecbe910e0db86220cabbcd.md) | 73 | `result-track:eeecbe910e0db86220cabbcdde9c1f27d67ff5b273c51dcb61027e5571b277da` |
| 8 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-curry--ac1533c104308e4a4865c0a4.md) | 79 | `result-track:ac1533c104308e4a4865c0a4d050f49c096ebc32804a587894a228d1929b168a` |
| 9 | `def` | [curryEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curryequiv--38404fa3066a773ce9a01813.md) | 88 | `declaration-track:38404fa3066a773ce9a01813ee7e95b83304b375e76a8a50e18133d2c787cce1` |
| 10 | `lemma` | [curry_two_eq_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-two-eq-curry--6cdf8fea06a3187520e80fd3.md) | 94 | `result-track:6cdf8fea06a3187520e80fd36ec38860c76446df450ee10268d18ca08f400a1b` |
| 11 | `lemma` | [uncurry_two_eq_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-two-eq-uncurry--50d9433184a6b35bb3318af8.md) | 98 | `result-track:50d9433184a6b35bb3318af8eca6c4eeb8ca7688e88aee4867fc84769ad2c351` |
| 12 | `def` | [uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry--c11f7d343547b57fbc555efe.md) | 111 | `declaration-track:c11f7d343547b57fbc555efeb403ac5361e675eb43ac3afa7dde74caf9977c7d` |
| 13 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry--5872b732fe6bcb06d9f56d83.md) | 114 | `declaration-track:5872b732fe6bcb06d9f56d83fd6910d762288c5a2c680004d9856e1ec64bda6f` |
| 14 | `theorem` | [curry_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-uncurry--50c65c9df72bc29ea3829793.md) | 117 | `result-track:50c65c9df72bc29ea3829793151cd150d55d26833bc172ff25cdd39e15efaf1a` |
| 15 | `theorem` | [uncurry_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-curry--23e39e15cc1d52e6ad450412.md) | 121 | `result-track:23e39e15cc1d52e6ad4504124d74dd5259dd8a9fed7aa87c6e49fc447f78844d` |
| 16 | `def` | [curryEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curryequiv--0a83e74f48745b72b0d6d635.md) | 126 | `declaration-track:0a83e74f48745b72b0d6d63504ad32375e65deb323ab5bc49699d54b52597353` |
| 17 | `lemma` | [curry_two_eq_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/curry-two-eq-curry--d41b1d20acdc9c39ca11322f.md) | 129 | `result-track:d41b1d20acdc9c39ca11322f68493346bdf35c86cf30b81cae263eae14883c44` |
| 18 | `lemma` | [uncurry_two_eq_uncurry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Curry/Variantcfaf100fa0bbde5981737b5b552139b38277547c14559a63425bc1952b2cda69.lean/declarations/uncurry-two-eq-uncurry--5c6729cd49ccd76efc66c32e.md) | 133 | `result-track:5c6729cd49ccd76efc66c32e8691a685272eb6bc31329c04f9ea46cc816ee1f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
