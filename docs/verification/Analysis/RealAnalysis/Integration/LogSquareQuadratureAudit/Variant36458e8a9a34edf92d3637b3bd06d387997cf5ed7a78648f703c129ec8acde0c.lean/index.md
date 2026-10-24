# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadratureAudit.Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b0639595f4c3fc3ec541b7d3b973d1d51c7554",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b0639595f4c3fc3ec541b7d3b973d1d51c7554`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/declarations/logsquarequadrature--ee4c2b21dc4a4643f83b8468.md) | 24 | `declaration-track:ee4c2b21dc4a4643f83b846807e18ecf240f92a3f192da2ee531061e05eceb67` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/declarations/logsquare-monotoneon--75ed5f1c9cc8e81fd52a7f4b.md) | 28 | `result-track:75ed5f1c9cc8e81fd52a7f4b93b7a18431edf6db8c53a84a3c6a93635a5414eb` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/declarations/logsquare-intervalintegrable--e5aaece8926d668c793ba7ba.md) | 33 | `result-track:e5aaece8926d668c793ba7ba486066ff301dbf6baeb191d464b7b7b1a04594db` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/declarations/logsquare-integer-bounds--32d0257001e7ec368f869aca.md) | 40 | `result-track:32d0257001e7ec368f869acaf17a45ddaf9bf5b24126696fa5b074c1cf23ad9c` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant36458e8a9a34edf92d3637b3bd06d387997cf5ed7a78648f703c129ec8acde0c.lean/declarations/logsquarequadrature-abs-le--1827ff5448255cd4aaaec1f8.md) | 73 | `result-track:1827ff5448255cd4aaaec1f8058eddfe1c726e9f914c15fc194a7f1ef19bf130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
