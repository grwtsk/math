# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCanonicalBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea10cec237e2399f2b46d48e1d25ab4db723882f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea10cec237e2399f2b46d48e1d25ab4db723882f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalCheckedJetContour`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalCheckedJetContour.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenBlockDecomposition`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oldEdge](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/oldedge--e1c3387bb3e4d6358b4a5587.md) | 29 | `declaration-track:e1c3387bb3e4d6358b4a55875cc59ab651ae6bd50f1cdd059894697b65189e0b` |
| 2 | `def` | [checkedEdge](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/checkededge--c6c26c28ec4dc82dc7bb7fd8.md) | 36 | `declaration-track:c6c26c28ec4dc82dc7bb7fd859bafc6f7ac5ccddb13aff8798441cba59b584f4` |
| 3 | `def` | [checkedTest](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/checkedtest--30bd37541e92b0ab2933a30c.md) | 43 | `declaration-track:30bd37541e92b0ab2933a30c95e4bdbe3ba0fc08d862d7af02bb8cbce7ac56a7` |
| 4 | `theorem` | [checkedEdge_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/checkededge-iff--087ad5f01e647c0167c09565.md) | 45 | `result-track:087ad5f01e647c0167c095656e2b30d9a2ba89f7de63d5e44969cf92725f257d` |
| 5 | `theorem` | [checkedTest_eq_direct](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/checkedtest-eq-direct--3fdfdd7c08893bac0268e1ad.md) | 53 | `result-track:3fdfdd7c08893bac0268e1adb222a6e048734230efab21541cbf29d336f97f14` |
| 6 | `theorem` | [checkedChunk_eq_direct](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/checkedchunk-eq-direct--49097b8d63909185b0ada4f3.md) | 59 | `result-track:49097b8d63909185b0ada4f3f1255e617ae366b4c8e3dd92ecc557649b089392` |
| 7 | `def` | [ScriptObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/scriptobligations--8b659c890cdbeea18536d0ef.md) | 68 | `declaration-track:8b659c890cdbeea18536d0ef9e9f14891f7ea2ee527d4881172bc49593090746` |
| 8 | `theorem` | [pieces_checked_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/pieces-checked-iff--42f297b471087d356db5eaaf.md) | 71 | `result-track:42f297b471087d356db5eaafe1430cae5999e59a6ac733c24803ff1a0a864ffa` |
| 9 | `theorem` | [script_iff_blocks](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCanonicalBlocks.lean/declarations/script-iff-blocks--6ed1f9b909d6af36585ffb99.md) | 83 | `result-track:6ed1f9b909d6af36585ffb99d3c752527bfc94c09999b741148ece7f6794bd8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
