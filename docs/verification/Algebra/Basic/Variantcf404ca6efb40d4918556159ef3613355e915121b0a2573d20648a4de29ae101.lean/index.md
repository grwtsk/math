# Verification target: GRWTSK.Algebra.Basic.Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba3bc997554108b08f52c1f46103a1c5a1f093e8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba3bc997554108b08f52c1f46103a1c5a1f093e8`.

Source path: `GRWTSK/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingUp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.RationalRoot` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Ring.DimensionLEOne](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/ring-dimensionleone--747d3fb210428291152c7fc3.md) | 60 | `declaration-track:747d3fb210428291152c7fc38c991efc7b7c696f5f48d13b8fdf0645ac7372cd` |
| 2 | `theorem` | [Ideal.IsPrime.isMaximal](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/ideal-isprime-ismaximal--b2902a88e7d428e16d975a56.md) | 65 | `result-track:b2902a88e7d428e16d975a563ad0ce834e871e5cce78ebaabf562c681e458682` |
| 3 | `instance` | [DimensionLEOne.principal_ideal_ring](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/dimensionleone-principal-ideal-ring--f45b25ba986c0ea6cb367b00.md) | 71 | `declaration-track:f45b25ba986c0ea6cb367b006747a8d76df5c9f366cec485fb6793ca228edd90` |
| 4 | `theorem` | [DimensionLEOne.isIntegralClosure](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/dimensionleone-isintegralclosure--264ba7f57851bdbab84f1aff.md) | 76 | `result-track:264ba7f57851bdbab84f1aff1496dace01083e2221dd9c862b47310b523a4e13` |
| 5 | `instance` | [DimensionLEOne.integralClosure](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/dimensionleone-integralclosure--1bed5a30174960e8d2447d4b.md) | 83 | `declaration-track:1bed5a30174960e8d2447d4b907bc58f2f2be9f12112761b01c249407041afa8` |
| 6 | `theorem` | [DimensionLEOne.not_lt_lt](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/dimensionleone-not-lt-lt--87ddd9b2c03bb22c88bfb6ae.md) | 89 | `result-track:87ddd9b2c03bb22c88bfb6ae7387a79cd5ef03033bc887f883e96a07ec441821` |
| 7 | `theorem` | [DimensionLEOne.eq_bot_of_lt](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/dimensionleone-eq-bot-of-lt--0bf204e86ee2d1cc5cae70f5.md) | 93 | `result-track:0bf204e86ee2d1cc5cae70f5e50e9279c20cfb55ef256e02d5feae939e17b79b` |
| 8 | `class` | [IsDedekindRing](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/isdedekindring--23337751b0fee0b3848218fa.md) | 107 | `declaration-track:23337751b0fee0b3848218fa2ae118e75bb70bd71d9ebbf1c1a42b9ae02a7b1a` |
| 9 | `theorem` | [isDedekindRing_iff](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/isdedekindring-iff--f5e9802093650b82b00ce224.md) | 113 | `result-track:f5e9802093650b82b00ce22461c601990b192507ed3747c2c85a15239ae314b7` |
| 10 | `class` | [IsDedekindDomain](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/isdedekinddomain--78e34db065713a9a27730fea.md) | 134 | `declaration-track:78e34db065713a9a27730fea01ba6866a4a0ae251c7091862c66b89d9a6a1a1f` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/instance--1862d6b5fa3bfb8f1c8209de.md) | 146 | `declaration-track:1862d6b5fa3bfb8f1c8209dec8e8f70c56848052c0a86ee38820a036143028e1` |
| 12 | `theorem` | [isDedekindDomain_iff](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/isdedekinddomain-iff--ce532d402aa189e55acd6e32.md) | 151 | `result-track:ce532d402aa189e55acd6e32e7935b867ce1d154723a8647d96627d4a8859e9d` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantcf404ca6efb40d4918556159ef3613355e915121b0a2573d20648a4de29ae101.lean/declarations/instance--16667852a522b720a011a7a3.md) | 160 | `declaration-track:16667852a522b720a011a7a31cde358268adde51f4288e6583b5cc75d7772dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
