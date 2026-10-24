# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOverlapAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9c3a7d07fbf52a4bf5bbaedd9424c74d2e3377b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9c3a7d07fbf52a4bf5bbaedd9424c74d2e3377b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [StatementTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/statementtransport--cfe827d70f1757bb01a31b93.md) | 27 | `declaration-track:cfe827d70f1757bb01a31b93f05286edcebab7dae3a22ce527f455f7e2e2a808` |
| 2 | `def` | [IsEquivalent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/isequivalent--43a7c407e115cfaa83fbb89f.md) | 36 | `declaration-track:43a7c407e115cfaa83fbb89ff55b14c41f2a2d325d0ea5d3d33ccd845c8e9cf2` |
| 3 | `theorem` | [iffOfEquivalent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/iffofequivalent--1483a9bc4843c569c0d89c09.md) | 41 | `result-track:1483a9bc4843c569c0d89c09d1b61d6aa1a4d012cfa340efc172953be6c1db73` |
| 4 | `theorem` | [forwardOnly_not_equivalent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/forwardonly-not-equivalent--bd447e3ce241d916b56e14ba.md) | 50 | `result-track:bd447e3ce241d916b56e14ba400676c921f6c0d451eef091c51e38918d0e7803` |
| 5 | `theorem` | [reverseOnly_not_equivalent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/reverseonly-not-equivalent--c7785662d3f7f3928cf9d245.md) | 55 | `result-track:c7785662d3f7f3928cf9d24509341a6de4f8546d692fc402c76c101c212d8186` |
| 6 | `structure` | [DirectionalOverlapTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/directionaloverlaptransition--d18edec7be7fe81f6fc7d006.md) | 66 | `declaration-track:d18edec7be7fe81f6fc7d0066ee5837e079e1fbdc39d8ad33b413a3271785584` |
| 7 | `def` | [toCoordinateTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/tocoordinatetransition--3ce3c8d8d73ce7ef4219df1e.md) | 86 | `declaration-track:3ce3c8d8d73ce7ef4219df1e51df0bc23744477e29845eb476f07613175fef81` |
| 8 | `def` | [toChartTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/tocharttransition--0866062edc0e660b2121fa8c.md) | 97 | `declaration-track:0866062edc0e660b2121fa8cc22d2fe37e6be6b4425d520109bda17b4ff8ce9f` |
| 9 | `theorem` | [coordinate_height_preserving](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/coordinate-height-preserving--1cd68a33bd579d4a3fde6c38.md) | 110 | `result-track:1cd68a33bd579d4a3fde6c3838c5d71f94fb26ed1cfdc585ec13f98174e4617f` |
| 10 | `theorem` | [admitted_height_preserving](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/admitted-height-preserving--35b3adf510148ab32c6566b9.md) | 122 | `result-track:35b3adf510148ab32c6566b92c717b8518222dc236bdaf83bcca3c724e5527c4` |
| 11 | `inductive` | [TransitionDefectOrientation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/transitiondefectorientation--559f8d4a8cec1cedda08de03.md) | 137 | `declaration-track:559f8d4a8cec1cedda08de03430b3a88500b099a89de59265327ec03cfb878bf` |
| 12 | `structure` | [TransitionDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/transitiondefect--4e8c889b2247d5cc27720346.md) | 148 | `declaration-track:4e8c889b2247d5cc27720346875f66b191390d6f67458db7ae8fcbeb13a9b6e2` |
| 13 | `def` | [toDirectionalOverlapTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/todirectionaloverlaptransition--e3e0ee4e61b4d2a5290c9093.md) | 185 | `declaration-track:e3e0ee4e61b4d2a5290c90934db1d69d67b27ca8bf36ef80db2b9173fe6181e7` |
| 14 | `theorem` | [composed_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/composed-bound--84f69f3f238cb6fe02aac6dc.md) | 205 | `result-track:84f69f3f238cb6fe02aac6dc4090e8a4f5665bd122a25086ba24548534edabec` |
| 15 | `inductive` | [OverlapAuditOutcome](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/overlapauditoutcome--d62675b79953bb33176c30ca.md) | 231 | `declaration-track:d62675b79953bb33176c30ca704f17f42ee2c63579d1f0f650b9a9ce2f0cd338` |
| 16 | `def` | [HasExactCoordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/hasexactcoordinate--0eb082cacf41b5d080c6381b.md) | 248 | `declaration-track:0eb082cacf41b5d080c6381bebd9a8d584134e3ede1427439ec94800d5397e52` |
| 17 | `def` | [admittedCoordinateTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/admittedcoordinatetransition--4272d55476228802546c9fac.md) | 259 | `declaration-track:4272d55476228802546c9fac9a50db55bd4976576386af6a69fd5bf88929ec4e` |
| 18 | `def` | [admittedTransition](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOverlapAudit.lean/declarations/admittedtransition--08489c82f6934de433fef591.md) | 271 | `declaration-track:08489c82f6934de433fef591ae4309201a187924b2d67c18ca3fb1ac75235cf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
