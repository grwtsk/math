# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00326873dd498ee2568a84c0de70d5b08090674b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00326873dd498ee2568a84c0de70d5b08090674b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.AnalyticOrderTransport`](../../../../../mathematics/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [completed_analyticAt_zeroPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/completed-analyticat-zeropoint--27acb626b26884c4dc0b78a2.md) | 41 | `result-track:27acb626b26884c4dc0b78a22897d78554be392133ccfcda43e3818cb816723e` |
| 2 | `theorem` | [zeta_order_eq_completed](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/zeta-order-eq-completed--4ea23d46193b7ad6adf7ae9c.md) | 54 | `result-track:4ea23d46193b7ad6adf7ae9c66ab3a88b1aa4335e7d4a00db19b683194d7863b` |
| 3 | `theorem` | [zeta_order_one_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/zeta-order-one-sub--3ea8a3c572ebef479efff891.md) | 72 | `result-track:3ea8a3c572ebef479efff891ee16b8ee45ec319653e758dca221b2ff564cda03` |
| 4 | `theorem` | [zeta_order_conjugate](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/zeta-order-conjugate--a5176bd83ba35518a1fb2d36.md) | 87 | `result-track:a5176bd83ba35518a1fb2d36f498cb43af25bb80dfe9e25e97f32976f21369f5` |
| 5 | `theorem` | [zeta_order_critical_reflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/zeta-order-critical-reflection--07672ea1626054043bf653d0.md) | 95 | `result-track:07672ea1626054043bf653d01f0a48cf8cb19d8eab12ec2cfc121cbd3ce3fb98` |
| 6 | `theorem` | [multiplicity_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/multiplicity-reflected--61c5e65a7d2207dec9b13ba7.md) | 106 | `result-track:61c5e65a7d2207dec9b13ba73790775ba36f36ae91423d93b5b8317da547eb1f` |
| 7 | `theorem` | [lower_bound_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/lower-bound-reflected--122faea387e452e995015431.md) | 114 | `result-track:122faea387e452e995015431a281be4157d6b992d0ccad92d75bb6575bfadaf1` |
| 8 | `theorem` | [critical_line_of_region_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/critical-line-of-region-lower--53b29ffec7b9c9bbf588c7fb.md) | 121 | `result-track:53b29ffec7b9c9bbf588c7fb8f35c4fe74378c0e8ef5fc2f8ed02ca29c4c6960` |
| 9 | `theorem` | [twice_multiplicity_le_regionCount_of_off_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/twice-multiplicity-le-regioncount-of-off-line--64ca0943516e728b3bc57ca9.md) | 132 | `result-track:64ca0943516e728b3bc57ca984c47c23e3aa63ad8952dab8bf627702416f456f` |
| 10 | `theorem` | [rhThrough_of_region_lower_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/declarations/rhthrough-of-region-lower-cover--8a0426f858b3c2941384fd07.md) | 141 | `result-track:8a0426f858b3c2941384fd07a6bdd445542d1bdb2ec50bef01e85dcabfc93d80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
