# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Barycenter.Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2726d89dce667fc92f04012a6dcaf585cf36a0b2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2726d89dce667fc92f04012a6dcaf585cf36a0b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subBarycenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/subbarycenter--c702b26d33347c45125e06cf.md) | 24 | `declaration-track:c702b26d33347c45125e06cf24dea5c5e34e66f035b654bed34ae9fa45156309` |
| 2 | `lemma` | [subBarycenter_weights_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/subbarycenter-weights-apply-eq-zero--af1bb9b067c78a02616e61fe.md) | 31 | `result-track:af1bb9b067c78a02616e61fef9ec939a78dd47ec60c99e7e66137a34515bce47` |
| 3 | `lemma` | [subBarycenter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/subbarycenter-singleton--b11433ec97d5037d0e805347.md) | 42 | `result-track:b11433ec97d5037d0e80534775e1671740da4f86954973a7eca9926ae12b1d4c` |
| 4 | `abbrev` | [barycenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/barycenter--9d2b3ed5b3b98576c5820c2b.md) | 48 | `declaration-track:9d2b3ed5b3b98576c5820c2baa3365abc13e1e27d506d56ce3942a69b27426ed` |
| 5 | `lemma` | [weights_barycenter_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/weights-barycenter-apply--c6af5012d2c7359de7f56184.md) | 51 | `result-track:c6af5012d2c7359de7f56184a4da036a01f82787970d09e2148c392c80f345ab` |
| 6 | `lemma` | [barycenter_of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/barycenter-of-unique--93d0805bc04815bcfe2cf043.md) | 55 | `result-track:93d0805bc04815bcfe2cf04369210504cdc2968c5be5d3977df5717c5a4da752` |
| 7 | `lemma` | [barycenter_fin_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant48249c2ec06deb00206fce790786b97419b6f8e1801a63816b47382467433f44.lean/declarations/barycenter-fin-one--5d766431ee187c49940dc76a.md) | 60 | `result-track:5d766431ee187c49940dc76a1228d239a35a40738b8820f024a191e96020fbde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
