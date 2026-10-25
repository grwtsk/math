# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5198f792870929681ea1c0aaacfc937b366ed6fc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5198f792870929681ea1c0aaacfc937b366ed6fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Result` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuationBinding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/continuationbinding--b4db51eba2646be16877e486.md) | 15 | `declaration-track:b4db51eba2646be16877e486b3a87f767987a6b89b2007a94a50fdcf979b4ade` |
| 2 | `structure` | [ContinuationAuthenticator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/continuationauthenticator--437f9b8fb009264fdbe1bddb.md) | 25 | `declaration-track:437f9b8fb009264fdbe1bddb33e4491ee5604086e9f3b16a294a6a342dd57ddc` |
| 3 | `structure` | [AuthenticatedContinuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/authenticatedcontinuation--6b2f0cf2b913b684d7072eb3.md) | 36 | `declaration-track:6b2f0cf2b913b684d7072eb33c98f1c075f9453643f368510dcee8e48f97dc57` |
| 4 | `abbrev` | [AuthenticatedToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/authenticatedtoken--4def0139d4f69c102eeb6334.md) | 43 | `declaration-track:4def0139d4f69c102eeb633451adb50c510fc7aae6aa1fadb2f81e49b5e0d679` |
| 5 | `def` | [ContinuationAuthenticator.issue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/continuationauthenticator-issue--99ab5b6cb157cbd8348a7496.md) | 47 | `declaration-track:99ab5b6cb157cbd8348a7496c02dcff926213fad9942796da63484a594dfb70d` |
| 6 | `theorem` | [authenticated_binding_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variant170870aa23d6543d0c25f6cb0008e9b56482a55268ffb82244d7c3bfc79905d5.lean/declarations/authenticated-binding-unique--50497e9e3f9b12f1fdb573df.md) | 56 | `result-track:50497e9e3f9b12f1fdb573df7c42bdf72bd90e5875a6999c0e9f16275e39e3a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
