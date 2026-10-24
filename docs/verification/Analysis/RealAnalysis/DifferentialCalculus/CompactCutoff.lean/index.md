# Verification target: GRWTSK.Analysis.Calculus.CompactCutoff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "004af19e8575b5d7b6551d846c8a82b16fd6c921",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/CompactCutoff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `004af19e8575b5d7b6551d846c8a82b16fd6c921`.

Source path: `GRWTSK/Analysis/Calculus/CompactCutoff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/CompactCutoff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactCutoff](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff--115987212dcdd0bf8387ee8c.md) | 26 | `declaration-track:115987212dcdd0bf8387ee8cf71a85479bf4c8a9a46e8b2fec337e8df0b6bc1d` |
| 2 | `lemma` | [compactCutoff_smooth](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-smooth--81ec75b871039cfe49c8b85f.md) | 29 | `result-track:81ec75b871039cfe49c8b85f5a9cb54616e2d902b03714a7cb364f61de05a0d9` |
| 3 | `lemma` | [compactCutoff_zero_left](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-zero-left--920c8c7274d75a24621ebd0c.md) | 34 | `result-track:920c8c7274d75a24621ebd0cfca9b4f5e125b44d15dab50a1284ac38637d1e80` |
| 4 | `lemma` | [compactCutoff_zero_right](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-zero-right--6007864d983b6351a7c4bf59.md) | 38 | `result-track:6007864d983b6351a7c4bf5933409bbc747c9623293340f666e542feb51e7a14` |
| 5 | `lemma` | [compactCutoff_tsupport_subset](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-tsupport-subset--cba9b8a2070082901774c0db.md) | 42 | `result-track:cba9b8a2070082901774c0db6100af48cf65421e6a61ddba787e310ac7248597` |
| 6 | `lemma` | [compactCutoff_compact](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-compact--d1fdda50774ec5a02521f474.md) | 53 | `result-track:d1fdda50774ec5a02521f47415fabb45c7e223601a0a05e023381739980c14b9` |
| 7 | `lemma` | [compactCutoff_one](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/compactcutoff-one--f4577d9523b96d0688581994.md) | 56 | `result-track:f4577d9523b96d0688581994a45d28241da1f410cf60a1905d7d1162367f9cc9` |
| 8 | `def` | [schwartzCutoff](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/schwartzcutoff--62a22d1349845aecb368957e.md) | 63 | `declaration-track:62a22d1349845aecb368957eab9253f34dc9c2a762029a1bb678fd6e1296352d` |
| 9 | `lemma` | [schwartzCutoff_apply](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/schwartzcutoff-apply--2007174174c27b1c6c4fb905.md) | 66 | `result-track:2007174174c27b1c6c4fb905f4e216e9eba264a022e91181266af042ff016c8d` |
| 10 | `lemma` | [schwartzCutoff_compact](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/schwartzcutoff-compact--08fe2558107e3cfec37f8f0e.md) | 68 | `result-track:08fe2558107e3cfec37f8f0e9229e9fd2e52966979e1ca5324e0ff1f8a4223ba` |
| 11 | `lemma` | [schwartzCutoff_one](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/schwartzcutoff-one--2fbc47c11a9049dc68f471fa.md) | 71 | `result-track:2fbc47c11a9049dc68f471faa9f62aba1ad768762c3665dde62584735d5e4700` |
| 12 | `theorem` | [coupled_cutoff_active](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/declarations/coupled-cutoff-active--3f4f6d4416d82d6d4c604ede.md) | 75 | `result-track:3f4f6d4416d82d6d4c604eded22776ab45a2af7b24fefe3fe72513f16c12b5cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
