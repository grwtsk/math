# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Li2Connection.Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e06a1a11ee0a584061711418722f38a074d158",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e06a1a11ee0a584061711418722f38a074d158`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel.Log1p` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/g--0f746e53258ac92bb4b4b42c.md) | 46 | `declaration-track:0f746e53258ac92bb4b4b42c75d675a887f77efcb3c53ac1aa4302946d338b8f` |
| 2 | `def` | [li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li2--ee9d5df81400d67e0e1dd2fd.md) | 49 | `declaration-track:ee9d5df81400d67e0e1dd2fd6a2276a7f651549c75262c0035af7e68d8f83748` |
| 3 | `def` | [li_pv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li-pv--f67790d626e861f5d8f1cfeb.md) | 55 | `declaration-track:f67790d626e861f5d8f1cfebd06c1cfee8e1cccae8eb20d81ead356132b87f20` |
| 4 | `theorem` | [integral_sub_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/integral-sub-left--8cc941fbd3f684bc408247dd.md) | 64 | `result-track:8cc941fbd3f684bc408247dd26b93b53aad1a6e715ae8b6d34c4aa54a7b775b3` |
| 5 | `theorem` | [integral_sub_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/integral-sub-right--dd832aa5f42de55386496d99.md) | 79 | `result-track:dd832aa5f42de55386496d99703d699d9ce6e1eaa003c897ea49253a3e1fe626` |
| 6 | `theorem` | [log_one_minus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/log-one-minus-integrable--62d4fb9c48603c0a2f269b51.md) | 109 | `result-track:62d4fb9c48603c0a2f269b51ea0b0aceb69049be3db44912c4ac8c9c84d8f92a` |
| 7 | `theorem` | [log_one_plus_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/log-one-plus-integrable--3bfedda633d0848a651dc3d0.md) | 116 | `result-track:3bfedda633d0848a651dc3d03a0175348fc4cf8d17a7e34200a3261728e1d92c` |
| 8 | `theorem` | [pv_integral_eq_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/pv-integral-eq-symmetric--c9f907e751f7360ba1afaf27.md) | 121 | `result-track:c9f907e751f7360ba1afaf27e5a309bfd45ff14781fffc9b4054a405e1ed83ed` |
| 9 | `theorem` | [g_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/g-intervalintegrable--464d4e19dd5e482315f0500d.md) | 131 | `result-track:464d4e19dd5e482315f0500d87fd2de2a7b5facfee128783073a21ae3a1d14c8` |
| 10 | `theorem` | [limit_integral_g](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/limit-integral-g--42be1fd02cbba466818b5e90.md) | 137 | `result-track:42be1fd02cbba466818b5e904b9da4826ee6f96785f9d1f1e78db15d4dd63661` |
| 11 | `theorem` | [li_pv_two_eq_li2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li-pv-two-eq-li2--ec2cccbb7af5af9b1ea0863c.md) | 149 | `result-track:ec2cccbb7af5af9b1ea0863cb496f37d21d31922e1fcc1974f296cd4ac212613` |
| 12 | `theorem` | [li_pv_two_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li-pv-two-lower--9c58bdc87df680d64027dd83.md) | 161 | `result-track:9c58bdc87df680d64027dd8324e4005d66dd41addb3ce0c36f69806a40e69679` |
| 13 | `theorem` | [li_pv_two_upper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li-pv-two-upper--9c70f63fb28fff52e8915c37.md) | 167 | `result-track:9c70f63fb28fff52e8915c37f4631bf462d3674bdb2ab086653c79828311171d` |
| 14 | `theorem` | [li_pv_two_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Li2Connection/Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4.lean/declarations/li-pv-two-bounds--7f7e673c537d7b6805d3ce2f.md) | 173 | `result-track:7f7e673c537d7b6805d3ce2f2491de04113b415c448a34ff0ca77109b31aee74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
