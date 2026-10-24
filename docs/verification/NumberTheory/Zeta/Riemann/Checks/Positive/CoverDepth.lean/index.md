# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CoverDepth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4d2684bb60d5939f4521e4e3300743ecaf2bdda",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4d2684bb60d5939f4521e4e3300743ecaf2bdda`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.SquaredCoverSearch`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [half_square_norm_margin](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/half-square-norm-margin--a0703975b41630884fad038d.md) | 15 | `result-track:a0703975b41630884fad038d178268152b53b18d4d9d8f6ddd34df7ef3760e54` |
| 2 | `theorem` | [quarter_clearance](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/quarter-clearance--e7d8412f245e0fe729d5103c.md) | 33 | `result-track:e7d8412f245e0fe729d5103ccdf66e038ea657e2cd40c0f1ea6bc60e6d3c5f19` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--339d9410eff645bcf8d75755.md) | 75 | `declaration-track:339d9410eff645bcf8d75755fba2e97a653b98947dd6e3a684da513bfa9e6e3e` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--fa322dab05a8cd146c35e2cd.md) | 81 | `declaration-track:fa322dab05a8cd146c35e2cd27c3d2a9695f85eace54327d2ff307c62ce5a81f` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--a5c4f9d4745a7499fb6df1ae.md) | 88 | `declaration-track:a5c4f9d4745a7499fb6df1aeadd87b3419b0b745029fa51ab8e7b602cce4f57b` |
| 6 | `def` | [tangentPoint](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/tangentpoint--54d3282753aa789a7e2c746e.md) | 96 | `declaration-track:54d3282753aa789a7e2c746e4cd49f839a1c0357d7055e06641ff4b8d134ef6e` |
| 7 | `def` | [tangentDisks](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/tangentdisks--8ff36e632f1ee82e970ef5b0.md) | 97 | `declaration-track:8ff36e632f1ee82e970ef5b0d06cf25b850739ea08d661fa23002b2f5c0208e2` |
| 8 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--1ebe52aabdc61644a71155ab.md) | 99 | `declaration-track:1ebe52aabdc61644a71155ab9d820114b4024238267773941e0ab8d617296dc5` |
| 9 | `theorem` | [tangentPoint_no_positive_clearance](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/tangentpoint-no-positive-clearance--2a26ee98ad9b3883f08fad8f.md) | 101 | `result-track:2a26ee98ad9b3883f08fad8f9a9f2fc1c5f0cf3ac03b239d2b55537c2112d7eb` |
| 10 | `def` | [touchingBox](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/touchingbox--ee3d51a45e1de9d6e8e6d2e8.md) | 116 | `declaration-track:ee3d51a45e1de9d6e8e6d2e80ffb113927f1944a76e0559b555b0ac4c7028ae8` |
| 11 | `def` | [touchingDisks](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/touchingdisks--3a29149965851c198bccdcbf.md) | 117 | `declaration-track:3a29149965851c198bccdcbfb16fce27615a23b0286698d7d9adfaa5e2c8ad92` |
| 12 | `def` | [touchingTree](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/touchingtree--63bd179136b710d9bc1cb19d.md) | 119 | `declaration-track:63bd179136b710d9bc1cb19df8e86359b95b8de8541a39008a35db30b4531a91` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--6232cbef9883c220be65b3b6.md) | 121 | `declaration-track:6232cbef9883c220be65b3b6fb3f7d4f6a1b409f65da02cf3343dc7be74005f7` |
| 14 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--7df2db01457499fba5f67440.md) | 122 | `declaration-track:7df2db01457499fba5f67440e85c7810c02c4033d9addb4fb01a436933c73bdd` |
| 15 | `theorem` | [touching_no_positive_clearance](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/touching-no-positive-clearance--7b9d1d278166b8eacfed51c1.md) | 124 | `result-track:7b9d1d278166b8eacfed51c157026a1370fe1a446e760095b5791143129ae36e` |
| 16 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--f2622787787d8d1d6fa4a636.md) | 133 | `declaration-track:f2622787787d8d1d6fa4a6360b80d6925efd65c19773dc81f427cff25adde800` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/CoverDepth.lean/declarations/example--69a2d37def98708e1544cd4a.md) | 138 | `declaration-track:69a2d37def98708e1544cd4a3e434ee4237b747b2de5eafc640fa3e8e32fa4eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
