# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60c52d62e928c1d786dccf2d68e4ed84ece64665",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60c52d62e928c1d786dccf2d68e4ed84ece64665`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedPoissonBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiSignedTouchardPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardpolynomial--b8638e388cda43acf853e867.md) | 34 | `declaration-track:b8638e388cda43acf853e86789d9ea753678b7b0844afd85e4b00db479c4a794` |
| 2 | `theorem` | [thetaPhiSignedTouchardPolynomial_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardpolynomial-coeff--3a53534b1ebdf18034a40ca0.md) | 40 | `result-track:3a53534b1ebdf18034a40ca03720c885f60f366ef340dd87a45223ea2feee827` |
| 3 | `theorem` | [thetaPhiSignedTouchardPolynomial_eval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardpolynomial-eval--d988258b4df30a01d0af5add.md) | 56 | `result-track:d988258b4df30a01d0af5addc82aed7b5ea8fff692b76d68f15a874f3510925c` |
| 4 | `def` | [thetaPhiSignedTouchardOperator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardoperator--8ce3f7abff2d3773271afbfc.md) | 70 | `declaration-track:8ce3f7abff2d3773271afbfc6785c1f424cab2c094d04e1468f49dd284affe03` |
| 5 | `theorem` | [thetaPhiSignedTouchardOperator_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardoperator-apply--e31dbbcff63465e76cdccf98.md) | 87 | `result-track:e31dbbcff63465e76cdccf98f6b7839c8ce1333bd0f5c2d3198dd3933d103b4d` |
| 6 | `theorem` | [thetaPhiSignedTouchardPolynomial_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardpolynomial-zero--bda86f6a9776162627fb32e3.md) | 109 | `result-track:bda86f6a9776162627fb32e371198b9e00fbf284e668761c7d72cff45dc574a2` |
| 7 | `theorem` | [thetaPhiSignedTouchardOperator_pow_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphisignedtouchardoperator-pow-one--3354c2bb96d0b35a4a3aad63.md) | 115 | `result-track:3354c2bb96d0b35a4a3aad63d9df06b02ad47c83c6a3a067cf52e29d6261f794` |
| 8 | `def` | [thetaPhiBaseEndomorphism](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibaseendomorphism--f0e51364e25536bd3f5b3e58.md) | 127 | `declaration-track:f0e51364e25536bd3f5b3e582c16016f9ea47b47e2af26c31d2a2461b70c7f5e` |
| 9 | `theorem` | [thetaPhiBaseEndomorphism_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibaseendomorphism-apply--a24167956a227a356162ccfe.md) | 134 | `result-track:a24167956a227a356162ccfed82efa69cf5599580e73b78481ee3cf336f02e1a` |
| 10 | `theorem` | [thetaPhiBasePolynomial_eq_endomorphism_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibasepolynomial-eq-endomorphism-pow--dbf0e83b107a1a1742e95e1a.md) | 152 | `result-track:dbf0e83b107a1a1742e95e1a4c55083ebca69d5654c86f244cdc8f255a24ce17` |
| 11 | `theorem` | [smul_end_pow_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/smul-end-pow-apply--b17dc597d77bdfdec9137064.md) | 166 | `result-track:b17dc597d77bdfdec9137064af391d919023753882b363e37e54f00e4ae4ceda` |
| 12 | `theorem` | [scaled_touchard_pow_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/scaled-touchard-pow-one--32588c68ac18faeca660cb14.md) | 195 | `result-track:32588c68ac18faeca660cb146798d20a8c969fc14020a309c1e61c4b945bb79f` |
| 13 | `theorem` | [scaled_id_pow_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/scaled-id-pow-apply--1ec94a4e13ccb5a52419d585.md) | 205 | `result-track:1ec94a4e13ccb5a52419d5854a539e1233d2195eb28efa4b47e8815fbc41df65` |
| 14 | `theorem` | [scaled_touchard_commute_scaled_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/scaled-touchard-commute-scaled-id--a821ecd7fbf2bf7ed62fc898.md) | 214 | `result-track:a821ecd7fbf2bf7ed62fc898f12aa446bb275d8694462bcbe1e8decbc510a740` |
| 15 | `theorem` | [thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibaseendomorphism-pow-one-eq-touchard-sum--de056f23d156193733bf7dc3.md) | 224 | `result-track:de056f23d156193733bf7dc303f7b53eb29cee5509ab68751405fd3d5ac13e24` |
| 16 | `theorem` | [thetaPhiBasePolynomial_eq_generalizedTouchardPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibasepolynomial-eq-generalizedtouchardpolynomial--567130d0ed2834bfc3e48081.md) | 262 | `result-track:567130d0ed2834bfc3e480814946aa8b9f86bcd3b5578b42f73289722362d9d6` |
| 17 | `theorem` | [thetaPhiBaseGeneralizedTouchardIdentification](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibasegeneralizedtouchardidentification--cd8c7328a7fbad69de65ce0e.md) | 275 | `result-track:cd8c7328a7fbad69de65ce0e754491be6fd6f248f2550463ed23261992d7f793` |
| 18 | `theorem` | [thetaPhiBaseSignedMomentRepresentation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant4d9073bc179976e9f427640964ffa9ada6af8082fc0d660d793300c3a9e602dd.lean/declarations/thetaphibasesignedmomentrepresentation--0775cf9cfe42fcf3b0330bde.md) | 289 | `result-track:0775cf9cfe42fcf3b0330bde86728d5680fd01d47a385697d82104c5496eebc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
