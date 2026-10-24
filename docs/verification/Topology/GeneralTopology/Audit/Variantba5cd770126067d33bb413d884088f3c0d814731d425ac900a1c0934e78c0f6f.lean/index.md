# Verification target: GRWTSK.Topology.GeneralTopology.Audit.Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "767d9f48acd35fd989535c92582e8043569065a7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `767d9f48acd35fd989535c92582e8043569065a7`.

Source path: `GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagnosticExponent](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/diagnosticexponent--75c6151788388bce749d2e81.md) | 35 | `declaration-track:75c6151788388bce749d2e814ea4240b7d6828aaa6d0c6c893deda116249e496` |
| 2 | `def` | [testPoint](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/testpoint--9396807c82f358681a2a23aa.md) | 39 | `declaration-track:9396807c82f358681a2a23aa6126331251d4df36c30db2109681455ed47824c0` |
| 3 | `theorem` | [diagnostic_exponent_test_point](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/diagnostic-exponent-test-point--c51f07e9df3ba187f3bd245f.md) | 42 | `result-track:c51f07e9df3ba187f3bd245fbb67eacd26a977601112fc3c99b5ce37cc97272e` |
| 4 | `theorem` | [diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/diagnostic-exponent-test-point-div--184b11560e72a23e391a134f.md) | 62 | `result-track:184b11560e72a23e391a134ffc6ffe1bd23d3a84f1fc6817a978a76077a9e8f9` |
| 5 | `theorem` | [tendsto_diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/tendsto-diagnostic-exponent-test-point-div--93d5dffbeef0eba2121cee75.md) | 81 | `result-track:93d5dffbeef0eba2121cee75a73218fe45742fbedc2c135035b3e5e7f03e76a8` |
| 6 | `theorem` | [tendsto_diagnostic_exponent_test_point_atTop](../../../../../mathematics/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/declarations/tendsto-diagnostic-exponent-test-point-attop--2551e0e482dc466b171f7b93.md) | 100 | `result-track:2551e0e482dc466b171f7b93d90830c7b4c336a7446b24416d54e7cdec22498d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
