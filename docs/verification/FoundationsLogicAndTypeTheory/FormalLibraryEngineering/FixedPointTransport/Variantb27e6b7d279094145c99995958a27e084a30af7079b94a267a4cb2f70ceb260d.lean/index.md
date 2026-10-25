# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTransport.Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0e2bf0e8b986272ac22500af77c1171cf03c25",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0e2bf0e8b986272ac22500af77c1171cf03c25`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PropertyTransport` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.DiscreteFixedPoint` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactFixedPointProperty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/declarations/exactfixedpointproperty--abdeeca8b38f7282b64d924c.md) | 23 | `declaration-track:abdeeca8b38f7282b64d924c1aa9caa89a5e4970cce1db9e405f9087ba111fbc` |
| 2 | `structure` | [OperatorPathNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/declarations/operatorpathnaturality--e27bc2d833de76c6fd2845df.md) | 36 | `declaration-track:e27bc2d833de76c6fd2845dfff89389f19fd3b55560b4b0d3ad1bf9348c61ec5` |
| 3 | `theorem` | [fixedPointNaturality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/declarations/fixedpointnaturality--a8ce5ed6b03cd0a273e727cc.md) | 56 | `result-track:a8ce5ed6b03cd0a273e727cc15bbf5ed1b759832431f409f914c8c94560cb696` |
| 4 | `def` | [transportFixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/declarations/transportfixedpoint--10d53d8a07a51b2ecf3781f4.md) | 74 | `declaration-track:10d53d8a07a51b2ecf3781f4536aad06622e5473a643f654981c5c2d71e8a159` |
| 5 | `theorem` | [transportFixedPoint_point](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPointTransport/Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d.lean/declarations/transportfixedpoint-point--bfb2dc6319f65c38001daa9b.md) | 86 | `result-track:bfb2dc6319f65c38001daa9bbcde95ac6f7067266a9ce7ab4ea575038d2e259b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
