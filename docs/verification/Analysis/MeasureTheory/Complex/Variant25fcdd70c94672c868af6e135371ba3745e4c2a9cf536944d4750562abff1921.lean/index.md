# Verification target: GRWTSK.Analysis.MeasureTheory.Complex.Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a81c0ee5135133df2102700d245389e204bc96",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a81c0ee5135133df2102700d245389e204bc96`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/complexmeasure--39e53589399ec571c44392f2.md) | 48 | `declaration-track:39e53589399ec571c44392f2b46eb430cec7bf097bcc8712b056b82d9762e7e7` |
| 2 | `def` | [re](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/re--5c699bbcf38c9bd8878054bd.md) | 55 | `declaration-track:5c699bbcf38c9bd8878054bd169c8bf28bb0feaafd4ae16fa58f060e2a844588` |
| 3 | `def` | [im](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/im--d11b79a083b3b6bf9a556f16.md) | 60 | `declaration-track:d11b79a083b3b6bf9a556f1619a0ef53c0202a4f9fd14852ceaeff69e94ea902` |
| 4 | `def` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure--4110d68ed58d9c9c79c24f50.md) | 65 | `declaration-track:4110d68ed58d9c9c79c24f50751468069c3fffbe5173a0ef71534194c746ab6d` |
| 5 | `theorem` | [_root_.MeasureTheory.SignedMeasure.toComplexMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/root-measuretheory-signedmeasure-tocomplexmeasure-apply--a2b02c2af10235b35d86af16.md) | 72 | `result-track:a2b02c2af10235b35d86af164e39cc06a443c9968a83a48d4d6c5332879349f1` |
| 6 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/tocomplexmeasure-to-signedmeasure--6092341fa374c33492e282ec.md) | 75 | `result-track:6092341fa374c33492e282eccfc0425cf832fd9705e5899d54e676058cfa98b4` |
| 7 | `theorem` | [_root_.MeasureTheory.SignedMeasure.re_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/root-measuretheory-signedmeasure-re-tocomplexmeasure--dd177724ea227355262756f8.md) | 78 | `result-track:dd177724ea227355262756f86a9d342e1dd1f0edf3beaf2b43027b63d0dab0c0` |
| 8 | `theorem` | [_root_.MeasureTheory.SignedMeasure.im_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/root-measuretheory-signedmeasure-im-tocomplexmeasure--68446551d4fc88f874b35bda.md) | 81 | `result-track:68446551d4fc88f874b35bdab68990e9d7a4cc1d5469b6cafa04fb8aabcc9ded` |
| 9 | `def` | [equivSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/equivsignedmeasure--6fe80290771e1bb57afd7174.md) | 86 | `declaration-track:6fe80290771e1bb57afd717451f0b90ffac7d9998df502982e3fd3f71f2b3981` |
| 10 | `def` | [equivSignedMeasureₗ](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/equivsignedmeasure--371ad1e386a367e86f11d231.md) | 100 | `declaration-track:371ad1e386a367e86f11d2316eebb5e13c2d19ef664a2e9496d604e17aed4284` |
| 11 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant25fcdd70c94672c868af6e135371ba3745e4c2a9cf536944d4750562abff1921.lean/declarations/absolutelycontinuous-ennreal-iff--1b9605b8bad5cffd335825dc.md) | 113 | `result-track:1b9605b8bad5cffd335825dc6d9acca8be5fe7fb74799b1a2174898d98c200b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
