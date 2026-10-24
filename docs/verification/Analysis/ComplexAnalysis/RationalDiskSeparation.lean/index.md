# Verification target: GRWTSK.Analysis.Complex.RationalDiskSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6758a292b4620508df8cfd45199160849d0e2775",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalDiskSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6758a292b4620508df8cfd45199160849d0e2775`.

Source path: `GRWTSK/Analysis/Complex/RationalDiskSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalDiskSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalComplexQuotient`](../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/admissible--30a7f497f068f0c469af3ccb.md) | 22 | `declaration-track:30a7f497f068f0c469af3ccb428cbe0b4b2f3bb36e232a0899429a1f4ce476e4` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/instance--bc3274bab5d40c610c4bd670.md) | 26 | `declaration-track:bc3274bab5d40c610c4bd670a59f1e85ce224d4b6a3a4c76121cc200839fc3e2` |
| 3 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/verify--6bed5eecc730dda790f1d5d0.md) | 31 | `declaration-track:6bed5eecc730dda790f1d5d0c83b692a7c7f71662e82b253bfc2f56d775b87b2` |
| 4 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/verify-iff--6f4856e34936d507255c7353.md) | 34 | `result-track:6f4856e34936d507255c7353955b560663ac6906867d245809875ad97f78ddec` |
| 5 | `theorem` | [center_gap](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/center-gap--d34cd8065e147ac212971883.md) | 39 | `result-track:d34cd8065e147ac212971883aaf2c6e196bafa3950f4800b994730f2c5d6a7c8` |
| 6 | `theorem` | [abs_im_le_cutoff](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/abs-im-le-cutoff--407ecd5e49d773f4c1991e99.md) | 52 | `result-track:407ecd5e49d773f4c1991e993fa8f1cbb01d0bde15300e69e1d7ec23c501d2fd` |
| 7 | `theorem` | [not_in_two_balls](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/not-in-two-balls--70ac1d9c1245854b682ce51b.md) | 66 | `result-track:70ac1d9c1245854b682ce51b2847863a8a124208c21a90025ccbc40ec72e668e` |
| 8 | `theorem` | [witnesses_injective](../../../../mathematics/Analysis/ComplexAnalysis/RationalDiskSeparation.lean/declarations/witnesses-injective--cb69fe296341a83a80d53c3e.md) | 84 | `result-track:cb69fe296341a83a80d53c3e4b4140759813096408c359ea36474cee830ac5ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
