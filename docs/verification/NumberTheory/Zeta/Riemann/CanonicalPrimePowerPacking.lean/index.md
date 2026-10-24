# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117142b9f17a4a5bcda5dcbf8b462d3cee1806dc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117142b9f17a4a5bcda5dcbf8b462d3cee1806dc`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalPrimePowerPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/canonicalprimepowerpackingsequence--d98ea56fe70ab22d1906972c.md) | 30 | `declaration-track:d98ea56fe70ab22d1906972cfe8efd3b1b5a4eb288f5c024c6f85f4eeb93f954` |
| 2 | `theorem` | [source_eq_event_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/source-eq-event-value--1f70ebb7ee2fa71f5d10e853.md) | 39 | `result-track:1f70ebb7ee2fa71f5d10e853617f203f537b686ad7ef1e2ca639cf066a90d49f` |
| 3 | `theorem` | [source_strict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/source-strict--e66f5e39fcb79ea13d8ef97b.md) | 46 | `result-track:e66f5e39fcb79ea13d8ef97b3166288b4370c184dbce35c699113ac431c061b9` |
| 4 | `theorem` | [valueAt_eq_canonical_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/valueat-eq-canonical-window--15da662474edfb5ae0a43b51.md) | 53 | `result-track:15da662474edfb5ae0a43b5155317616c3f7a1d091850afafabe7237724d8fc3` |
| 5 | `theorem` | [valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/valueat-nonnegative--80ddcb77dcfed5e3f52704d0.md) | 63 | `result-track:80ddcb77dcfed5e3f52704d05a8da37735cc5874d345feaa425394aeb9469340` |
| 6 | `theorem` | [adjacent_overlap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/adjacent-overlap--9c092924ccc6263ba6f4b448.md) | 69 | `result-track:9c092924ccc6263ba6f4b448203a739de8ff175d1122c9116cf6ce966b48eb6d` |
| 7 | `theorem` | [next_source_le_of_primePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/next-source-le-of-primepower--5fb88d3dd2fc12ba72f30adf.md) | 82 | `result-track:5fb88d3dd2fc12ba72f30adfa509cfbb79b1813770dde4c3493ba5f2269a53d7` |
| 8 | `structure` | [CanonicalPrimePowerPackingComparisonAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/canonicalprimepowerpackingcomparisonatzero--fe9ace824dc47ceabd70bf16.md) | 93 | `declaration-track:fe9ace824dc47ceabd70bf1638f5abc4c0ecdda186a52756144415407bdbd8f6` |
| 9 | `theorem` | [CanonicalPrimePowerPackingComparisonAtZero.witnessTrace_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerPacking.lean/declarations/canonicalprimepowerpackingcomparisonatzero-witnesstrace-nonnegative--dc53db93165951e0245615f7.md) | 106 | `result-track:dc53db93165951e0245615f7a10387941e96523a7877db9df6e8f8fee421636b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
