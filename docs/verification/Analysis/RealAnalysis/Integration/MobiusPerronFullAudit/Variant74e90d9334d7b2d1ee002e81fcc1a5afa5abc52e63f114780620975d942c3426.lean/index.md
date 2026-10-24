# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronFullAudit.Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8958531d1782e0d854c9e616edd95630a7e6964",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8958531d1782e0d854c9e616edd95630a7e6964`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SmoothedPerronKernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/mobiusdirichlet-reciprocal--acf9ea9e478d6b9da23b10d7.md) | 29 | `result-track:acf9ea9e478d6b9da23b10d7e00d816da2a0f0cc8444294162b1b20618534971` |
| 2 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm--3aae7de7621d6f763c716e43.md) | 39 | `declaration-track:3aae7de7621d6f763c716e43d9d016b0d0e5b3c7bc9a89789d21ec75fb9036be` |
| 3 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-norm--0759645a03826692a29dbc29.md) | 45 | `result-track:0759645a03826692a29dbc29b49e8af7e56eec3b4156c4762a5aa193fb5e9a5a` |
| 4 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-integrable--bd0d66e59037952acb5b99af.md) | 55 | `result-track:bd0d66e59037952acb5b99afa2712528c595483467cfb5f80d3492be827bc1c6` |
| 5 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-norm-integrals-summable--1cb8c618d93b74471635c81b.md) | 66 | `result-track:1cb8c618d93b74471635c81b01c6c622af00d027943b487b17c621756a4bf62d` |
| 6 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-tsum--de368f2f7053d9f454ea0003.md) | 75 | `result-track:de368f2f7053d9f454ea0003e03c74b4ecfb5a61125c1a3fe47d82d272757786` |
| 7 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-ratio--375ac140becde90d60ba0742.md) | 90 | `result-track:375ac140becde90d60ba0742b978556c745e19a0ffe9cc0f665e7af524464144` |
| 8 | `theorem` | [mobiusPerron_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/mobiusperron-integrable--60d5a9a3efcb6af47a78c8a6.md) | 105 | `result-track:60d5a9a3efcb6af47a78c8a61790aba0b520800138d8b674327cae7a2ca1c460` |
| 9 | `theorem` | [perronTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/perronterm-integral--61d4995799277fd2809a4e48.md) | 130 | `result-track:61d4995799277fd2809a4e485c6ebbbe0913ba20242a6e9e4a3ceb6a4ab3718f` |
| 10 | `theorem` | [logNormalization_perron](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronFullAudit/Variant74e90d9334d7b2d1ee002e81fcc1a5afa5abc52e63f114780620975d942c3426.lean/declarations/lognormalization-perron--5375970fa8dbc383f4cebad4.md) | 142 | `result-track:5375970fa8dbc383f4cebad4e5a628c33060d3543998636dc3e40d01139802d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
