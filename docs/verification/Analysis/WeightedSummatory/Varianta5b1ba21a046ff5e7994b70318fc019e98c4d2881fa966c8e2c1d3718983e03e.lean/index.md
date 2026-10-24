# Verification target: GRWTSK.Analysis.WeightedSummatory.Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a3cc59a18844df6e42b4ba453e14307e014442",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/index.md) · [Full source](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a3cc59a18844df6e42b4ba453e14307e014442`.

Source path: `GRWTSK/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasWeightedSummatoryBound](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/declarations/hasweightedsummatorybound--b999ee2e21e6d1083abd5804.md) | 36 | `declaration-track:b999ee2e21e6d1083abd58048bad30d2a5dbb5f03d0849272688d208955656e6` |
| 2 | `theorem` | [hasWeightedSummatoryBound_congr_norm](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/declarations/hasweightedsummatorybound-congr-norm--d724655fa1b4eb8755d5ecc4.md) | 43 | `result-track:d724655fa1b4eb8755d5ecc4994cedf846ea212d10842dcd62905fa115dd5ea7` |
| 3 | `theorem` | [hasWeightedSummatoryBound_star_iff](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/declarations/hasweightedsummatorybound-star-iff--f6b1f0e110f21883a9e866ad.md) | 63 | `result-track:f6b1f0e110f21883a9e866ad073ac896e88a884574c36374d61c5b4177983abd` |
| 4 | `theorem` | [HasWeightedSummatoryBound.mono_exponent](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/declarations/hasweightedsummatorybound-mono-exponent--99c3dab55c8e4c154603614d.md) | 72 | `result-track:99c3dab55c8e4c154603614d2486dec19c29fb12e1be49fcb5b593dcddc45db9` |
| 5 | `theorem` | [hasWeightedSummatoryBound_mono](../../../../mathematics/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/declarations/hasweightedsummatorybound-mono--864d0274ece43346914d41ed.md) | 90 | `result-track:864d0274ece43346914d41ed8cc4cea41f3604ebd5f5d7c55c545bbe1d514dc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
