# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a0f13e1214c55db86947b1cca5144b955e5dfa9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a0f13e1214c55db86947b1cca5144b955e5dfa9`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel`](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryPrimitivity`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryPrimitivity.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometrySelectedMonomialUpper](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometryselectedmonomialupper--732eec9607d22178f72ac86f.md) | 39 | `declaration-track:732eec9607d22178f72ac86f4392aeec37b25a6977334802aa2fb547eb101afc` |
| 2 | `theorem` | [paperSelectedMonomial_le_geometryUpper](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/paperselectedmonomial-le-geometryupper--858cd88279c940d0c63611b4.md) | 45 | `result-track:858cd88279c940d0c63611b406469a67080bd9fa835948d4f606ad4f3d63b301` |
| 3 | `def` | [geometrySelectedPoint](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometryselectedpoint--72b6aaa9284d064716ba44a3.md) | 59 | `declaration-track:72b6aaa9284d064716ba44a3f3a7252d62ce2cdb18e555476c5b5575b0865159` |
| 4 | `def` | [geometryPrimitiveLinearBoxData](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometryprimitivelinearboxdata--071765221d237b96a1e74cdd.md) | 68 | `declaration-track:071765221d237b96a1e74cddb5c7d03bea9232e40e1afbf2b2235cb8509fe91a` |
| 5 | `theorem` | [geometrySelectedPoint_mem_primitivePositiveSolutions](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometryselectedpoint-mem-primitivepositivesolutions--41468c9d6185c8c10df3ffce.md) | 98 | `result-track:41468c9d6185c8c10df3ffce623f7816ff5802e03b8a989f6ffd71b3ecac969b` |
| 6 | `theorem` | [geometrySelectedPoint_mem_linearKernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometryselectedpoint-mem-linearkernel--dc3864227a0854c9d9d85544.md) | 126 | `result-track:dc3864227a0854c9d9d85544ea68bc6dc96060bd7cc4335b76bf6a5b4fcaa572` |
| 7 | `theorem` | [geometryLatticeInput_of_paperAdmissible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/geometrylatticeinput-of-paperadmissible--4877c433f1aaa53b3728a3e9.md) | 143 | `result-track:4877c433f1aaa53b3728a3e9214ba4beacd1fc55cc85e710522add35ea9b3513` |
| 8 | `theorem` | [lattice_input_does_not_supply_bound_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/declarations/lattice-input-does-not-supply-bound-fixture--58fa2a0d14512a88f8763727.md) | 167 | `result-track:58fa2a0d14512a88f87637270144d6597189e7f42af50405ee26a138289a4702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
