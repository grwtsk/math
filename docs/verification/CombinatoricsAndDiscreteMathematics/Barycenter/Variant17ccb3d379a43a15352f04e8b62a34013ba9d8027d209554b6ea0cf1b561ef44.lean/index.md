# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Barycenter.Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f0e4b31e805781bee1e5c74b84361acb1229646",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f0e4b31e805781bee1e5c74b84361acb1229646`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean.json)

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
| 1 | `def` | [subBarycenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/subbarycenter--8fa6e3edafed2c624ab0717d.md) | 32 | `declaration-track:8fa6e3edafed2c624ab0717d5c530ebc3c8dbb9403aa0196e1d7334774d3fec7` |
| 2 | `lemma` | [subBarycenter_weights_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/subbarycenter-weights-apply-eq-zero--4c1da360b34baa8fb32b4083.md) | 39 | `result-track:4c1da360b34baa8fb32b408398245a1976e172453549c1096ad809fe181332d9` |
| 3 | `lemma` | [subBarycenter_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/subbarycenter-singleton--d594605a111ab68b3e3bb67c.md) | 50 | `result-track:d594605a111ab68b3e3bb67c8987affb7a046be099f19526d5817a6e17adad16` |
| 4 | `abbrev` | [barycenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/barycenter--e1ae87981ba9e9aa396e509a.md) | 56 | `declaration-track:e1ae87981ba9e9aa396e509a070beccde76461db801590e002159172ec60b7d5` |
| 5 | `lemma` | [weights_barycenter_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/weights-barycenter-apply--2478ab1ca0329bb0d23d11a1.md) | 59 | `result-track:2478ab1ca0329bb0d23d11a1f3f75687bbfcce95bb54cfb4c742ed38510de1fe` |
| 6 | `lemma` | [barycenter_of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/barycenter-of-unique--1f51d40f9d72da6ba157139a.md) | 63 | `result-track:1f51d40f9d72da6ba157139acfe471688e3dbd80cdc6f5e53f71834b22c78ab9` |
| 7 | `lemma` | [barycenter_fin_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Barycenter/Variant17ccb3d379a43a15352f04e8b62a34013ba9d8027d209554b6ea0cf1b561ef44.lean/declarations/barycenter-fin-one--7224f803871282b8d13461e4.md) | 68 | `result-track:7224f803871282b8d13461e451d7ec8bf2dcedc2e2ce7cc89775ad48e88fe6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
