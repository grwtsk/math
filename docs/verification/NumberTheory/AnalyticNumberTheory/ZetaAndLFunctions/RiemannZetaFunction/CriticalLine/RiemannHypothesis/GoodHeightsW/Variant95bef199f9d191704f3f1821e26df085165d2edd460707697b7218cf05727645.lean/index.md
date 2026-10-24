# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeightsW.Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab7c296b64e6e09176c92f88367da030b74e93ac",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab7c296b64e6e09176c92f88367da030b74e93ac`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Count` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_L2_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/declarations/norm-l2-le-log--6265c1f09d6e47f77847fc07.md) | 45 | `result-track:6265c1f09d6e47f77847fc07f803ba1f3614289afdbc348112e6ed2fc4625b00` |
| 2 | `theorem` | [logDeriv_hardyW_eq_reflect](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/declarations/logderiv-hardyw-eq-reflect--0462c48ec1f5d9ab997799fd.md) | 81 | `result-track:0462c48ec1f5d9ab997799fde4d5634bb7da32029eed5c89bd643615ead252c6` |
| 3 | `theorem` | [L2_add_logDeriv_hardyW_one_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/declarations/l2-add-logderiv-hardyw-one-sub--7f66c90fc5b68eb91fafaeb0.md) | 114 | `result-track:7f66c90fc5b68eb91fafaeb0a0dc458ad605a35971947ea51342db2cd5745653` |
| 4 | `theorem` | [hardyW_good_heights](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeightsW/Variant95bef199f9d191704f3f1821e26df085165d2edd460707697b7218cf05727645.lean/declarations/hardyw-good-heights--6350fbe3f2384247a563cf94.md) | 121 | `result-track:6350fbe3f2384247a563cf94299f7b30ffff350289f7d349437b1773b0e20c3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
