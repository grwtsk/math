# Verification target: GRWTSK.Analysis.CompletelyPositiveMap.Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7b30e4f8da6e5d9ffc23154fb4874d984bfcb2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/index.md) · [Full source](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7b30e4f8da6e5d9ffc23154fb4874d984bfcb2`.

Source path: `GRWTSK/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.PositiveLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.CStarMatrix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletelyPositiveMap](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/completelypositivemap--7102cc2f7dcf5220965e0658.md) | 47 | `declaration-track:7102cc2f7dcf5220965e06587ba07b9452f50fc6074e4c586d84aad5cc61d927` |
| 2 | `class` | [CompletelyPositiveMapClass](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/completelypositivemapclass--ca24ffc7749e2607192a8b97.md) | 62 | `declaration-track:ca24ffc7749e2607192a8b97821e9d1ef1023c485097faface699c7ce991ae92` |
| 3 | `def` | [toCompletelyPositiveLinearMap](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/tocompletelypositivelinearmap--122155f0a2ea9f75ffeaafba.md) | 80 | `declaration-track:122155f0a2ea9f75ffeaafba4455aa410b39c4accf6f976a6bf3cf60c24cef74` |
| 4 | `instance` | [instCoeToCompletelyPositiveMap](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instcoetocompletelypositivemap--0145317661ce2ee5f2575c92.md) | 86 | `declaration-track:0145317661ce2ee5f2575c92bbe577e60033ec5a2dc345813c43a73adc8c5f73` |
| 5 | `lemma` | [_root_.OrderHomClass.of_map_cstarMatrix_nonneg](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/root-orderhomclass-of-map-cstarmatrix-nonneg--bde8ff75a94fe369c5ea28bb.md) | 92 | `result-track:bde8ff75a94fe369c5ea28bb0197e262651754bfd9448e2205e0e722ed1d02c9` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instance--4a63f124e9b2fc8637ffcc0d.md) | 103 | `declaration-track:4a63f124e9b2fc8637ffcc0d703847b3eb87954791f2e5e998c56e1e44201cb8` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instance--1037a42b168d712eff257002.md) | 114 | `declaration-track:1037a42b168d712eff2570026e9a657cf408550318fac25c9b482f36f1fd2b19` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instance--cc62bc8eb3ea30df6e2c8c25.md) | 123 | `declaration-track:cc62bc8eb3ea30df6e2c8c25e4a1be0929f4e579bf9b99dc43ce5583a09663cd` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instance--f0448a2e1ff1b891a502f18b.md) | 127 | `declaration-track:f0448a2e1ff1b891a502f18b090a8965d23a78cf8652fd4b2d8d3324483fc679` |
| 10 | `lemma` | [map_cstarMatrix_nonneg](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/map-cstarmatrix-nonneg--96fff469b6756f55913a0412.md) | 131 | `result-track:96fff469b6756f55913a0412d5fb7e1cd2f3404bff0d56b4773378cc1703296f` |
| 11 | `instance` | [instCompletelyPositiveMapClass](../../../../mathematics/Analysis/CompletelyPositiveMap/Variant043489e343e1c5724e9ce11ab3c929fa94898c55f65d78db73d2e3dfc048ccee.lean/declarations/instcompletelypositivemapclass--eb277c1f7534c669ac1589cd.md) | 155 | `declaration-track:eb277c1f7534c669ac1589cd1590eab2e6d575c7e1b938bf1d5c4f2665857c22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
