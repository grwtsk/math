# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadratureAudit.Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26c2dbea6e41afd4034a92ee29ec3cada03bce04",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26c2dbea6e41afd4034a92ee29ec3cada03bce04`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/declarations/logsquarequadrature--30331592a78f45ee84e58bb6.md) | 16 | `declaration-track:30331592a78f45ee84e58bb6892e951fe6d43c500eda69ee6b4cbb7f51af323d` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/declarations/logsquare-monotoneon--23972ebeabe1d363c4ef297a.md) | 20 | `result-track:23972ebeabe1d363c4ef297adb2631a7105a2eb4d34d60bea62a7819f340a8b3` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/declarations/logsquare-intervalintegrable--283645697f97475d13ae6ff1.md) | 25 | `result-track:283645697f97475d13ae6ff18999602024cc96a493ddae33c25efd011db7d594` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/declarations/logsquare-integer-bounds--ea2a066acd23a421bbc47aed.md) | 32 | `result-track:ea2a066acd23a421bbc47aed521cfac621bd608758ec52e5638b0e5db9f0163d` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/declarations/logsquarequadrature-abs-le--e6f9e7354c9e9e264ec282e8.md) | 65 | `result-track:e6f9e7354c9e9e264ec282e8fc4c77972100dcbabd8ac73de79e56a30354a451` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
