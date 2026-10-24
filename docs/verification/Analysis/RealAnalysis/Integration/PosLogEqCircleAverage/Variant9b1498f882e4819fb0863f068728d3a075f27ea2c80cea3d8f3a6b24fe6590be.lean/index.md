# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PosLogEqCircleAverage.Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf5b260515787adb57c1b012687a2ddbc02c2599",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf5b260515787adb57c1b012687a2ddbc02c2599`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [circleIntegrable_log_norm_sub_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleintegrable-log-norm-sub-const--6d62d659ae904abdd64bb302.md) | 37 | `result-track:6d62d659ae904abdd64bb3026c4ca2ff10f09d77a5a74c717058110bb59fc496` |
| 2 | `theorem` | [circleAverage_log_norm_sub_const₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const--cc68eb2950e688577bf2f4ae.md) | 48 | `result-track:cc68eb2950e688577bf2f4ae250c97e36e8f02090727550e2336d16f526167ec` |
| 3 | `lemma` | [circleAverage_log_norm_sub_const₁_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const-integral--14b2e86d4f8c9fe08e14fa35.md) | 79 | `result-track:14b2e86d4f8c9fe08e14fa35e05df42ba29bec34e51925a50adba3a083bee969` |
| 4 | `theorem` | [circleAverage_log_norm_sub_const₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const--a080f7f8bd569f13e3b6cf87.md) | 109 | `result-track:a080f7f8bd569f13e3b6cf877633f3ad89bd52867e807787458f66c81ce893ec` |
| 5 | `theorem` | [circleAverage_log_norm_sub_const₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const--0a012ea111d5ae267abb8c2f.md) | 163 | `result-track:0a012ea111d5ae267abb8c2f30967e8428d9f37afee25f0f14e1cd478529ba09` |
| 6 | `theorem` | [circleAverage_log_norm_sub_const_eq_posLog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const-eq-poslog--d4ee420d7e3e8f5959c9fc7a.md) | 181 | `result-track:d4ee420d7e3e8f5959c9fc7afe703cd64b546ad85312735b34a7372cdc05eb48` |
| 7 | `theorem` | [circleAverage_log_norm_add_const_eq_posLog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-add-const-eq-poslog--b82da00533c7e33f7abfa689.md) | 196 | `result-track:b82da00533c7e33f7abfa689db23490cd746cbcb929790841eb97670c59ea897` |
| 8 | `theorem` | [circleAverage_log_norm_sub_const_eq_log_radius_add_posLog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const-eq-log-radius-add-poslog--b6256ebf86bae08d546b4c89.md) | 205 | `result-track:b6256ebf86bae08d546b4c892fe47ffecfa91f92bd65db4568648f43a012efcb` |
| 9 | `lemma` | [circleAverage_log_norm_sub_const_of_mem_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PosLogEqCircleAverage/Variant9b1498f882e4819fb0863f068728d3a075f27ea2c80cea3d8f3a6b24fe6590be.lean/declarations/circleaverage-log-norm-sub-const-of-mem-closedball--811c5f8e99fa3fab8c7d6626.md) | 247 | `result-track:811c5f8e99fa3fab8c7d66266b01fc3d62293141703ab87d3516b05bdfe92751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
