# Verification target: GRWTSK.Analysis.CircleAddChar.Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a533f2683a83d3ede00c98c2a3ae6a69bcd14d6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/index.md) · [Full source](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a533f2683a83d3ede00c98c2a3ae6a69bcd14d6`.

Source path: `GRWTSK/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.AddCharacter` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddCircle.toCircle_addChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/addcircle-tocircle-addchar--5bab688aea8d8c89198e8048.md) | 34 | `declaration-track:5bab688aea8d8c89198e8048bf7903625197185d785a843bdff6d96ecd17af7d` |
| 2 | `def` | [toCircle](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/tocircle--27fb0b80ccad2036580b5a6c.md) | 53 | `declaration-track:27fb0b80ccad2036580b5a6c4e10535264ab099fe4242707cdbd848e8804ae91` |
| 3 | `lemma` | [toCircle_intCast](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/tocircle-intcast--321dc834b16630179fa12063.md) | 56 | `result-track:321dc834b16630179fa12063ab15ce3de8722b2eb9ddce6c80e19547b4e0c645` |
| 4 | `lemma` | [toCircle_natCast](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/tocircle-natcast--1382b9ef96d0a62f48a31a1b.md) | 63 | `result-track:1382b9ef96d0a62f48a31a1b191d14030554536855edbc6bcd6b29a869e34655` |
| 5 | `lemma` | [toCircle_apply](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/tocircle-apply--16fd7c6576c3b7acdbe58005.md) | 71 | `result-track:16fd7c6576c3b7acdbe5800546cc1e49936597501046886d935a3bfbeaf7946c` |
| 6 | `lemma` | [toCircle_eq_circleExp](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/tocircle-eq-circleexp--f957eb97c8e529fbc94ed642.md) | 75 | `result-track:f957eb97c8e529fbc94ed6426cbc85e20a2ae39008ab2925f1514c0c4c6e0ed5` |
| 7 | `lemma` | [injective_toCircle](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/injective-tocircle--a8a0afb2982f7c9dd845b65e.md) | 82 | `result-track:a8a0afb2982f7c9dd845b65ed37f251a0cc694efe65bc09293615d19e1f4c108` |
| 8 | `def` | [stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/stdaddchar--81fc3a2cdcd1aeb9c15e099e.md) | 86 | `declaration-track:81fc3a2cdcd1aeb9c15e099e9c92c3414a55e6cf6e94c42fcfee73546434c98c` |
| 9 | `lemma` | [stdAddChar_coe](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/stdaddchar-coe--3b4430d19de2691d369b19d8.md) | 88 | `result-track:3b4430d19de2691d369b19d8e4e14601cc540b72e03d75fa38e2b61cd71f0c94` |
| 10 | `lemma` | [stdAddChar_apply](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/stdaddchar-apply--eee80f374b327f4cd4ca89c1.md) | 91 | `result-track:eee80f374b327f4cd4ca89c18f44a4218391201c89674f8bf0f00c7af5a851fb` |
| 11 | `lemma` | [injective_stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/injective-stdaddchar--75bcbcaff7b2c5607c6ca986.md) | 93 | `result-track:75bcbcaff7b2c5607c6ca986d01a6781b5332c9ef49189a5a16860b4767a60b4` |
| 12 | `lemma` | [isPrimitive_stdAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/isprimitive-stdaddchar--d61921f031716c87f0ac3c96.md) | 97 | `result-track:d61921f031716c87f0ac3c96ff31501f9d267a6e35d1fb12ca9af542c3ac0d2e` |
| 13 | `def` | [rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunityaddchar--544b255dbc57a6155df4c34b.md) | 103 | `declaration-track:544b255dbc57a6155df4c34b7bf9633fdb574eca03ec06c625bdd5c0b5e6be12` |
| 14 | `lemma` | [rootsOfUnityAddChar_val](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunityaddchar-val--99de4d0b22bae23876362f15.md) | 109 | `result-track:99de4d0b22bae23876362f15036186b61ec3eb63f31684fa57df04a61548aea9` |
| 15 | `def` | [rootsOfUnitytoCircle](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunitytocircle--cf1da7710de5a610b4b71abc.md) | 118 | `declaration-track:cf1da7710de5a610b4b71abc70521b145f0ea14c5bb9197149b1825180225655` |
| 16 | `def` | [rootsOfUnityCircleEquiv](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunitycircleequiv--5a5aaf3035942e7ad793c14a.md) | 126 | `declaration-track:5a5aaf3035942e7ad793c14a423a8d1009243c5648605f037423f08d1d9bf988` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/instance--cf4d0205b3707806bdf7846d.md) | 136 | `declaration-track:cf4d0205b3707806bdf7846d18813e870885780fc6f65f7dad1de63656645e3f` |
| 18 | `lemma` | [rootsOfUnityCircleEquiv_apply](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunitycircleequiv-apply--007602efea413af69eab3e41.md) | 138 | `result-track:007602efea413af69eab3e416399aaeb7be88680a899d1e962f422e05e36157b` |
| 19 | `lemma` | [rootsOfUnityCircleEquiv_comp_rootsOfUnityAddChar_val](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/rootsofunitycircleequiv-comp-rootsofunityaddchar-val--d7a59100df1508f639aa81f8.md) | 143 | `result-track:d7a59100df1508f639aa81f85f2d5f4862736407e2ef6781c7ae67f7f39b3ef6` |
| 20 | `theorem` | [surjective_rootsOfUnityCircleEquiv_comp_rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/surjective-rootsofunitycircleequiv-comp-rootsofunityaddchar--e2ecf182245649cc4f532f90.md) | 148 | `result-track:e2ecf182245649cc4f532f90866a5d427851c2bded2b57edfbcdf46776f286e6` |
| 21 | `lemma` | [bijective_rootsOfUnityAddChar](../../../../mathematics/Analysis/CircleAddChar/Variant81dbf897d492c2acb340420085faf2abddf8955d4f57788f8ae34d5f4f07eab7.lean/declarations/bijective-rootsofunityaddchar--c428ac9ca4ff350b55194861.md) | 153 | `result-track:c428ac9ca4ff350b55194861bff0fcb0a15417da06e4189559d44fee1c634b4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
