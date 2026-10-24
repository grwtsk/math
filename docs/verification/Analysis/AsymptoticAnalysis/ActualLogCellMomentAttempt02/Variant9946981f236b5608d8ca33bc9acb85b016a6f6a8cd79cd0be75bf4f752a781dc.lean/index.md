# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMomentAttempt02.Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a5f98de95695babc0d73ad495a5aea00b87737",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a5f98de95695babc0d73ad495a5aea00b87737`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell--eea87d47a7e7c7659bc0044d.md) | 15 | `declaration-track:eea87d47a7e7c7659bc0044d82190cf7df49e888d51cb6b44f3ccd0c375ed6fe` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcellsum--e634ba1c05745946d480e6e4.md) | 18 | `declaration-track:e634ba1c05745946d480e6e41ab0a5545193a9859df57342b41708c475121489` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-integrable--233106f084fcb2d7e23211a2.md) | 20 | `result-track:233106f084fcb2d7e23211a2201e76a91754a9fa33a7a14ab362b55cb1d6e5ef` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-eval--9c46398ddf79db91076ef5fc.md) | 32 | `result-track:9c46398ddf79db91076ef5fc2efbd4c4b69fabf3e67df0a9a82e4cb720d2b26e` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-nonneg--8ecf8d9364c8222c90b878fe.md) | 59 | `result-track:8ecf8d9364c8222c90b878fe0212b3a5c09544c117ef793684ac445d65757494` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcellsum-eval--8755882b337e4b884beeb9c5.md) | 67 | `result-track:8755882b337e4b884beeb9c503c797e2d9fde9d85293110883b29beff5e4c9a5` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcellsum-tendsto--3e25acd84d8e474c67fb43e1.md) | 81 | `result-track:3e25acd84d8e474c67fb43e1529d275f727543e4ea8729c543cb9e744d9a902a` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-hassum--44154d707d9c48de59b97022.md) | 93 | `result-track:44154d707d9c48de59b970224181158a368f63c4ab35422c701ccb1dc66d26ef` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-summable--b5df85ee823da300a43840f3.md) | 99 | `result-track:b5df85ee823da300a43840f353cb4afc908c27f28d08bf990558681b826ee6b1` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt02/Variant9946981f236b5608d8ca33bc9acb85b016a6f6a8cd79cd0be75bf4f752a781dc.lean/declarations/logcell-tsum--1683f996a50670c5cfad001b.md) | 102 | `result-track:1683f996a50670c5cfad001bfbf35643b8763198a666bcf4a20cfff7477d6356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
