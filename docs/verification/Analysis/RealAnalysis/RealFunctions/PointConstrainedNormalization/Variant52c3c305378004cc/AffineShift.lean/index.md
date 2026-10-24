# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.PointConstrainedNormalization.Variant52c3c305378004cc.AffineShift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a67592f39c07cf6fae041bbb77ea10b3d4755a66",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a67592f39c07cf6fae041bbb77ea10b3d4755a66`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.BaseCaseLFunction` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineCriticalShift](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean/declarations/affinecriticalshift--dd507f7736aa670e9f6fb9d1.md) | 46 | `declaration-track:dd507f7736aa670e9f6fb9d14ece9f915515ed013d8a8c750bcffd9bb2612edc` |
| 2 | `def` | [AffineCriticalShift.normalize](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean/declarations/affinecriticalshift-normalize--e6b218caa887a91bd6b14a4c.md) | 52 | `declaration-track:e6b218caa887a91bd6b14a4c309ee6f523684aac4152d31df76adfe332278cdc` |
| 3 | `theorem` | [affine_shift_sends_raw_to_spectral](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/PointConstrainedNormalization/Variant52c3c305378004cc/AffineShift.lean/declarations/affine-shift-sends-raw-to-spectral--52028be8b57d9de982adee28.md) | 58 | `result-track:52028be8b57d9de982adee2827346eb34dc87f3cae4d348921769b215d8af088` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
