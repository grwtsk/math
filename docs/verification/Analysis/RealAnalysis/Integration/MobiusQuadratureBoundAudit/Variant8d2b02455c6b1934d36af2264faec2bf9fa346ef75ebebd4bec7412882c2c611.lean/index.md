# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundAudit.Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f29ec908074cd5bd59eb2b9ec46d7af938a5f941",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f29ec908074cd5bd59eb2b9ec46d7af938a5f941`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logsquarequadrature--2189daafddda40bd36d80e28.md) | 19 | `declaration-track:2189daafddda40bd36d80e288fa6e90e6dd849e65e819d04a38010ac17dbc5f8` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logsquare-monotoneon--bd1cc3b3968850606bdcd38b.md) | 23 | `result-track:bd1cc3b3968850606bdcd38b6a76ca175a7629b9d4cc30b33420407404b580a0` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logsquare-intervalintegrable--a11a5936184ac2a815c5b78b.md) | 28 | `result-track:a11a5936184ac2a815c5b78b6cf62ff6d300593b9db181344e9a7c8a700e5356` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logsquare-integer-bounds--db0ef6b8d4c1baf693df406f.md) | 35 | `result-track:db0ef6b8d4c1baf693df406f2a517d89f9e26280af9587055fd14f3ba9e64391` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logsquarequadrature-abs-le--b4b8910f080ab839b0a7ee72.md) | 68 | `result-track:b4b8910f080ab839b0a7ee72a127ee189033b221f60808637dcf519eb6429116` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare--da037f196f59335a5f342cf5.md) | 107 | `declaration-track:da037f196f59335a5f342cf5e24b2c6bdd96bce7a41dbb84aa34b57dca59b8f7` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratioprimitive--cc652d285fee1623ae1df594.md) | 110 | `declaration-track:cc652d285fee1623ae1df594b0d864700c6d0b6a657f0bd198468c6190db4d43` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare-nonneg--feec3017bed7cfa2dc0abbe1.md) | 113 | `result-track:feec3017bed7cfa2dc0abbe192b7767b00c40663553218033ff39492dae3017c` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare-le-rpow--f20682f32f460a1ffa73f871.md) | 116 | `result-track:f20682f32f460a1ffa73f8711e2e164c186b54acb6fca6e7e693f6ba46dec0eb` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare-integrableon--6b329e3b9025ec96b054b4ba.md) | 134 | `result-track:6b329e3b9025ec96b054b4ba09ff3b65b790bb662c03f178ea81df04dc350337` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare-intervalintegrable--fda1266cab37178a458d77c8.md) | 147 | `result-track:fda1266cab37178a458d77c849e9ba664142b13971bf71990f3814ed1e372f9a` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratioprimitive-hasderivat--8d5318eca56b9448c579d24c.md) | 151 | `result-track:8d5318eca56b9448c579d24ce50245039206c485c6870893e8b9d97cc7cbe3b6` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/tendsto-self-log-square--3c4d0ad3759a37021697c41d.md) | 160 | `result-track:3c4d0ad3759a37021697c41da52ac8ed8c26166ed9f503551ff1451ea40bb892` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratioprimitive-tendsto-zero--b72d0877cd65341d4aeaf749.md) | 175 | `result-track:b72d0877cd65341d4aeaf749923ebb8bb88498374621fc8c75719b95acac000a` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/integral-logratiosquare--96a28c84ff9f7c8224489267.md) | 191 | `result-track:96a28c84ff9f7c8224489267d88781c4d6982ea8530db9b3fe73e027b2548f76` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/logratiosquare-antitone--4cdf9591ab19b484c62b115e.md) | 207 | `result-track:4cdf9591ab19b484c62b115e1b2aafa5d0e06e77b88ee5a89c604524902d0f4b` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/sum-logratiosquare-le-integral--9d8b2cf6710ac71c736358e1.md) | 216 | `result-track:9d8b2cf6710ac71c736358e12c5d828202fda2e581b8d5c0e41cebf34bc3ed33` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/sum-logratiosquare-le--533aa54d0a72b9522041a4dc.md) | 254 | `result-track:533aa54d0a72b9522041a4dc07e911807ff834fc27ad820c9bbdb6f8e3744194` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/mobiusquadratureerror--6a3474c6e4f911449fd81e8d.md) | 261 | `declaration-track:6a3474c6e4f911449fd81e8d68f772767c2f142948d268651a14aceaf91781d3` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/quotient-ge-one--f3fc228f74fa97484d774861.md) | 266 | `result-track:f3fc228f74fa97484d774861d9994832cae2ffebb4336653cebafbf767de38fa` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/mobiusquadratureerror-abs-le--32b330a145bd725f75d24aae.md) | 275 | `result-track:32b330a145bd725f75d24aae29a576a939ef1f488bfc9d2e421a6bc658c33300` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/mobius-prefix-eq-integral-add-error--c930dece4d397536ee1cf026.md) | 295 | `result-track:c930dece4d397536ee1cf0269317e6739b26587592c07d8f79e1979bc402d6cd` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant8d2b02455c6b1934d36af2264faec2bf9fa346ef75ebebd4bec7412882c2c611.lean/declarations/mobius-prefix-integral-abs-le--8057426262e97a61de49601b.md) | 307 | `result-track:8057426262e97a61de49601b8d22ea590b7f4f8453b9a188ae9ebd5b392a6935` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
