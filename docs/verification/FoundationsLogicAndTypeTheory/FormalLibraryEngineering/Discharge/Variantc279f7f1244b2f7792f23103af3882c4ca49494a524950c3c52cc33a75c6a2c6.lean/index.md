# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharge.Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7994ce6145d16ae00d0847abfd2f1c6be28ec813",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7994ce6145d16ae00d0847abfd2f1c6be28ec813`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Problem` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/declarations/dischargekind--3842230b502f0a74cb8e479c.md) | 15 | `declaration-track:3842230b502f0a74cb8e479ca535a3c9a3eb11408103ca18a07bddecb7f7b35e` |
| 2 | `structure` | [DischargeCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/declarations/dischargecandidate--6c73a41baa447d55a0cfbf07.md) | 29 | `declaration-track:6c73a41baa447d55a0cfbf072bbf3d12fb0cc85bc9857ad7f087d7f8c4afda11` |
| 3 | `def` | [acceptsDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/declarations/acceptsdischarge--6c6667de2dc3bc490544365a.md) | 35 | `declaration-track:6c6667de2dc3bc490544365a4d37af7b6a06e2b6b9d754024e7ee36d6734f056` |
| 4 | `structure` | [AcceptedDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/declarations/accepteddischarge--fb079084d189f489706b3dc6.md) | 40 | `declaration-track:fb079084d189f489706b3dc6189a46210c740111f302ae92a7f07f70b946c51e` |
| 5 | `theorem` | [discharge_requires_exact_certificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharge/Variantc279f7f1244b2f7792f23103af3882c4ca49494a524950c3c52cc33a75c6a2c6.lean/declarations/discharge-requires-exact-certificate--5015e1ad34b865e29a130c96.md) | 46 | `result-track:5015e1ad34b865e29a130c96610e3ef6f283a416f099330351021a243e326a60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
