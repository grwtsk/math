# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d470be42eddfb3dc109504d752ac1207604cd8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d470be42eddfb3dc109504d752ac1207604cd8`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.AlgebraicClosure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Transcendental` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extendScalars](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/extendscalars--2e1fd3562e31ca6c14be9cc3.md) | 35 | `result-track:2e1fd3562e31ca6c14be9cc3f57ee0a447da66947a8d9179d2954d586b8a485b` |
| 2 | `theorem` | [extendScalars_of_isIntegral](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/extendscalars-of-isintegral--3ec4c3f9bb4b00ac46517831.md) | 58 | `result-track:3ec4c3f9bb4b00ac46517831175c34e74f6969404a053f9727c19e04786f12a3` |
| 3 | `theorem` | [subalgebraAlgebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/subalgebraalgebraicclosure--81820da6ae5fb5a83f10d0ed.md) | 67 | `result-track:81820da6ae5fb5a83f10d0ed558690b1a03834fe9d0ea2b1c6c8a6dc22dd34e3` |
| 4 | `theorem` | [integralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/integralclosure--a469b8ebf5e9da3cfbb49ae0.md) | 71 | `result-track:a469b8ebf5e9da3cfbb49ae06a5f93e31fe357c414485078b3b220164efc3e82` |
| 5 | `theorem` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/algebraicclosure--00382170d80053dceb958488.md) | 76 | `result-track:00382170d80053dceb958488210dbd9d630a0f09af90d2871b929e8a64cdb3d7` |
| 6 | `theorem` | [IsIntegral.algebraicIndependent_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isintegral-algebraicindependent-iff--3f4045755837d753b12769ba.md) | 87 | `result-track:3f4045755837d753b12769baad5e80ad923b280e5ba42eaf49fade78fc97b30e` |
| 7 | `theorem` | [IsIntegral.isTranscendenceBasis_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isintegral-istranscendencebasis-iff--2e807f494e258e0c9eee1202.md) | 92 | `result-track:2e807f494e258e0c9eee120243411c479d53279b53c464cb6e554f388e0edd54` |
| 8 | `theorem` | [IsAlgebraic.algebraicIndependent_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isalgebraic-algebraicindependent-iff--fc516945465064a810f55dcf.md) | 96 | `result-track:fc516945465064a810f55dcf7ed01d6ab4408bb10948db87a0d3e631b6cb2119` |
| 9 | `theorem` | [IsAlgebraic.isTranscendenceBasis_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isalgebraic-istranscendencebasis-iff--831172cfba3c426aba7f1110.md) | 100 | `result-track:831172cfba3c426aba7f111016b7ef222f5e49de663c95c65f87182485c97279` |
| 10 | `theorem` | [isAlgebraic_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isalgebraic-adjoin-iff--59ff70a3f469186fb9d93429.md) | 120 | `result-track:59ff70a3f469186fb9d93429efc271003b569cdf07a1133a30adf41b11592dbf` |
| 11 | `theorem` | [isAlgebraic_adjoin_iff_top](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isalgebraic-adjoin-iff-top--4b97e8f6941d3b4ee7cb51f5.md) | 124 | `result-track:4b97e8f6941d3b4ee7cb51f53ea13c08da39c04a06325b0f1f14d22c804f7259` |
| 12 | `theorem` | [isAlgebraic_adjoin_iff_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/isalgebraic-adjoin-iff-bot--bfd6a0bf56954e229c6e8c37.md) | 128 | `result-track:bfd6a0bf56954e229c6e8c3736ec71107f127859030003607eded76e0c25f51f` |
| 13 | `theorem` | [transcendental_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/transcendental-adjoin-iff--1ece250fe92e4dad6fcf73ee.md) | 132 | `result-track:1ece250fe92e4dad6fcf73eec1579d561420a18bce05615c7e6c616384bfb582` |
| 14 | `theorem` | [algebraicIndependent_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/algebraicindependent-adjoin-iff--d76b1f411edc5db837e28bfa.md) | 140 | `result-track:d76b1f411edc5db837e28bfac515056e130d6856d920735c0592e35ffd1be71e` |
| 15 | `theorem` | [isTranscendenceBasis_adjoin_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variant6f3344ef155555e32eb160b0d713dbc54f721d5bf208e63285950448afa20b06.lean/declarations/istranscendencebasis-adjoin-iff--b45ae4302bf7187762e94f2e.md) | 144 | `result-track:b45ae4302bf7187762e94f2ed526b0bed369b3808d0818304b9e91e1ad736795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
