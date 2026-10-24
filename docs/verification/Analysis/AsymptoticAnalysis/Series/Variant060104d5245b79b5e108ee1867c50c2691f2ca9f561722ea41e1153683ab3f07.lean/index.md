# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42a69717e61f05e5bc2d4b708cb0a927f7891a29",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42a69717e61f05e5bc2d4b708cb0a927f7891a29`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.WithTop` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendstoUniformlyOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/tendstouniformlyon-tsum--e779e8a3ace1094aaf5c1824.md) | 39 | `result-track:e779e8a3ace1094aaf5c1824ddcdc54de0552ea628e47735a0147bc85e34e590` |
| 2 | `theorem` | [tendstoUniformlyOn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/tendstouniformlyon-tsum-nat--c0340aa1c22f269f4e363490.md) | 55 | `result-track:c0340aa1c22f269f4e363490d26708bef466608d62f1ca332d854a64ec90173b` |
| 3 | `theorem` | [tendstoUniformly_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/tendstouniformly-tsum--4124dcff4e67d73ae70d22d7.md) | 64 | `result-track:4124dcff4e67d73ae70d22d7a15e1bf846e999ae47d0efca90bd4a51d3fffb46` |
| 4 | `theorem` | [tendstoUniformly_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/tendstouniformly-tsum-nat--3692fcb5d2179f4cbe8f05c0.md) | 71 | `result-track:3692fcb5d2179f4cbe8f05c0128ca4e83fe1ba5212d39c20b72a8d5948ce1916` |
| 5 | `theorem` | [continuousOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/continuouson-tsum--1949abbf531a1e6bda5218a4.md) | 80 | `result-track:1949abbf531a1e6bda5218a40c7378416e4f31bec0d844399f3a14ce5531cbca` |
| 6 | `theorem` | [continuous_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/continuous-tsum--99e1719ed3c4acaa1b5c25f2.md) | 91 | `result-track:99e1719ed3c4acaa1b5c25f2b0f6e8c742d9f1b4a60caba586226ccfab28be7d` |
| 7 | `theorem` | [summable_of_summable_hasFDerivAt_of_isPreconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/summable-of-summable-hasfderivat-of-ispreconnected--841d37423dd36ec734067559.md) | 106 | `result-track:841d37423dd36ec734067559cb095fb74396ea915272836d85dc62e68a878d32` |
| 8 | `theorem` | [hasFDerivAt_tsum_of_isPreconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/hasfderivat-tsum-of-ispreconnected--f2425821bdf26df971b20093.md) | 123 | `result-track:f2425821bdf26df971b20093dd56044b6c9f60647bf8039e26f44b85045f2dad` |
| 9 | `theorem` | [summable_of_summable_hasFDerivAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/summable-of-summable-hasfderivat--aa0d716e4777b40e5e0af96a.md) | 141 | `result-track:aa0d716e4777b40e5e0af96a4c74c014491eeca4efa76a4a45218a69d14b5256` |
| 10 | `theorem` | [hasFDerivAt_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/hasfderivat-tsum--6ae7e17543e353458258df32.md) | 152 | `result-track:6ae7e17543e353458258df327acb7aac2c46f7138030d6ff0ace4ba51c236eae` |
| 11 | `theorem` | [differentiable_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/differentiable-tsum--7f1cec0133a3af5d1b3a85a8.md) | 164 | `result-track:7f1cec0133a3af5d1b3a85a874946a2ae7d895fd31894afc1d4c754dd414f162` |
| 12 | `theorem` | [fderiv_tsum_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/fderiv-tsum-apply--0fb4c271d65cc07f8a0bf01a.md) | 176 | `result-track:0fb4c271d65cc07f8a0bf01a4c74d2054c2eb253cd305a16e9b43db3b57ccaf6` |
| 13 | `theorem` | [fderiv_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/fderiv-tsum--ced631921052418812837c3a.md) | 182 | `result-track:ced631921052418812837c3abe61bf4d5246825e080ffa6556ac9f10ac35e94c` |
| 14 | `theorem` | [iteratedFDeriv_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/iteratedfderiv-tsum--de68f1f48c2cde84316be873.md) | 193 | `result-track:de68f1f48c2cde84316be873ba1a1d72c2476b154fd921903f50e3a3fa49fffc` |
| 15 | `theorem` | [iteratedFDeriv_tsum_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/iteratedfderiv-tsum-apply--7c7ed4267223991f8a61d22e.md) | 217 | `result-track:7c7ed4267223991f8a61d22e37b16528866d910807c2696c9c719865eb608bfb` |
| 16 | `theorem` | [contDiff_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/contdiff-tsum--57904666592e1054984d904f.md) | 228 | `result-track:57904666592e1054984d904fe5e1181fee87eb4d32a611d38568c69b8a35c0f4` |
| 17 | `theorem` | [contDiff_tsum_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variant060104d5245b79b5e108ee1867c50c2691f2ca9f561722ea41e1153683ab3f07.lean/declarations/contdiff-tsum-of-eventually--dc77a628c383d662b41caa57.md) | 255 | `result-track:dc77a628c383d662b41caa579dd09edd2a0b34be4ee7b94c088986c442082293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
