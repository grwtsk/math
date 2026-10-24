# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adbd53206d1803e0d70d8a876f0b20e63fa31777",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adbd53206d1803e0d70d8a876f0b20e63fa31777`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfcl-integral--86ff5e72fd02982daad31276.md) | 43 | `result-track:86ff5e72fd02982daad312765f8b271f1775b0af33b92ec22f7d10dcf0edf765` |
| 2 | `lemma` | [cfcHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfchom-integral--b45468a7ce7b664972c21d2b.md) | 48 | `result-track:b45468a7ce7b664972c21d2b6b17c5f5f8acca1eb585054e8da7e5528ef08d93` |
| 3 | `lemma` | [cfc_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-integral--cb444ef2ce74a4ea83460d40.md) | 55 | `result-track:cb444ef2ce74a4ea83460d40a6ad89e149c557f8b9bf760fc30eb891e25b3e26` |
| 4 | `lemma` | [cfc_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-integral--5f0d788a94afb4ae603c7324.md) | 78 | `result-track:5f0d788a94afb4ae603c7324831d278e0304f882d70c280739f2b5dd6c7139ee` |
| 5 | `lemma` | [cfcₙL_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-l-integral--daaaf0acda9b4af40e8d958f.md) | 97 | `result-track:daaaf0acda9b4af40e8d958fdad9cfca7d75ab5fdafa64b455f79f7a0d26133d` |
| 6 | `lemma` | [cfcₙHom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-hom-integral--546ff6913dd652a0abaf7287.md) | 102 | `result-track:546ff6913dd652a0abaf7287341a9019ce72c4cb6d67ebba49c7677138132eb8` |
| 7 | `lemma` | [cfcₙ_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-integral--7dca5705e657f768f8457e1e.md) | 109 | `result-track:7dca5705e657f768f8457e1e0a92a866d7c7b0282b3bd35a77aefd8ef43add3a` |
| 8 | `lemma` | [cfcₙ_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantb6c10e775c252aba31e8e6c871c24bd79c9c47d087aac0896d0131665bdb14ea.lean/declarations/cfc-integral--fbc347f71e945286f5171ef6.md) | 134 | `result-track:fbc347f71e945286f5171ef6e85f5948bb07fe58c42426f23d1ec1aa784fe29d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
