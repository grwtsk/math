# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.81dd3af7f8988a70dc52ActualFullKappaNumericBounds.Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98fa5b5fc58e3a4c1ae1863f42fbe24561282ee5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98fa5b5fc58e3a4c1ae1863f42fbe24561282ee5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceFullPositiveKappa` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualUpperCoefficientMoment_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualuppercoefficientmoment-abs-le--7c8ea6e3e9a74f5bb5163052.md) | 21 | `result-track:7c8ea6e3e9a74f5bb5163052f650939e207b47d1ceaae7bc8540c2f745f37770` |
| 2 | `theorem` | [actualUpperKappa_succ_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualupperkappa-succ-abs-le--b442e45dda25ab6c2cf55a7f.md) | 40 | `result-track:b442e45dda25ab6c2cf55a7f4195ce696ab230d0c5b492f8e29b29490a6d3d4b` |
| 3 | `theorem` | [actualFullPositiveKappa_succ_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualfullpositivekappa-succ-abs-le--2740b1a4318b7855e3cfe4ed.md) | 65 | `result-track:2740b1a4318b7855e3cfe4ed0acf50c4df810fdc3ca88a6a9aeb6972f5f750ac` |
| 4 | `theorem` | [actualFullPositiveKappa_one_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualfullpositivekappa-one-bounds--41c952facb9f8994d0b66787.md) | 84 | `result-track:41c952facb9f8994d0b6678754ddb6296d6462cfb80fdebd11c04ce55d887158` |
| 5 | `theorem` | [actualFullPositiveKappa_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualfullpositivekappa-one-pos--cdfa32e5c61f4e0046904393.md) | 94 | `result-track:cdfa32e5c61f4e00469043930d93b5316971503b02ebb5e8a00f41f9fbf142a7` |
| 6 | `theorem` | [actualFullPositiveKappa_four_abs_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variantfedea2e4ee848d9984c10966cb1e79716f491a950ff52716bc03c05577a88516.lean/declarations/actualfullpositivekappa-four-abs-bounds--9bd5922c41829e56e4174eb6.md) | 98 | `result-track:9bd5922c41829e56e4174eb616dbebefb678fb699ad7c96f7f7aa7c0e7723ace` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
