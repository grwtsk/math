# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62ca036ff5c2fd1b16909635969d9fdad44efb49",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62ca036ff5c2fd1b16909635969d9fdad44efb49`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/topartialhomeomorph--10f9b866e89bc1d17560bb03.md) | 27 | `declaration-track:10f9b866e89bc1d17560bb032deb8dc3a80cc025a911dff2260e91a507e636b6` |
| 2 | `theorem` | [toPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/topartialhomeomorph-coe--3c8ee7f93ecca5f0eecf4f3a.md) | 34 | `result-track:3c8ee7f93ecca5f0eecf4f3adf9a6c8b2a2ccaceac9e54cdf51e5f46aed4d53b` |
| 3 | `theorem` | [mem_toPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/mem-topartialhomeomorph-source--a065e5535a5eb0e81a43a946.md) | 39 | `result-track:a065e5535a5eb0e81a43a946233fbb3a40472e3b6ad757af86f6f26d7679ab6e` |
| 4 | `theorem` | [image_mem_toPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/image-mem-topartialhomeomorph-target--def0673702c1e9073aa45727.md) | 44 | `result-track:def0673702c1e9073aa457274b84c85ee8046e83c08887e2713b5823d6ee4f04` |
| 5 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/localinverse--69d4da10c8de5dcfde65b0a6.md) | 51 | `declaration-track:69d4da10c8de5dcfde65b0a6a8e7667a6932ad257174e89494dfced5c78c4659` |
| 6 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/localinverse-apply-image--da96628734e07816fcf5751c.md) | 55 | `result-track:da96628734e07816fcf5751cb05d0e885a1f382e7b7f214c40d07ee2a06c58af` |
| 7 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean/declarations/to-localinverse--16cb97121825da39de459b8e.md) | 62 | `result-track:16cb97121825da39de459b8e7a94c099ad6ca1b2437e73b49a1cf2f76cf624d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
