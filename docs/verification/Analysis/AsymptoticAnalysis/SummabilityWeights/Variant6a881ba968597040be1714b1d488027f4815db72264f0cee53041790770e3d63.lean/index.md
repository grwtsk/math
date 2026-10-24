# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SummabilityWeights.Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f13519f718c7ec4ccd6ba3cb705a114b7eb46d0b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f13519f718c7ec4ccd6ba3cb705a114b7eb46d0b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posWeightReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/posweightreal--c687541b8ddd6dcb4b15bee1.md) | 17 | `declaration-track:c687541b8ddd6dcb4b15bee12e6af2fdb937b1181260e9cb55125a53f245b3e8` |
| 2 | `theorem` | [posWeightReal_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/posweightreal-zero--9b88dd3bef0a385319ef8147.md) | 22 | `result-track:9b88dd3bef0a385319ef8147f60faf4111ac259b70bcc2f66c259a96af0ff10c` |
| 3 | `theorem` | [posWeightReal_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/posweightreal-one--db7cb3f0f3417630a489f8d2.md) | 27 | `result-track:db7cb3f0f3417630a489f8d2dbbaaa02c508e6a39856dfb235f91e8960bff62a` |
| 4 | `theorem` | [posWeightReal_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/posweightreal-nonneg--6070a5b08dbef72c494b827a.md) | 32 | `result-track:6070a5b08dbef72c494b827a1b1b0feee59e7cf145cf79d4a0daf5bcf6a8e33f` |
| 5 | `theorem` | [summable_posWeightReal_of_one_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/summable-posweightreal-of-one-lt--79f9cbc24e5b0fd9f0caa2af.md) | 40 | `result-track:79f9cbc24e5b0fd9f0caa2af409b995d1c27b121054540579796e5396ffb3b88` |
| 6 | `theorem` | [summable_real_of_abs_bound_by_posWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/summable-real-of-abs-bound-by-posweight--eaab4a3f35f672371cf927e1.md) | 56 | `result-track:eaab4a3f35f672371cf927e15565f49a0589f19789e5a747ab7d0d47b968738a` |
| 7 | `theorem` | [summable_complex_of_norm_bound_by_posWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/SummabilityWeights/Variant6a881ba968597040be1714b1d488027f4815db72264f0cee53041790770e3d63.lean/declarations/summable-complex-of-norm-bound-by-posweight--eab84de247737f205f16250f.md) | 68 | `result-track:eab84de247737f205f16250ffd42132e50b6365330cc50481dca76b8311ddb6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
