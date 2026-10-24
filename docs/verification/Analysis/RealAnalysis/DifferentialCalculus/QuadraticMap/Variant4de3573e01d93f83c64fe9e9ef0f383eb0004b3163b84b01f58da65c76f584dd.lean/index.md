# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuadraticMap.Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44ebd79a0140d5879c25c9438603f4a04e13459a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44ebd79a0140d5879c25c9438603f4a04e13459a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLineDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean/declarations/haslinederivat--eb9921a677c4415c7614eeae.md) | 24 | `result-track:eb9921a677c4415c7614eeaefa2abe8adb29c34211ad443c40a66b9db5f17fed` |
| 2 | `theorem` | [lineDifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean/declarations/linedifferentiableat--fc71b0d35dea71656fc9d85a.md) | 31 | `result-track:fc71b0d35dea71656fc9d85a172f703bf2dd0be22a87893fb822c94b8926c475` |
| 3 | `theorem` | [lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuadraticMap/Variant4de3573e01d93f83c64fe9e9ef0f383eb0004b3163b84b01f58da65c76f584dd.lean/declarations/linederiv--c6c61b98462bcf567a244dac.md) | 35 | `result-track:c6c61b98462bcf567a244dac67d4385b490a147b66f8b6a9949482aa1a8971f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
