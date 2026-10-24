# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventAudit.Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46b7354401615869a74b82e53e64512fddf54ca2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46b7354401615869a74b82e53e64512fddf54ca2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift--9898cd5c926f09d5c57c6d84.md) | 29 | `declaration-track:9898cd5c926f09d5c57c6d8436e0e2d9547a9aa1dd9f04225e5f75911c7b0b80` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift-ispositive--2b8d3ad15f3bca2f12223234.md) | 33 | `result-track:2b8d3ad15f3bca2f12223234ff41222488be24ca6fd9338323ca65d2498f3a4a` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift-coercive--64ebc465b1d33faa6bb23177.md) | 40 | `result-track:64ebc465b1d33faa6bb231774b3cabf2d10bc173861a264fd61d726c7eb03eb0` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift-isunit--cc3fb4682bfe31983d7866a4.md) | 55 | `result-track:cc3fb4682bfe31983d7866a4076a68dcfb15474e7c76342640442bfcbdbfd449` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveresolvent--3951525fdc9eeed285a1c7c8.md) | 66 | `declaration-track:3951525fdc9eeed285a1c7c8b27f1d6d0646b0bb1f957b2d25699313bc83eee8` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift-mul-resolvent--1f1c80fc1a88d3a4a56ec80e.md) | 70 | `result-track:1f1c80fc1a88d3a4a56ec80ebf76fa647389239c1dc15538854f8c8901d1f89f` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/resolvent-mul-positiveshift--29b6084d69796d6228a53419.md) | 75 | `result-track:29b6084d69796d6228a534191d68b2434a4b54461a4c4a46b51fc67948c9291e` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveshift-resolvent-apply--afe0b95d31069acfe8801469.md) | 80 | `result-track:afe0b95d31069acfe88014693b97b375291635ce4f2c0f959710d4bceba4b55b` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveresolvent-norm-le--7f72d6e59c60fc59fabef15f.md) | 87 | `result-track:7f72d6e59c60fc59fabef15f30a84375f1c1b9232bcb6228cf583e8e3d33309e` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveresolvent-ispositive--f27f31156047ef3ffb0c302d.md) | 103 | `result-track:f27f31156047ef3ffb0c302d2cbee1926a60ee17b1d304725c832320fa8554c9` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveresolvent-sub--5423c0ce45b4e1c0d91d068f.md) | 114 | `result-track:5423c0ce45b4e1c0d91d068f67ef918c849f101dd0726262a0507a4e895a754b` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/positiveresolvent-sub-norm-le--4935415393a1a06e25e9c83e.md) | 126 | `result-track:4935415393a1a06e25e9c83e1752db3b2f974bac374021b93c8a1cae76706160` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/regularizedmass--eea562be59a45584fb12124e.md) | 140 | `declaration-track:eea562be59a45584fb12124e090d337859ccb8b03e35b8f13f41622b60e3a72f` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/abs-re-inner-map-le--5f595f5144a68baaa02d4f02.md) | 144 | `result-track:5f595f5144a68baaa02d4f02f2c7a02bacabd9628812f7c9633bf058f7c9862c` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/regularizedmass-sub-abs-le--c57a30d171079c4b758debca.md) | 153 | `result-track:c57a30d171079c4b758debca88eda5c1e8af83f485db02b204d08fbe9dfa741f` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventAudit/Variant6f2315e521de979db062a443918a64bfb9d4279a00ca2408b36b4d554cfd52a1.lean/declarations/reference-regularizedmass-sub-abs-le--9f9eecc7df57f33f4f1fe420.md) | 173 | `result-track:9f9eecc7df57f33f4f1fe4201f2340ccbbd9b811056c155dd3e8a81a69fa6cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
