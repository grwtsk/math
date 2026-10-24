# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.RealPowerAdmissibility.Variant03d73452c99c6fd3.ModelDomainAndNonnegativity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "062007fd5b89ffea5208b3f606d4f5a64dadc883",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `062007fd5b89ffea5208b3f606d4f5a64dadc883`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.GridCell` — import line 22; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.Stroke` — import line 23; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [precessionPhaseModel](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean/declarations/precessionphasemodel--36327c8588a5d88ebf5b8933.md) | 43 | `declaration-track:36327c8588a5d88ebf5b8933e562792a730b19b19f716d17e7c53168efa9144b` |
| 2 | `def` | [PrecessionAdmissible](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean/declarations/precessionadmissible--42ce05beebf27a4812c6d979.md) | 49 | `declaration-track:42ce05beebf27a4812c6d979dde818a5dc7bb457c873b14d158ada63ab42dd06` |
| 3 | `theorem` | [precessionPhaseModel_nonnegative](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/RealPowerAdmissibility/Variant03d73452c99c6fd3/ModelDomainAndNonnegativity.lean/declarations/precessionphasemodel-nonnegative--4a74fe3acd286b5f92fbe85d.md) | 52 | `result-track:4a74fe3acd286b5f92fbe85d313a5957c163c76aef957fb64c109b66a02b55bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
