# Verification target: GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3bc2e035926b4bcec8faff5f06a23eebb11a38b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3bc2e035926b4bcec8faff5f06a23eebb11a38b`.

Source path: `GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DirichletLaplaceIdentity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../mathematics/NumberTheory/Moebius/PrimitiveRegularity.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMoebius](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius--ffadcced33281fa4557d8f11.md) | 32 | `declaration-track:ffadcced33281fa4557d8f11f40d9bdeb0b9f4fbcca6b8af8ce0c84da86c40aa` |
| 2 | `theorem` | [complexMoebius_eq](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius-eq--db6d48c580be918a94333159.md) | 34 | `result-track:db6d48c580be918a94333159fc4a7d7bacad9d95ac0ef6273e57688ccb862242` |
| 3 | `theorem` | [complexMoebius_summable](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius-summable--34809e0542d301e2d18ad378.md) | 38 | `result-track:34809e0542d301e2d18ad378deca4b0f7ecf0461f95e19d85da2c4322d1eeee3` |
| 4 | `theorem` | [complexMoebius_LSeries](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius-lseries--e83922f8561f72267728eb22.md) | 44 | `result-track:e83922f8561f72267728eb222aba64c0e13c6ab2631b76ab2d92d6c80400a684` |
| 5 | `theorem` | [complexMoebius_prefix](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius-prefix--00e663ad914f8f311903e612.md) | 53 | `result-track:00e663ad914f8f311903e612e2419b802f6d0927b78efd249b32125d0dde601e` |
| 6 | `theorem` | [complexMoebius_prefix_bigO](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/complexmoebius-prefix-bigo--4aaeceb1d8c9c4013597dd98.md) | 57 | `result-track:4aaeceb1d8c9c4013597dd980e39b68ac2fd8da0c02454d53ef2219f2866514a` |
| 7 | `theorem` | [mertensPrefix_mellin](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/mertensprefix-mellin--57ec896bdf1a60969d280760.md) | 72 | `result-track:57ec896bdf1a60969d280760716ea853ab1b1d8f5bdc0d60997a35a670f4f464` |
| 8 | `theorem` | [mertensPrefix_laplace](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/mertensprefix-laplace--c8e9521f4b11e0978bf975ee.md) | 90 | `result-track:c8e9521f4b11e0978bf975ee4b1a4357c04b434b159d5e8d299b36a8f9997d92` |
| 9 | `theorem` | [pickupVelocity_laplace](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickupvelocity-laplace--7e4c7ed554f2596b0b406bd8.md) | 118 | `result-track:7e4c7ed554f2596b0b406bd8fda60b030ef92d78c793f5f587705351d7c7cfa2` |
| 10 | `def` | [pickupTriangle](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickuptriangle--a5e708bc277e7ad6f5ea606e.md) | 131 | `declaration-track:a5e708bc277e7ad6f5ea606ead863073033c1efb9187259eccb26a9c335ccdd9` |
| 11 | `theorem` | [pickupTriangle_measurable](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickuptriangle-measurable--ed5f5218dbaf59b17fffa2fb.md) | 135 | `result-track:ed5f5218dbaf59b17fffa2fb3202d845dfbe5b1b79db2ed55f2a089c39aaaa7d` |
| 12 | `theorem` | [pickupTriangle_integrable](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickuptriangle-integrable--a114762c649e3beee4f53604.md) | 143 | `result-track:a114762c649e3beee4f5360444c6bc9a30ce7f1608f19a1f4c4022efba3b1fee` |
| 13 | `theorem` | [pickupTriangle_time_integral](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickuptriangle-time-integral--281522e700370c1cf19c5655.md) | 173 | `result-track:281522e700370c1cf19c5655a050f65a06868cfb04b8a750c85a1aa691eec05a` |
| 14 | `theorem` | [pickupTriangle_density_integral](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/pickuptriangle-density-integral--3c7c6e1f7025d38055567f14.md) | 186 | `result-track:3c7c6e1f7025d38055567f14d4fac82600e90078cf615e0f8e02aa0ad423d99e` |
| 15 | `theorem` | [wholePickup_laplace](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/wholepickup-laplace--82d29a5ba72b265fcf1968c3.md) | 202 | `result-track:82d29a5ba72b265fcf1968c3254c76606e7827c4f7390cf9eb583d3c5b79edd5` |
| 16 | `theorem` | [initial_transform](../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/declarations/initial-transform--25554ac09b7fd1da1a46479b.md) | 221 | `result-track:25554ac09b7fd1da1a46479ba1f84d30e10cf0f68c7d411ec2ac9ffa9c575b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
