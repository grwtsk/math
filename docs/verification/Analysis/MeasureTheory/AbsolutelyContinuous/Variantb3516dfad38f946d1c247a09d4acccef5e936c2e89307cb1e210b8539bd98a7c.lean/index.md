# Verification target: GRWTSK.Analysis.MeasureTheory.AbsolutelyContinuous.Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0624a535d1c3f5a6ab6b58bdad5a71699861b9c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0624a535d1c3f5a6ab6b58bdad5a71699861b9c`.

Source path: `GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Map` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous--da8db8045fba3ad4fdebdc32.md) | 53 | `declaration-track:da8db8045fba3ad4fdebdc32b3a2e0d90c618cc6b9329bfad8d098f2cd93fa93` |
| 2 | `theorem` | [absolutelyContinuous_of_le](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-of-le--002ea314fa659125c0888c33.md) | 59 | `result-track:002ea314fa659125c0888c337eff7f1fe3e093b448600c8e159a84b4f403049c` |
| 3 | `theorem` | [absolutelyContinuous_of_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-of-eq--bdf9c3127fc1b1833ff4047c.md) | 64 | `result-track:bdf9c3127fc1b1833ff4047c0d87382f2f0e4143c78804f3939a843df8a80dbc` |
| 4 | `theorem` | [mk](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/mk--df9239120f5fd2c159ef4b15.md) | 71 | `result-track:df9239120f5fd2c159ef4b15c2e1affd7af69851a6de247f083c3c34845ede41` |
| 5 | `theorem` | [refl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/refl--e73e16498279dcaa47c14fb5.md) | 77 | `result-track:e73e16498279dcaa47c14fb50e585eeb67da7ce4af8c7a024c5faef42a48a5c0` |
| 6 | `theorem` | [rfl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/rfl--80d778e19c2842db5da4b0fe.md) | 80 | `result-track:80d778e19c2842db5da4b0fef9b2578f648a77fbaa652ebcaa22f3ee30529cb4` |
| 7 | `instance` | [instIsRefl](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/instisrefl--6a4cf1a71a12c00a36805b27.md) | 82 | `declaration-track:6a4cf1a71a12c00a36805b27b00c9ab59564bbac8d569e426efa0b33a0d6cd26` |
| 8 | `lemma` | [zero](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/zero--9b2321912cf70050e9a3d956.md) | 86 | `result-track:9b2321912cf70050e9a3d9562b996eca1ae2b3ba1de19c2aee8c7878bc838867` |
| 9 | `theorem` | [trans](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/trans--d9064511e24e29c38c30c565.md) | 89 | `result-track:d9064511e24e29c38c30c565c953502d1880df427fb127c5f04388148c400726` |
| 10 | `theorem` | [map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/map--a12756ca73913bc2ec231d5f.md) | 92 | `result-track:a12756ca73913bc2ec231d5f393251f80766ba221e6ef64e4e4cee498071ca6e` |
| 11 | `theorem` | [smul_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/smul-left--58eece841173a6f415ab7f6b.md) | 95 | `result-track:58eece841173a6f415ab7f6bdc69e71927966b1016d143f40008924189052f4b` |
| 12 | `theorem` | [smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/smul--5a2bea8563b2be368e37eae6.md) | 102 | `result-track:5a2bea8563b2be368e37eae63e5b2f9e0586b4ec16955eda4d867f67d89f3076` |
| 13 | `lemma` | [add](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/add--8b30e681c88dc01d6f8f1e52.md) | 110 | `result-track:8b30e681c88dc01d6f8f1e52f0a62a6c0db3852517b8c4751ff2f3ed1eb597a3` |
| 14 | `lemma` | [add_left_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/add-left-iff--2ed57368dd8ca5d4b229f62a.md) | 115 | `result-track:2ed57368dd8ca5d4b229f62aeb3e1b76cac9628fe269837f6fb0567c0f692f69` |
| 15 | `lemma` | [add_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/add-left--499ae62659f61f2cc39f814f.md) | 123 | `result-track:499ae62659f61f2cc39f814fc041eaf9a0255bdd35b45ecdc9696ab035bc43d2` |
| 16 | `lemma` | [add_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/add-right--0668643b92005eb1a3f3ae7d.md) | 126 | `result-track:0668643b92005eb1a3f3ae7d7135508da2c4f5de8b4dedaac9858e3460fc8205` |
| 17 | `lemma` | [absolutelyContinuous_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-zero-iff--113c189f56e5d4bbfaec72ec.md) | 134 | `result-track:113c189f56e5d4bbfaec72eca08cac5c9fa76376b337defa92cd9508ebe00fb5` |
| 18 | `lemma` | [absolutelyContinuous_sum_left](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-sum-left--bcaddbfd69e5fd8afb82dd53.md) | 140 | `result-track:bcaddbfd69e5fd8afb82dd53998b4fec105bda2b5ea943a5924616cdc9f2664b` |
| 19 | `lemma` | [absolutelyContinuous_sum_right](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-sum-right--cd9d2a36e39b5fe5949cda30.md) | 144 | `result-track:cd9d2a36e39b5fe5949cda307477b53e62fc516a5669a34474e5416ea8d704a8` |
| 20 | `lemma` | [smul_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/smul-absolutelycontinuous--46aca4a2926bf6eb7404ec1c.md) | 150 | `result-track:46aca4a2926bf6eb7404ec1c4e0f26f88cf17686ba79ef62b3ef7aa34389cb28` |
| 21 | `theorem` | [absolutelyContinuous_of_le_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-of-le-smul--43f9832399bbfc9b91ebcd5e.md) | 152 | `result-track:43f9832399bbfc9b91ebcd5e7cddb5df0f5be371d7efb192f0a32db2316f7abc` |
| 22 | `lemma` | [absolutelyContinuous_smul](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-smul--e3fe8de6f7f55e1f7a5b9277.md) | 156 | `result-track:e3fe8de6f7f55e1f7a5b9277a7b2855bae865706d4fc884d6fdbf88d918672b2` |
| 23 | `theorem` | [ae_le_iff_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/ae-le-iff-absolutelycontinuous--cbb25591834be39a8fba3976.md) | 159 | `result-track:cbb25591834be39a8fba397662020511b75dbf39ee2a092aba5ab66a6cf3d4a2` |
| 24 | `theorem` | [AbsolutelyContinuous.ae_eq](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-ae-eq--92abf6996fe643f562a8d2f1.md) | 169 | `result-track:92abf6996fe643f562a8d2f1d6cdc12a7c9cc14c83996f0afa2ff9e2e6c007e1` |
| 25 | `theorem` | [AEDisjoint.of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/aedisjoint-of-absolutelycontinuous--42ebd859f8147ab8487695d8.md) | 174 | `result-track:42ebd859f8147ab8487695d853934c9c95221111e5772684d793c20c0966ffc9` |
| 26 | `theorem` | [AEDisjoint.of_le](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/aedisjoint-of-le--d06b810b0736d40bdc509179.md) | 178 | `result-track:d06b810b0736d40bdc50917906d88e0c1b9bd12b2bc73350ee477a52aaa53097` |
| 27 | `theorem` | [ae_mono](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/ae-mono--d1d82279847143a4f27fcfdd.md) | 184 | `result-track:d1d82279847143a4f27fcfdd32305094aec13881994bab2c22280f795673155e` |
| 28 | `lemma` | [absolutelyContinuous_map](../../../../../mathematics/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/declarations/absolutelycontinuous-map--37b2a4a1b62906f0612f4846.md) | 195 | `result-track:37b2a4a1b62906f0612f4846cbf20942996970affd00faba181d49c04829c7d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
