# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt03.Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a846379e1fcbfeec370e31669ccbb1315ba2e672",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a846379e1fcbfeec370e31669ccbb1315ba2e672`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/fractionalweight--f8ae69fd89e5ddf128b951c4.md) | 25 | `declaration-track:f8ae69fd89e5ddf128b951c444ffaf8cc7a461345c2d2626383a5faf57f87422` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/fractionalweight-integrable--318a01a0768241e337c23ff9.md) | 27 | `result-track:318a01a0768241e337c23ff949f929e795aebc13ba8d7882a1ec9ab852a92237` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/fractionalweight-nonneg--91f931d2c86b16a6245afca9.md) | 36 | `result-track:91f931d2c86b16a6245afca92068f338a5e7e4b87484d6c2310865112f0200f1` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/real-centered-euler-integral--a3bb3c931d10cb551948a902.md) | 40 | `result-track:a3bb3c931d10cb551948a902b136d80610c31634665628c746577a340c9b9fff` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/riemannzeta-real-euler--1c4c92227a1049207848a4ff.md) | 55 | `result-track:1c4c92227a1049207848a4ffb2eedcc2d07f7202681efdea43608138d7315f52` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/riemannzeta-ofreal-neg--0dfac265d6402b6bd41c7eab.md) | 86 | `result-track:0dfac265d6402b6bd41c7eab4c494780c2396de096162cd2a11a39ba6ca2cb3f` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt03/Variant030a77ef63208675c144bd9b1ab8c56e1d5963a89b57a6e86d3808286ebab91e.lean/declarations/nontrivial-zero-im-ne-zero--e6f4cd3f24cf3beb0eb7233e.md) | 96 | `result-track:e6f4cd3f24cf3beb0eb7233e15c4fdd3fd73f67e0c21fc5fedeea891f26ac553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
