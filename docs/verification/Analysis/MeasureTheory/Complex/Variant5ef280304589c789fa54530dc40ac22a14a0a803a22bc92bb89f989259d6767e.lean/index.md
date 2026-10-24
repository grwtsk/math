# Verification target: GRWTSK.Analysis.MeasureTheory.Complex.Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6842686decc7cf8eaf80f6e7a74ba6a71d355ac7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6842686decc7cf8eaf80f6e7a74ba6a71d355ac7`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/complexmeasure--fdf630ce8b4c13f27f2dd702.md) | 52 | `declaration-track:fdf630ce8b4c13f27f2dd702f7196ba75b76cac96da02c0dcb888d3b949736ff` |
| 2 | `def` | [re](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/re--850af494cf304ad1430f9aa3.md) | 59 | `declaration-track:850af494cf304ad1430f9aa3d7a9fe2701bbd2eb05dbe2b66a80762c010ba1bf` |
| 3 | `def` | [im](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/im--e7c30f1dbb9c0c16ec417109.md) | 64 | `declaration-track:e7c30f1dbb9c0c16ec4171090d58b2f030c9c6568a3bfb732ecc3666f3fcfd80` |
| 4 | `def` | [_root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.MeasureTheory.SignedMeasure.toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/root-grwtsk-analysis-measuretheory-complexmeasure-variant6060e38c31f9772--6d614ac5fe9ba7960f089fdb.md) | 69 | `declaration-track:6d614ac5fe9ba7960f089fdb8301ab97e5cd1cd4ac4981224daffbbb1dfe524a` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.MeasureTheory.SignedMeasure.toComplexMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/root-grwtsk-analysis-measuretheory-complexmeasure-variant6060e38c31f9772--7a19d3006bec5d6b67e54f1d.md) | 76 | `result-track:7a19d3006bec5d6b67e54f1d17e5b1a836f52ce4da545148aed6617affaf1614` |
| 6 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/tocomplexmeasure-to-signedmeasure--b34495b4f3fa545a75d738f1.md) | 79 | `result-track:b34495b4f3fa545a75d738f1917f92644bcb3b20cb0c085df4e1db86325ef3d1` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.MeasureTheory.SignedMeasure.re_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/root-grwtsk-analysis-measuretheory-complexmeasure-variant6060e38c31f9772--95305607d2703cc0c1468b3e.md) | 82 | `result-track:95305607d2703cc0c1468b3ed8d60deb2d4ad9502abe7f0d0b9c93bfbb69a96b` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ComplexMeasure.Variant6060e38c31f97720f2e80ee009c406a617d45d267cb6a3e78a41999ac9c0cf85.MeasureTheory.SignedMeasure.im_toComplexMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/root-grwtsk-analysis-measuretheory-complexmeasure-variant6060e38c31f9772--72cf7ec7956075a114015c3b.md) | 85 | `result-track:72cf7ec7956075a114015c3be89a3a2df47dafa959817fef5ee794637535840b` |
| 9 | `def` | [equivSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/equivsignedmeasure--15928e10338fb31c5091f618.md) | 90 | `declaration-track:15928e10338fb31c5091f6187a891aaf25248ce2b892e5e0f484c1d9201e9ef9` |
| 10 | `def` | [equivSignedMeasureₗ](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/equivsignedmeasure--0840c18f0d24b034aced279e.md) | 103 | `declaration-track:0840c18f0d24b034aced279e954dd7bf85c8ec13d05e4be7da53cb3ae1fce211` |
| 11 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean/declarations/absolutelycontinuous-ennreal-iff--98122ce1470a7f6b25e73494.md) | 115 | `result-track:98122ce1470a7f6b25e73494427d7246ea1206220fa674c5dfc9551f51a54b19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
