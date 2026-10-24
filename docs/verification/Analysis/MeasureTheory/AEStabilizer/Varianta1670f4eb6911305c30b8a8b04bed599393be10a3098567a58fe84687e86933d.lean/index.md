# Verification target: GRWTSK.Analysis.MeasureTheory.AEStabilizer.Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f3920d2a36abe12f3f113ec3704ac71e21b130b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f3920d2a36abe12f3f113ec3704ac71e21b130b`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/aestabilizer--ac13e849e5870e64b64bc5c1.md) | 40 | `declaration-track:ac13e849e5870e64b64bc5c1f21dcc751f33e6db1b6b12348aca89ae9f9baef4` |
| 2 | `lemma` | [mem_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/mem-aestabilizer--2cfbde004b3bf4794e44fe6a.md) | 51 | `result-track:2cfbde004b3bf4794e44fe6affc7ed6bcc1a5dbcee3313760e22f850c2a400c9` |
| 3 | `lemma` | [stabilizer_le_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/stabilizer-le-aestabilizer--1a2c548bb6d34960aa0c781c.md) | 54 | `result-track:1a2c548bb6d34960aa0c781cbb1d2d76578184829af71c8e3c356ce34d073a1d` |
| 4 | `lemma` | [aestabilizer_empty](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/aestabilizer-empty--6b928405dc807d729c519284.md) | 59 | `result-track:6b928405dc807d729c519284ab683d32d9b26e7fa220eea838342178474a8aa5` |
| 5 | `lemma` | [aestabilizer_univ](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/aestabilizer-univ--fce164ec900600666fc933d4.md) | 62 | `result-track:fce164ec900600666fc933d4081ba08104c0379acab4215fef9abb541f3da69a` |
| 6 | `lemma` | [aestabilizer_congr](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/aestabilizer-congr--1583db7f51615137c0292b0d.md) | 65 | `result-track:1583db7f51615137c0292b0d05ad4019c3475d8bb23967e1fda36800e458f57d` |
| 7 | `lemma` | [aestabilizer_of_aeconst](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/aestabilizer-of-aeconst--306e1def8d1ce8dd1e67a039.md) | 69 | `result-track:306e1def8d1ce8dd1e67a039d53f16d49ded7454a5ffa50363e29fc5d22a8768` |
| 8 | `theorem` | [smul_ae_eq_self_of_mem_zpowers](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/smul-ae-eq-self-of-mem-zpowers--4bf9715baf2efc7f9aaec83f.md) | 83 | `result-track:4bf9715baf2efc7f9aaec83fff85b6dad0e3ab6a676fb65ca58c81f7948c9160` |
| 9 | `theorem` | [inv_smul_ae_eq_self](../../../../../mathematics/Analysis/MeasureTheory/AEStabilizer/Varianta1670f4eb6911305c30b8a8b04bed599393be10a3098567a58fe84687e86933d.lean/declarations/inv-smul-ae-eq-self--dbbb33427af8514f9f6a3551.md) | 89 | `result-track:dbbb33427af8514f9f6a3551f239d3d047af7fb0d6203791275a091e9c40daf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
