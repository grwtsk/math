# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPole.Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af9d1221b3dba58e68f7a26c10afecfb7911a838",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af9d1221b3dba58e68f7a26c10afecfb7911a838`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/zetapolefactor--33bf981472c0e14564f6c9b9.md) | 18 | `declaration-track:33bf981472c0e14564f6c9b9974a88a7d78feaebc81f780b8d9b24599859407e` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/zetapolefactor-zero--a746186bca7570c4e659484e.md) | 20 | `result-track:a746186bca7570c4e659484e73ee07112854714755e6018704ccf2c83c4eafa0` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/zetapolefactor-off--0eb40fcaf77dc4b5b2e4ddd9.md) | 23 | `result-track:0eb40fcaf77dc4b5b2e4ddd98fc84781b91fb48d13c900c2e027deb9d756fc80` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/zetapolefactor-limit--bc2fca3e2f7d1591e2b77986.md) | 27 | `result-track:bc2fca3e2f7d1591e2b7798623ecd14352b9654e60f6bb0bd0ab1b38a53d3cea` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/zetapolefactor-analyticat-zero--9e668ca83084c3eadae17785.md) | 42 | `result-track:9e668ca83084c3eadae177859ca174c5ae1b4c55300c5afbc203ca5fc6183fa1` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta--55bfc1b543ea720788e509ba.md) | 55 | `declaration-track:55bfc1b543ea720788e509ba72502457376e026486efacccff3cd7406d121002` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-zero--640c81bf5c45ffa7a42960a4.md) | 57 | `result-track:640c81bf5c45ffa7a42960a44f254a9de6d17d57f7184d75cd3835ab751c9f9c` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-off--df02ab42efe0fd032af86577.md) | 60 | `result-track:df02ab42efe0fd032af86577d3d123c373b57dbeb33e7f1f6a41d8a70e08ab0d` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-eq-div-factor--72336c7e1c95ef1c9ebf9580.md) | 64 | `result-track:72336c7e1c95ef1c9ebf9580fbac9498636a9355183c0226cf80cde35d84464c` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-analyticat-zero--daac54ad8894e386684497ef.md) | 71 | `result-track:daac54ad8894e386684497ef741e41fe8f8598baf24cf2f776d746a01b4abe53` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-hasderivat-zero--0bcc7a79a5872205aa267349.md) | 77 | `result-track:0bcc7a79a5872205aa26734957c6ec58c6aaabcee03379ea16f7190cae9e8670` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/reciprocalzeta-eventually-ne-zero--631ce4ea13e1f55c06618ce2.md) | 85 | `result-track:631ce4ea13e1f55c06618ce21cec751e24ace66a0a0592dd0205908d624ee39d` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand--0af3733132db1f57b1b49d1c.md) | 96 | `declaration-track:0af3733132db1f57b1b49d1cb1be8bca3677b27d81513871d2b87fd5898471bd` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand-factor--54ffa5a4f71f9ab43a1aaad2.md) | 99 | `result-track:54ffa5a4f71f9ab43a1aaad22b9dffd4610bff7ba74878805ee7379245afd737` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/perronnumerator-analyticat-zero--3f39f22479a3210b824d054e.md) | 107 | `result-track:3f39f22479a3210b824d054e334c3960193c08d15b58f2ea3f349767a7b4d0af` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand-meromorphicat-zero--ebe7ff6c7760eb98770b0766.md) | 116 | `result-track:ebe7ff6c7760eb98770b0766c5eb9e43c5b571c007b6d1b1170c2bbbadd37da3` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand-order-zero--2a42b37416f0c317cbf1eef1.md) | 123 | `result-track:2a42b37416f0c317cbf1eef1d0badc31f723573777efefa1ea096ff1a6a179c1` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand-residue-limit--2c46c6129caf6c44bba48a3a.md) | 133 | `result-track:2c46c6129caf6c44bba48a3a21434500b98cc1a462b79d479a4f1de8a85d83c3` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variant50b05234396f0538035faf6585c3898157ac3b7bbcc88673c0bc2515ef76a030.lean/declarations/smoothedperronintegrand-residue-one--323e054939be6dd89003d5ed.md) | 144 | `result-track:323e054939be6dd89003d5edd4455685a2b7ec1a9085c991cb20c7a231ceaaba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
