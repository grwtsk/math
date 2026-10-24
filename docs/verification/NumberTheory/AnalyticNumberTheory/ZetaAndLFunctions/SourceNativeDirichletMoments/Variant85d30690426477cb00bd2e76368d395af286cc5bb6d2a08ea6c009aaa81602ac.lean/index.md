# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceNativeDirichletMoments.Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1365dbb615c3dd69af47e3d714b90b88d6b7138a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1365dbb615c3dd69af47e3d714b90b88d6b7138a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/declarations/dirichletmoment--2a9ace3f2248868b76c47e81.md) | 15 | `declaration-track:2a9ace3f2248868b76c47e81bba7c7637a03de00160f0554aa799722fcf5de4a` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/declarations/dirichletmoment-nonneg--cc1607d35cfa4ffc8d0f9b13.md) | 19 | `result-track:cc1607d35cfa4ffc8d0f9b13259a3d3469233ae6aaf746bde54cb05cde188656` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/declarations/mangoldt-abscissa-le-one--14e4a903359a1945063dbe1f.md) | 26 | `result-track:14e4a903359a1945063dbe1f3e4f9e386a5993c33b1fb11679f5bef5f3ada766` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/declarations/iterate-logmul-eq--cd704f23182dd514331c1b9a.md) | 32 | `result-track:cd704f23182dd514331c1b9ad7cfa2912fbf87f24d3ef31f7f5ac8945e132a26` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceNativeDirichletMoments/Variant85d30690426477cb00bd2e76368d395af286cc5bb6d2a08ea6c009aaa81602ac.lean/declarations/dirichletmoment-summable--d8f3408757e3017d46a3e985.md) | 41 | `result-track:d8f3408757e3017d46a3e985a21dd018fd083cf921bdc28a29fe2baeea23bc90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
