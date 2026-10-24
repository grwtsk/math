# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevStrength

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eafcd52f6aafba2d79b9135933381a05272e3fea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eafcd52f6aafba2d79b9135933381a05272e3fea`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogOneSupplierReduction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogOneSupplierReduction.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevPsiFinite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/declarations/chebyshevpsifinite--2aa24f0d6940e7fc59ef05f8.md) | 14 | `declaration-track:2aa24f0d6940e7fc59ef05f810ffa83d04a7ee29c04ebe081da4d8ed743fcaf9` |
| 2 | `def` | [chebyshevPsiError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/declarations/chebyshevpsierror--ed8dfd82fa120ee54a96648b.md) | 17 | `declaration-track:ed8dfd82fa120ee54a96648b0092c351fd88e638f1100c709470c71e7dd937c2` |
| 3 | `theorem` | [prefixMangoldtError_eq_global_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/declarations/prefixmangoldterror-eq-global-sub--8e67ef4278235fe007686297.md) | 20 | `result-track:8e67ef4278235fe007686297af58bb2875fcee85e204d94e0c698388782696a0` |
| 4 | `def` | [GlobalChebyshevSquareRootPlusEpsilonBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/declarations/globalchebyshevsquarerootplusepsilonbound--932eeedb900511a2e05f10d3.md) | 40 | `declaration-track:932eeedb900511a2e05f10d3a88ea9943082fa93fb80d45a3c0dded05679c7e2` |
| 5 | `theorem` | [prefixMangoldt_of_globalChebyshev](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogChebyshevStrength.lean/declarations/prefixmangoldt-of-globalchebyshev--83cb6c80db601a07e3f73ece.md) | 49 | `result-track:83cb6c80db601a07e3f73ece7ae1f7cd1d1cba8b5c0012270250cab11a3d9027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
