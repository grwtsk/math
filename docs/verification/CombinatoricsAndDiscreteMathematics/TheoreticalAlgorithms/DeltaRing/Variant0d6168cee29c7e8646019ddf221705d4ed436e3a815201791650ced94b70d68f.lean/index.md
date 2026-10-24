# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeltaRing.Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab320fc595ef35220691f687f38b1525ec7c4a1c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab320fc595ef35220691f687f38b1525ec7c4a1c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingOps](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/ringops--559a2f3573d4791f8b4dedf3.md) | 21 | `declaration-track:559a2f3573d4791f8b4dedf355a9fbb979c0b1bd67e7a933ff372e0740041e57` |
| 2 | `def` | [natMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/natmul--8356b68d8aa1bab0552f4172.md) | 32 | `declaration-track:8356b68d8aa1bab0552f4172e920c6a2d7dc45d3bd45afe65e3e674a1d2da741` |
| 3 | `def` | [pow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/pow--0484ba1432f2ba5f87cdabb0.md) | 36 | `declaration-track:0484ba1432f2ba5f87cdabb0e2979f421f1211fbde4ee568849a6342cfbb2bac` |
| 4 | `structure` | [DeltaRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/deltaring--c02cad6472dcecdc0add20fb.md) | 43 | `declaration-track:c02cad6472dcecdc0add20fb6ace7703142ee44373c292395eecea49f37b4fd5` |
| 5 | `theorem` | [frobenius_lift_formula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/frobenius-lift-formula--1f2226b6545a99127f9753c6.md) | 72 | `result-track:1f2226b6545a99127f9753c6eea0a33de506dc0dcf3ade0b91520315b8a9787f` |
| 6 | `theorem` | [delta_structure_gives_frobenius_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/delta-structure-gives-frobenius-lift--56e83a1173a8a19cc0e1bfad.md) | 79 | `result-track:56e83a1173a8a19cc0e1bfadccf7243ea228c39c25da91d084244b0966d66d37` |
| 7 | `structure` | [DeltaRingHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/deltaringhom--476b3e373a9d90175b182a0c.md) | 87 | `declaration-track:476b3e373a9d90175b182a0c1cd1aee8f8f94488bac4c6529b2d6e0bbea38fb6` |
| 8 | `def` | [unitDeltaRing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeltaRing/Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f.lean/declarations/unitdeltaring--f8447e32ff898e2b62b37540.md) | 104 | `declaration-track:f8447e32ff898e2b62b375407baeb357af7c099667431186bf6b60fc976444df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
