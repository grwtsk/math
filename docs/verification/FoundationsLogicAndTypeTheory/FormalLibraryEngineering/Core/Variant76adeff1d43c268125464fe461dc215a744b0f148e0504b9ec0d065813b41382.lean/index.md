# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04b82ce9502d0c110ba733da183b6aafc7900224",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04b82ce9502d0c110ba733da183b6aafc7900224`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkupperbound--ac5af9abc08f320a0960d083.md) | 49 | `declaration-track:ac5af9abc08f320a0960d083c7947a01ffe5cdc3bb87ce64924f8c055ec4f67b` |
| 2 | `def` | [checkLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checklowerbound--edf2581a89342ea68e037e58.md) | 54 | `declaration-track:edf2581a89342ea68e037e58ef6302bbd68465e27c101a59305dd5e0984beb5c` |
| 3 | `def` | [checkStrictUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkstrictupperbound--d9bbfe12db86aa2f47322179.md) | 59 | `declaration-track:d9bbfe12db86aa2f4732217979c41971c78f7d5f839f01f75179e1d0774fe5e2` |
| 4 | `def` | [checkStrictLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkstrictlowerbound--8779c5a2913041fff027b461.md) | 64 | `declaration-track:8779c5a2913041fff027b46150e333e723502ce0ef74bb2d0eef972576d3aa7d` |
| 5 | `theorem` | [verify_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-upper-bound--fe64a0fb79ea332dc132f026.md) | 76 | `result-track:fe64a0fb79ea332dc132f026bc7f2e569069f5a1d378687a7f82adbc8b1b85bc` |
| 6 | `theorem` | [verify_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-lower-bound--edbc96deb91a195b1dd115f6.md) | 88 | `result-track:edbc96deb91a195b1dd115f6037c9a7395930d2affb2086943c71a8dab2a2da7` |
| 7 | `theorem` | [verify_strict_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-strict-upper-bound--ca1d30b4112df41e1a922250.md) | 100 | `result-track:ca1d30b4112df41e1a9222507aa7e38063767250c6636100bbf552a657326278` |
| 8 | `theorem` | [verify_strict_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-strict-lower-bound--99dddca5f469bf30d2642255.md) | 112 | `result-track:99dddca5f469bf30d2642255ad33d6719a5ba33083aa75bf0397448d149b6116` |
| 9 | `theorem` | [verify_upper_bound_pt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-upper-bound-pt--f1d2579ccb4609ef0427e16e.md) | 124 | `result-track:f1d2579ccb4609ef0427e16e41ae4bcec4c3ec40bcf0bb7ab348056aa29a23cd` |
| 10 | `theorem` | [verify_lower_bound_pt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-lower-bound-pt--5783d30de1694e8ee319602b.md) | 131 | `result-track:5783d30de1694e8ee319602bbec8ca44f484794a21b22df00289271fdd7dfb38` |
| 11 | `def` | [checkBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkbounds--a09cdb4ccffff9bc7632cc5d.md) | 140 | `declaration-track:a09cdb4ccffff9bc7632cc5d720b9b3d0653501dccf136470a0226ce0b6a2a39` |
| 12 | `theorem` | [verify_bounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-bounds--27b39634ba2e3b35c26e4f2d.md) | 144 | `result-track:27b39634ba2e3b35c26e4f2d75243d6fa80b1ab124242b7ff6fa25be63e252dd` |
| 13 | `def` | [checkPointLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkpointlowerbound--2ed7d4ffe49bd49f31405c7d.md) | 156 | `declaration-track:2ed7d4ffe49bd49f31405c7d1d823f231821e94c0a37aa468e62735f5cd900cc` |
| 14 | `def` | [checkPointUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/checkpointupperbound--e85fb3a523ab00dae8b09d88.md) | 161 | `declaration-track:e85fb3a523ab00dae8b09d8849c6b50243fca604a26d2c4c8bdae2cbcb06ac9c` |
| 15 | `theorem` | [verify_point_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-point-lower-bound--86174d8f81c1ff350c290bcd.md) | 166 | `result-track:86174d8f81c1ff350c290bcdb4b0b342139ec99aab71b936faf829833eaf183a` |
| 16 | `theorem` | [verify_point_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-point-upper-bound--efbe4a420db4e91accb90142.md) | 178 | `result-track:efbe4a420db4e91accb901421710576bdd738e2ee4372402c882565cb2dfdb11` |
| 17 | `theorem` | [verify_argmax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-argmax--ea7206caf4301f2fff310f93.md) | 194 | `result-track:ea7206caf4301f2fff310f93bbef70abb974f4c700c4585a9cb1f44ce04efec4` |
| 18 | `theorem` | [verify_argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant76adeff1d43c268125464fe461dc215a744b0f148e0504b9ec0d065813b41382.lean/declarations/verify-argmin--f25055c5e681b93f3c285be1.md) | 207 | `result-track:f25055c5e681b93f3c285be130fb26ff057bd77a546b1084cd0ec2c196fa4a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
