# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LeftLogDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DigammaShift`](../../../../../mathematics/Analysis/ComplexAnalysis/DigammaShift.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles`](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentPerronLine`](../../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/leftpoint--3e84b023af7c62b36b5238d6.md) | 37 | `declaration-track:3e84b023af7c62b36b5238d6a2d2bd85f09b33901de9f309d1c91399031e5163` |
| 2 | `theorem` | [leftPoint_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/leftpoint-re--96a6fbfa8a54ddfb4fce2ee4.md) | 39 | `result-track:96a6fbfa8a54ddfb4fce2ee48e7dbb4fae402399a3c0f1fa069b0c1c38a43937` |
| 3 | `theorem` | [leftPoint_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/leftpoint-reflected--2b02aabfaf1490ae0683991e.md) | 41 | `result-track:2b02aabfaf1490ae0683991e106896d07340cfb56c8bb25db6ca8d1fdd16c545` |
| 4 | `theorem` | [reflectedUnit_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/reflectedunit-ne-zero--613383371c96d406931c001f.md) | 48 | `result-track:613383371c96d406931c001fa9fd055d4c46fdc73541015269c69ef4cc93f15f` |
| 5 | `theorem` | [reflectedUnit_logDeriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/reflectedunit-logderiv--06f665afea20ccef2038a4f0.md) | 56 | `result-track:06f665afea20ccef2038a4f01d010c37576f416aaec9f9d3019e358084140e17` |
| 6 | `theorem` | [negative_logDeriv_reflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/negative-logderiv-reflection--3fd0a1f92d81436030ec0a39.md) | 84 | `result-track:3fd0a1f92d81436030ec0a398a897a1712f0940417c975d400cf0101f939b95f` |
| 7 | `theorem` | [left_cotangent_periodic](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/left-cotangent-periodic--a07831eaf069a8f78244f14d.md) | 109 | `result-track:a07831eaf069a8f78244f14d869ab38ebbb9a47cd84e13f8dcb7469e7a2e0705` |
| 8 | `theorem` | [negative_logDeriv_left_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/negative-logderiv-left-recurrence--49550f598587dda50cf42476.md) | 125 | `result-track:49550f598587dda50cf42476e87fce1b3fa47e4c7a35f6107f993ed6600372f9` |
| 9 | `theorem` | [norm_logDeriv_right_halfPlane_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/norm-logderiv-right-halfplane-le--59ebf3c3b0f566594000872a.md) | 147 | `result-track:59ebf3c3b0f566594000872a761be561008affc4834c981c7d471b4b49c16a7a` |
| 10 | `theorem` | [norm_left_logDeriv_le_base](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/norm-left-logderiv-le-base--0c7ebbe6c8b4afda6e888112.md) | 164 | `result-track:0c7ebbe6c8b4afda6e888112d81eb6abf0fe5ef94e33828fbe50e21d36fdd733` |
| 11 | `theorem` | [continuous_base_logDeriv](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/continuous-base-logderiv--b27f9fa68fd523511426bf30.md) | 193 | `result-track:b27f9fa68fd523511426bf30631b6c69edf8a41eaca4a632c34e1028f0d19f30` |
| 12 | `theorem` | [exists_fixed_height_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/declarations/exists-fixed-height-bound--e3e51d9d21b4bb5b6cb1f119.md) | 207 | `result-track:e3e51d9d21b4bb5b6cb1f11915cdb77cc90a6cf7013fe27cd3e8d82c731a320a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
