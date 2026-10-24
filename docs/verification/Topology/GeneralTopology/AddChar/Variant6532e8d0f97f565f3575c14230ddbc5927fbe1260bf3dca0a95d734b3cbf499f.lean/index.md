# Verification target: GRWTSK.Topology.GeneralTopology.AddChar.Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeb2afe31832f0fb702180fc19b9c8b34da0741f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeb2afe31832f0fb702180fc19b9c8b34da0741f`.

Source path: `GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.MahlerBasis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.AddChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AddChar.tendsto_eval_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/addchar-tendsto-eval-one-sub-pow--3e1daf7533a73f009b9b8500.md) | 54 | `result-track:3e1daf7533a73f009b9b8500306829876282de9ed4f581a949fdaf3cf77d212d` |
| 2 | `def` | [addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/addchar-of-value-at-one--48dccb0cd042a1454072d77b.md) | 63 | `declaration-track:48dccb0cd042a1454072d77b55bb90ab7b9aff4b9e6b44ef5e32b5053f607424` |
| 3 | `lemma` | [continuous_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuous-addchar-of-value-at-one--efb8a2eb73c88b6aaa67f7f7.md) | 84 | `result-track:efb8a2eb73c88b6aaa67f7f76886af32ec4e316b34548942ecb7a8485677f2ae` |
| 4 | `lemma` | [coe_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/coe-addchar-of-value-at-one--53e20acfd9f26cd24a0ee985.md) | 88 | `result-track:53e20acfd9f26cd24a0ee985f1c2bb3411f3d38b68d32676a2c79765dc4b845a` |
| 5 | `lemma` | [addChar_of_value_at_one_def](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/addchar-of-value-at-one-def--7a145b41becc000d15f89d97.md) | 93 | `result-track:7a145b41becc000d15f89d97f426f1dcfb27e4fc45df034f058d44628fafe634` |
| 6 | `lemma` | [eq_addChar_of_value_at_one](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/eq-addchar-of-value-at-one--b4a658775d3515cb79e7a062.md) | 99 | `result-track:b4a658775d3515cb79e7a062d0258f4a0cfb5f5fde56894bf2ec04cb35fb1c00` |
| 7 | `def` | [continuousAddCharEquiv](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv--4032cfe287cd13ca3dcc708e.md) | 106 | `declaration-track:4032cfe287cd13ca3dcc708e0d193d035c303a6272757d47e8139b7f08fa6b72` |
| 8 | `lemma` | [continuousAddCharEquiv_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv-apply--ff78e7c550294237e43b8277.md) | 113 | `result-track:ff78e7c550294237e43b827742fc0a5cbb5126f8d8409b9a15d17a822f08e8c6` |
| 9 | `lemma` | [continuousAddCharEquiv_symm_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv-symm-apply--08a24c381bf13f385cadb4d1.md) | 117 | `result-track:08a24c381bf13f385cadb4d1dd30c3219045aa78acc7c481b1c56e38959157f3` |
| 10 | `def` | [continuousAddCharEquiv_of_norm_mul](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv-of-norm-mul--b5b86e2e1f70d06fabb50727.md) | 128 | `declaration-track:b5b86e2e1f70d06fabb507276cc388555486925f12ccf3a802b832e2578dc801` |
| 11 | `lemma` | [continuousAddCharEquiv_of_norm_mul_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv-of-norm-mul-apply--890730fc145dfce90e87271b.md) | 133 | `result-track:890730fc145dfce90e87271b49c9ac5204eb859cd874b93cfac0716b8787c029` |
| 12 | `lemma` | [continuousAddCharEquiv_of_norm_mul_symm_apply](../../../../../mathematics/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/declarations/continuousaddcharequiv-of-norm-mul-symm-apply--8a9017df6d7b9e5756e8cbc9.md) | 137 | `result-track:8a9017df6d7b9e5756e8cbc92fb00bcad959a7b9df43beeb7654f4ca83639de9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
