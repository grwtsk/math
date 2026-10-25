# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharge.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd57fbae4bac643159a262d458002a23a7b9c39c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd57fbae4bac643159a262d458002a23a7b9c39c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Problem` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/declarations/dischargekind--0252f446d599a651efb1e9a1.md) | 7 | `declaration-track:0252f446d599a651efb1e9a1bed6cbe67b35dd43f520492f7b3efafa87daf21b` |
| 2 | `structure` | [DischargeCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/declarations/dischargecandidate--bf23129c15b142fb3daee43e.md) | 21 | `declaration-track:bf23129c15b142fb3daee43e40716291e2c5b3de42088dcc1dfe0765967708ee` |
| 3 | `def` | [acceptsDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/declarations/acceptsdischarge--6c6de14230e4d1303fae26b6.md) | 27 | `declaration-track:6c6de14230e4d1303fae26b6bdd93e4a2fa6bc3fdc9b260536099187fe8e74fc` |
| 4 | `structure` | [AcceptedDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/declarations/accepteddischarge--5db65cd7c3a0684e6e5e0f94.md) | 32 | `declaration-track:5db65cd7c3a0684e6e5e0f94e215426eb9c23461d24ba37efe44078bb742624c` |
| 5 | `theorem` | [discharge_requires_exact_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1.lean/declarations/discharge-requires-exact-certificate--bb7a088d457382be05d73ac1.md) | 38 | `result-track:bb7a088d457382be05d73ac1d6ec5319f0441fcea4927cddfd2bd50afe7351d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
