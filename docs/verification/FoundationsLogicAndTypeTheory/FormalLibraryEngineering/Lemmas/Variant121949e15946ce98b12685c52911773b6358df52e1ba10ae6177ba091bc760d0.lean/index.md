# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293eab1395ef4a507720449b42e75ef20f9e06b5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293eab1395ef4a507720449b42e75ef20f9e06b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Control.ForInStep.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ForInStep.bind_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bind-done--22084ee241b97a2f833b5433.md) | 18 | `result-track:22084ee241b97a2f833b54338fd3e4f667ddd5300556add3aeefb1962c9139f4` |
| 2 | `theorem` | [ForInStep.bind_yield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bind-yield--470d0ba425bece2f29b6d9f5.md) | 20 | `result-track:470d0ba425bece2f29b6d9f56d8ffcca70ec4f149d139954b586d248334dcdf6` |
| 3 | `theorem` | [ForInStep.run_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-run-done--b3d89c3794503d503bc50d48.md) | 25 | `result-track:b3d89c3794503d503bc50d48615e94ef4793adce69c54ea6801e5863ab3784cc` |
| 4 | `theorem` | [ForInStep.run_yield](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-run-yield--f7100a12fcceee4d0f38fc29.md) | 26 | `result-track:f7100a12fcceee4d0f38fc299487eee14d89726f5f9410b0d432b12443c0177c` |
| 5 | `theorem` | [ForInStep.bindList_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bindlist-nil--8648e0e5ca880c3b943e13e2.md) | 28 | `result-track:8648e0e5ca880c3b943e13e2c155cb6b072ab2208beec3080d1aa64a2d0144dd` |
| 6 | `theorem` | [ForInStep.bindList_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bindlist-cons--314e71a251f4c41ec8b4f5c4.md) | 31 | `result-track:314e71a251f4c41ec8b4f5c448b2a053b0d7abcfa3ef165328013ee787e1a2ca` |
| 7 | `theorem` | [ForInStep.done_bindList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-done-bindlist--0c47288ac07f39cd7a35e7e3.md) | 35 | `result-track:0c47288ac07f39cd7a35e7e3d137601f503d2ad222c38cfcdf0bda2f8f127f39` |
| 8 | `theorem` | [ForInStep.bind_yield_bindList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bind-yield-bindlist--71448f6b0ebbaabdaf6c16fd.md) | 39 | `result-track:71448f6b0ebbaabdaf6c16fd0d8b3be6866a0ddf830231fc8336f21b55950594` |
| 9 | `theorem` | [ForInStep.bind_bindList_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bind-bindlist-assoc--d9ad62c80f53c50f5986fe0a.md) | 43 | `result-track:d9ad62c80f53c50f5986fe0a2ec9d03cbdf535ac31da4578fc4877ae9fd61cfc` |
| 10 | `theorem` | [ForInStep.bindList_cons'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bindlist-cons--d32243538fddc9e73dc9d91f.md) | 48 | `result-track:d32243538fddc9e73dc9d91f8e57d466a90e3c847641af33d74156b024d97617` |
| 11 | `theorem` | [ForInStep.bindList_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant121949e15946ce98b12685c52911773b6358df52e1ba10ae6177ba091bc760d0.lean/declarations/forinstep-bindlist-append--d622b32c9f15b01d6f31fb24.md) | 52 | `result-track:d622b32c9f15b01d6f31fb2462f6b33651c6a0f6464ec098caba9eca5ea005fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
