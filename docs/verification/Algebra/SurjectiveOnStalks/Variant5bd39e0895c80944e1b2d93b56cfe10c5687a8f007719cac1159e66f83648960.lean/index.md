# Verification target: GRWTSK.Algebra.SurjectiveOnStalks.Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96ab2e3141c2da1d6157186f67d7df74bd91d71c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/index.md) · [Full source](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96ab2e3141c2da1d6157186f67d7df74bd91d71c`.

Source path: `GRWTSK/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AtPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SurjectiveOnStalks](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks--ea9838859bb865a25d18b256.md) | 31 | `declaration-track:ea9838859bb865a25d18b256f83e6a3df15ffd9645c8eae5389107163990c053` |
| 2 | `lemma` | [surjective_localRingHom_iff](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjective-localringhom-iff--33614ef7da790033416b95f4.md) | 39 | `result-track:33614ef7da790033416b95f43a7f2a8e284403dd77819fa67235aafb0d8bc577` |
| 3 | `lemma` | [surjectiveOnStalks_iff_forall_ideal](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-iff-forall-ideal--96fdf3a1b6c86b840ed54d9a.md) | 63 | `result-track:96fdf3a1b6c86b840ed54d9a3eb15decd2a1affeba336dca09bf333ac4515176` |
| 4 | `lemma` | [surjectiveOnStalks_iff_forall_maximal](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-iff-forall-maximal--ac4a3c68ab03f7846de2bebf.md) | 72 | `result-track:ac4a3c68ab03f7846de2bebf2a2b7eb15dd0a1919d7a18aced5a7504eb68666e` |
| 5 | `lemma` | [surjectiveOnStalks_iff_forall_maximal'](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-iff-forall-maximal--9334fc6d34fb08847ad8148c.md) | 82 | `result-track:9334fc6d34fb08847ad8148cf97a6d6403cb41afd8fdbe8f44970ed8dcdc9fbe` |
| 6 | `lemma` | [surjectiveOnStalks_of_exists_div](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-of-exists-div--06790806df90e88a2e28107c.md) | 87 | `result-track:06790806df90e88a2e28107ce7222cda02df4e6185aba4fcbef05fd8a50791eb` |
| 7 | `lemma` | [surjectiveOnStalks_of_surjective](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-of-surjective--f64dc529d715962d5464730f.md) | 93 | `result-track:f64dc529d715962d5464730f2c3b0a61d2f1706f1807109b118b050be2f013e8` |
| 8 | `lemma` | [SurjectiveOnStalks.comp](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-comp--d78c0de2cbfc33dbbfbbbed9.md) | 99 | `result-track:d78c0de2cbfc33dbbfbbbed9d90f6894b5af6ad28f34ba4621084dadb7f5dfbe` |
| 9 | `lemma` | [SurjectiveOnStalks.of_comp](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-of-comp--95554694491d557083b7fa28.md) | 105 | `result-track:95554694491d557083b7fa28449579140f5d10d4f3f807a062d9b196142563e0` |
| 10 | `lemma` | [SurjectiveOnStalks.exists_mul_eq_tmul](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-exists-mul-eq-tmul--4f44170b523595eaeb5c7676.md) | 122 | `result-track:4f44170b523595eaeb5c76766ee93d07cc09e72d7c76052d40f1509de3b4b43c` |
| 11 | `lemma` | [surjectiveOnStalks_of_isLocalization](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-of-islocalization--01a3dff4b88ec904f647a3a2.md) | 150 | `result-track:01a3dff4b88ec904f647a3a217fccda72e7cdfdf269c5b19f6e0fd43dee97882` |
| 12 | `lemma` | [SurjectiveOnStalks.baseChange](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-basechange--92cbeae71be5e8393bb37ce4.md) | 157 | `result-track:92cbeae71be5e8393bb37ce438606e43da4d6c8146a01c38dc1aa62417f4fea0` |
| 13 | `lemma` | [surjectiveOnStalks_iff_of_isLocalHom](../../../../mathematics/Algebra/SurjectiveOnStalks/Variant5bd39e0895c80944e1b2d93b56cfe10c5687a8f007719cac1159e66f83648960.lean/declarations/surjectiveonstalks-iff-of-islocalhom--2cd9df81ec3d1c7b725d30ec.md) | 177 | `result-track:2cd9df81ec3d1c7b725d30ec284afe31360ab23ca9c111bac0a64e61159279b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
