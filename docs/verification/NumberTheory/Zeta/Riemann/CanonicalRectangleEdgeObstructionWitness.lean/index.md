# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleEdgeObstructionWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ccbb9921ba6494131a36f5bb43a19424a5fc494",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ccbb9921ba6494131a36f5bb43a19424a5fc494`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitEdgeSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitEdgeSymmetry.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalRectangleEdgeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/canonicalrectangleedgewitness--68aedf281054f1f731699a66.md) | 81 | `declaration-track:68aedf281054f1f731699a663662537bedd32cba40e8459c938086bed976a801` |
| 2 | `theorem` | [exact_positive_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/exact-positive-count--d0e78f43f60634a275f7e82c.md) | 90 | `result-track:d0e78f43f60634a275f7e82cffb7f845bf3cdcd40bf2ff4856cf4d39730233c1` |
| 3 | `theorem` | [count_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/count-unique--0ef0cf9c41ecea5f543e1049.md) | 97 | `result-track:0ef0cf9c41ecea5f543e1049cd2e282d7a1ac84cfe10f9c8557c89feb4da8479` |
| 4 | `theorem` | [rhThrough](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/rhthrough--b418b4bd7b98559e69087656.md) | 108 | `result-track:b418b4bd7b98559e690876568e9e4fa5f124ff25d0e81de9bcae9af5ba393134` |
| 5 | `def` | [HasCanonicalRectangleEdgeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/hascanonicalrectangleedgewitness--bb32bda404b06e4cdd14bd40.md) | 121 | `declaration-track:bb32bda404b06e4cdd14bd405c25cdb3e849ce527cca7c4c08ec960725f7ce34` |
| 6 | `theorem` | [exists_exact_positive_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleEdgeObstructionWitness.lean/declarations/exists-exact-positive-count--8f7ea85a8426b61547e0cee0.md) | 126 | `result-track:8f7ea85a8426b61547e0cee07d1e08e8536ddd16693d54230c39d521af15620d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
