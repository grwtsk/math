# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9a3f10942b4aa6b17ab9d747085267f9fa72291",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9a3f10942b4aa6b17ab9d747085267f9fa72291`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Definitions.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.RingTheory.Radical.NatInt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical--e1f28382b251d1d5a53e51e0.md) | 14 | `declaration-track:e1f28382b251d1d5a53e51e05de8b7cbab6ae9b96f5af965f80060f823be8bc0` |
| 2 | `theorem` | [radical_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical-pos--883cd06cc1fc4f1f484bff83.md) | 19 | `result-track:883cd06cc1fc4f1f484bff831b32c2d5020206f4b25ba39478e1796fcea6af41` |
| 3 | `theorem` | [radical_two_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical-two-le--90801e886f1737c23ae8bef2.md) | 21 | `result-track:90801e886f1737c23ae8bef23968b007bbb40709f597e2e9589d903bc87e60c2` |
| 4 | `theorem` | [radical_eq_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical-eq-product--c5bd4558fb0f5977d08b0903.md) | 29 | `result-track:c5bd4558fb0f5977d08b0903283f6a29ca88df0983e50bfb3883ade7b8ceb1d6` |
| 5 | `theorem` | [radical_dvd_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical-dvd-product--a96cfb5b4d61540d686dff8f.md) | 38 | `result-track:a96cfb5b4d61540d686dff8f8c1e0d9f2462a9bd9956391892493e59f1dd616d` |
| 6 | `theorem` | [radical_le_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Radical.lean/declarations/radical-le-product--40873036be50305f93da53d9.md) | 41 | `result-track:40873036be50305f93da53d9c96a5c991bcc291a63e44b2f21a8487c8a288eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
