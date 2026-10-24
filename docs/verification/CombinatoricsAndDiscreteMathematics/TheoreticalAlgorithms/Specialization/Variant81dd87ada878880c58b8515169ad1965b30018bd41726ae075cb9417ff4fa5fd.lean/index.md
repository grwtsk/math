# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Specialization.Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f944634974d1b1a0820cb89c32a20ea64ca7a7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f944634974d1b1a0820cb89c32a20ea64ca7a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Template` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClassPrimeFactorization](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/declarations/classprimefactorization--b80e5514d12cf9e396489bda.md) | 15 | `declaration-track:b80e5514d12cf9e396489bda5a9cb1e194d662b6da34c9201085658579fdda44` |
| 2 | `theorem` | [ClassPrimeFactorization.class_binding_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/declarations/classprimefactorization-class-binding-deterministic--8dc0dfbcc97ef76317497a38.md) | 27 | `result-track:8dc0dfbcc97ef76317497a383df9b423226f6ef324083d5c149df2a002b1d6d4` |
| 3 | `structure` | [PrimeBinding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/declarations/primebinding--46ede0b209c67443cdcf3def.md) | 39 | `declaration-track:46ede0b209c67443cdcf3def0148f1d68ff931a5771caa0a3dde0649fc6fdd8f` |
| 4 | `def` | [PrimeBinding.SortCorrect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/declarations/primebinding-sortcorrect--4e41e0b1f2428292ea06652f.md) | 44 | `declaration-track:4e41e0b1f2428292ea06652f520e3911160c5a42733841669eae6e882bd5a842` |
| 5 | `def` | [PrimeBinding.BoundaryCorrect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean/declarations/primebinding-boundarycorrect--d0703aaa0ef60d5c451c4356.md) | 47 | `declaration-track:d0703aaa0ef60d5c451c4356f3bc434fc4569ff0cbba63633c150807d7317a9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
