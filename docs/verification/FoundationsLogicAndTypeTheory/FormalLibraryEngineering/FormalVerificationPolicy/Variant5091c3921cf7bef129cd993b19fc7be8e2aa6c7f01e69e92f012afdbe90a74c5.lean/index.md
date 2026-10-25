# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20075b2e14dc3f27b5916f098134d35c240156f8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20075b2e14dc3f27b5916f098134d35c240156f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.FormalVerificationPolicy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formal_policy_requires_kernel_check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/declarations/formal-policy-requires-kernel-check--112617fda09c873a138ae057.md) | 27 | `result-track:112617fda09c873a138ae057adba1d0c5bc5830230f225ecf7002b8bf9b70811` |
| 2 | `theorem` | [formal_policy_forbids_sorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/declarations/formal-policy-forbids-sorry--930659799130a266f49c917f.md) | 31 | `result-track:930659799130a266f49c917f40e1502a2bd274dd9c026c1ef96ce3f7230200f5` |
| 3 | `theorem` | [formal_policy_forbids_axiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/declarations/formal-policy-forbids-axiom--6f3e2cf1b8a6443c431236d4.md) | 35 | `result-track:6f3e2cf1b8a6443c431236d4f78059cc7f189ee34d085532a3484d28618cbbbf` |
| 4 | `theorem` | [formal_policy_allows_informal_heuristics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalVerificationPolicy/Variant5091c3921cf7bef129cd993b19fc7be8e2aa6c7f01e69e92f012afdbe90a74c5.lean/declarations/formal-policy-allows-informal-heuristics--0031c39699e5e95ff765b511.md) | 39 | `result-track:0031c39699e5e95ff765b511ae1a41a6070767e29ee9c336d8c92ebe13902544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
