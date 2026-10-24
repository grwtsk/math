# Verification target: GRWTSK.Algebra.Basic.Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d9f3bb6f25ba3ef6e48eab4b857ffc84c2ec16",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d9f3bb6f25ba3ef6e48eab4b857ffc84c2ec16`.

Source path: `GRWTSK/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.RationalRoot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Ring.DimensionLEOne](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/ring-dimensionleone--4c98e419802e5733655a6db9.md) | 52 | `declaration-track:4c98e419802e5733655a6db9ba508cd2b7ede371082b21ec5d3ffb67bf6bc6be` |
| 2 | `theorem` | [Ideal.IsPrime.isMaximal](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/ideal-isprime-ismaximal--7a3c5cfe25d34b7ab6e4790f.md) | 57 | `result-track:7a3c5cfe25d34b7ab6e4790f43c105de2db23e0c03ddad676ed73fe2a768c34d` |
| 3 | `instance` | [DimensionLEOne.principal_ideal_ring](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/dimensionleone-principal-ideal-ring--a62f3187f047918ed031e199.md) | 63 | `declaration-track:a62f3187f047918ed031e1991e313d26070e59e505500a1141f4be6f23c4b9c8` |
| 4 | `theorem` | [DimensionLEOne.isIntegralClosure](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/dimensionleone-isintegralclosure--dfb4c8d487923c654f4c4d60.md) | 68 | `result-track:dfb4c8d487923c654f4c4d60c31e043cc5009c3f16105659a35a3f0ad2ec2a54` |
| 5 | `instance` | [DimensionLEOne.integralClosure](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/dimensionleone-integralclosure--e96e4e2256da60497293ea8f.md) | 75 | `declaration-track:e96e4e2256da60497293ea8f4116c98e54484e2b654104638fcc0d7380be245a` |
| 6 | `theorem` | [DimensionLEOne.not_lt_lt](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/dimensionleone-not-lt-lt--88216db757e47e25b264c37a.md) | 81 | `result-track:88216db757e47e25b264c37ab44df5c6c0405af9c5a955e02fb80a347309c059` |
| 7 | `theorem` | [DimensionLEOne.eq_bot_of_lt](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/dimensionleone-eq-bot-of-lt--fc000d3f2173e9a41c0cd02c.md) | 85 | `result-track:fc000d3f2173e9a41c0cd02cc54591f35474586fa15bd7e1be6ac74c79b7eb20` |
| 8 | `class` | [IsDedekindRing](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/isdedekindring--f4bdaf5d934a05649fd5c552.md) | 99 | `declaration-track:f4bdaf5d934a05649fd5c552682734384281eb7e80843d812e59a86bd1779b3f` |
| 9 | `theorem` | [isDedekindRing_iff](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/isdedekindring-iff--cf8899ac0ee410b676db53bf.md) | 105 | `result-track:cf8899ac0ee410b676db53bfd5b0298f70ddc9415bad6a096bfba964c220285f` |
| 10 | `class` | [IsDedekindDomain](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/isdedekinddomain--ead8761228e121f939095b8d.md) | 126 | `declaration-track:ead8761228e121f939095b8dbab0f1788194d84ed4e989bcf03b321c2a6ac9d3` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/instance--360f2eb7b72b8d9bf36dc9a4.md) | 138 | `declaration-track:360f2eb7b72b8d9bf36dc9a4769a2629cc968ed5827edb6c6fdab9a9b584912f` |
| 12 | `theorem` | [isDedekindDomain_iff](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/isdedekinddomain-iff--93571b129490ef2866cfe12c.md) | 143 | `result-track:93571b129490ef2866cfe12c897f0a233acb95b2a68daf2e812a78932417e4e7` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant8952dc164dc199f8ba365a0708526ea1340ab7b835278391a2d8440b04d3d854.lean/declarations/instance--9e8b9a7ab3ef82ec1469c262.md) | 152 | `declaration-track:9e8b9a7ab3ef82ec1469c262081af85c3a7f21379bfec2d80de14532fdd88e33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
