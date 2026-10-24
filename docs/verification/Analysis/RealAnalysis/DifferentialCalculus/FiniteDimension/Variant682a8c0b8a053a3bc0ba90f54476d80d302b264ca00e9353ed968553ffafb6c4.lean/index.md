# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteDimension.Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0896f0020a08a42159ea80981eb23d6e494e691b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0896f0020a08a42159ea80981eb23d6e494e691b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/declarations/contdiffon-clm-apply--392393765f8456316b76446b.md) | 45 | `result-track:392393765f8456316b76446b81afae64009ecdc53c549e3eeaf07b336d774f67` |
| 2 | `theorem` | [contDiff_clm_apply_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/declarations/contdiff-clm-apply-iff--fa1677a8b9ca849a9f437627.md) | 55 | `result-track:fa1677a8b9ca849a9f437627be26836befd0d4ad3cccc219c4788cae46435820` |
| 3 | `theorem` | [contDiff_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/declarations/contdiff-succ-iff-fderiv-apply--ed63bdbfecf5bc38a880f15f.md) | 68 | `result-track:ed63bdbfecf5bc38a880f15faf22a3985b7b8a06f8f38d9099c298325c709882` |
| 4 | `theorem` | [contDiffOn_succ_of_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/declarations/contdiffon-succ-of-fderiv-apply--fe43a262e860c91f43d70d9d.md) | 73 | `result-track:fe43a262e860c91f43d70d9df6bee6dc829b11a54e4b34f09ce127c5d2414753` |
| 5 | `theorem` | [contDiffOn_succ_iff_fderiv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant682a8c0b8a053a3bc0ba90f54476d80d302b264ca00e9353ed968553ffafb6c4.lean/declarations/contdiffon-succ-iff-fderiv-apply--533cf6e3d3f7b4abf393c705.md) | 79 | `result-track:533cf6e3d3f7b4abf393c705f5f0465b054ecbe6b55fc41becaee8d1ef287700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
