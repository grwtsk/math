# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c2d3893b7db1b842b24a354199b18cd808b0533",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c2d3893b7db1b842b24a354199b18cd808b0533`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing`](../../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicRestrictionGluing.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberArchitecture.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/localindex--8cc124545e2ce979cea85668.md) | 12 | `declaration-track:8cc124545e2ce979cea85668d997da6f9bdd5355ea5edbe07ff47d4be479e0eb` |
| 2 | `def` | [restrictionClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/restrictionclaim--fd650825e6cfad5480098979.md) | 19 | `declaration-track:fd650825e6cfad54800989798e1595bc5712b0f5e1fef90a08fb3e453911d0b3` |
| 3 | `def` | [gluingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/gluingclaim--245ffcea0e0577824b1d3770.md) | 24 | `declaration-track:245ffcea0e0577824b1d37701a5e79401221285fde7255868772538651bfa162` |
| 4 | `def` | [holomorphicBoundaryClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/holomorphicboundaryclaim--920ca92ae5eb9a001bfb7a2e.md) | 37 | `declaration-track:920ca92ae5eb9a001bfb7a2e94b525021559c3607dcc1e9e034307fef1d7d5cc` |
| 5 | `theorem` | [restrictionClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/restrictionclaim-proof--8fe8aec21465659d4a1814ce.md) | 48 | `result-track:8fe8aec21465659d4a1814cee407c7aa4c4b519abffda9118cca5404484c6a16` |
| 6 | `theorem` | [gluingClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/gluingclaim-proof--e7280871dc455565710ff0a1.md) | 52 | `result-track:e7280871dc455565710ff0a1914193e8f3967f8ab06aee2d133802bcd94ad032` |
| 7 | `theorem` | [holomorphicBoundaryClaim_proof](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/holomorphicboundaryclaim-proof--4a68e66c88613f0ad3e8c416.md) | 59 | `result-track:4a68e66c88613f0ad3e8c416bee7cd7384bc1cc30941238f9b8bce59cced92f3` |
| 8 | `def` | [restrictionStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/restrictionstage--4acfe20bdf2ee1aba68a34e8.md) | 66 | `declaration-track:4acfe20bdf2ee1aba68a34e828353524d2a8ebae3dfb5dcbbf1847cfeec615b8` |
| 9 | `def` | [gluingStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/gluingstage--5fff9a8fea634fa52e37b912.md) | 85 | `declaration-track:5fff9a8fea634fa52e37b91218a5c2c48fc1e8cfe10795acbbf73222af6b64c4` |
| 10 | `def` | [holomorphicBoundaryStage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/holomorphicboundarystage--4d2f58e7b6eb2bedec639897.md) | 108 | `declaration-track:4d2f58e7b6eb2bedec639897e63523a036effe608a7b045f5faf962fd0b8606f` |
| 11 | `def` | [stage](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/stage--49cf2325fdf716dd8bbb38ff.md) | 128 | `declaration-track:49cf2325fdf716dd8bbb38ff84adaffdf842c02b60407aeb1756bd092c7d6335` |
| 12 | `def` | [architecture](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/architecture--8efd95bbae1ccb2eef58aa1b.md) | 134 | `declaration-track:8efd95bbae1ccb2eef58aa1bf095ff60b8c616f1604e5f17126373906822ca76` |
| 13 | `theorem` | [all_local](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/all-local--a129684e9854e0a2cc4b429b.md) | 140 | `result-track:a129684e9854e0a2cc4b429b357aaf1bd8f1a093f86254729b4f3a495ec054df` |
| 14 | `theorem` | [all_local_under_target_disposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/all-local-under-target-disposition--4f92bba6e0d6d97cf3dbf51b.md) | 145 | `result-track:4f92bba6e0d6d97cf3dbf51b2613a1340880a1cca27a2cc69e631f525b2fafc4` |
| 15 | `theorem` | [rh_remains_unresolved](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberLocalToGlobal.lean/declarations/rh-remains-unresolved--983f57ebb240a8f64aa50e90.md) | 151 | `result-track:983f57ebb240a8f64aa50e9094f82acdd076280d404fc2147afb24265c57d7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
