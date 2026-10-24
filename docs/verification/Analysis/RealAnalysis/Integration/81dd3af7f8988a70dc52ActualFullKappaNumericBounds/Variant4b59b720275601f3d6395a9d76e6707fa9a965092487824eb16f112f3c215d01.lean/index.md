# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.81dd3af7f8988a70dc52ActualFullKappaNumericBounds.Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2b6bddf7955fdae38a35d95f5008a08048e4fb7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2b6bddf7955fdae38a35d95f5008a08048e4fb7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceFullPositiveKappa` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualUpperCoefficientMoment_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualuppercoefficientmoment-abs-le--f881ebd0f299ac4db60eb29e.md) | 29 | `result-track:f881ebd0f299ac4db60eb29e4eb15530fd21d064d70d25089e229611434f4a1a` |
| 2 | `theorem` | [actualUpperKappa_succ_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualupperkappa-succ-abs-le--eeebce34961a3e7f4828db5f.md) | 48 | `result-track:eeebce34961a3e7f4828db5f8a755b350211d0c30801b82ea070e90092108e39` |
| 3 | `theorem` | [actualFullPositiveKappa_succ_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualfullpositivekappa-succ-abs-le--48ef09c58633e2e5cc5b74ee.md) | 73 | `result-track:48ef09c58633e2e5cc5b74ee455a8cb4a60934d6dd836581fe01e73ffcd287d1` |
| 4 | `theorem` | [actualFullPositiveKappa_one_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualfullpositivekappa-one-bounds--f1add1371c622ee28cabd1a8.md) | 92 | `result-track:f1add1371c622ee28cabd1a84a86eb905501c7b9da1a4e92900c2992c23e3820` |
| 5 | `theorem` | [actualFullPositiveKappa_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualfullpositivekappa-one-pos--a9e74a39cda5a951a11d8215.md) | 102 | `result-track:a9e74a39cda5a951a11d8215dbbf1a1a0f2d5cc1450ef555f0c85aca7a81b67f` |
| 6 | `theorem` | [actualFullPositiveKappa_four_abs_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/declarations/actualfullpositivekappa-four-abs-bounds--dc9b28eecfc62cb717107891.md) | 106 | `result-track:dc9b28eecfc62cb717107891f06ba5f774a90a142c3f1a05700f36f171768b52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
