# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af60b4fe3fd323d003313bf62d4705b7e7cfb53b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af60b4fe3fd323d003313bf62d4705b7e7cfb53b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/topartialhomeomorph--022b0b10352fde6cb36bdb8e.md) | 35 | `declaration-track:022b0b10352fde6cb36bdb8e4e94d16c8710d1532da78c648a517c78132d2676` |
| 2 | `theorem` | [toPartialHomeomorph_coe](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/topartialhomeomorph-coe--e19ed4e5828a71d108b4c913.md) | 42 | `result-track:e19ed4e5828a71d108b4c9138f4a70fb121f7b5192777c7de9d63cdefd10f3e8` |
| 3 | `theorem` | [mem_toPartialHomeomorph_source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/mem-topartialhomeomorph-source--4ad5a2acc05fff8109e8d90b.md) | 47 | `result-track:4ad5a2acc05fff8109e8d90b6bc91ca3bc7405d2581b62090d442aa36bdd84bb` |
| 4 | `theorem` | [image_mem_toPartialHomeomorph_target](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/image-mem-topartialhomeomorph-target--40387c400d33481f13db6eba.md) | 52 | `result-track:40387c400d33481f13db6eba2d0fccd47ff7347cb25593bc8c153101a3dec471` |
| 5 | `def` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/localinverse--90f9d725d92be4b4c269b092.md) | 59 | `declaration-track:90f9d725d92be4b4c269b092db4e766448d61f7c502733ff3e7332bcea481bac` |
| 6 | `theorem` | [localInverse_apply_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/localinverse-apply-image--11054c828d7cde1606325b0a.md) | 63 | `result-track:11054c828d7cde1606325b0a8e685f44dcc911a5b067226bff6d158ae749099c` |
| 7 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant74e31e349783c52f2869cd46564d36b2945138df8e21d5b1176b00c09d31fd72.lean/declarations/to-localinverse--e3201a865107294e8f7cdd65.md) | 70 | `result-track:e3201a865107294e8f7cdd659bf5b939869a5617eab71fc77f6a69c83e460041` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
