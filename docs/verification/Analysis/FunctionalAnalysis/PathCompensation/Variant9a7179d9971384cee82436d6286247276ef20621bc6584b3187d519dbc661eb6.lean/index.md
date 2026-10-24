# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PathCompensation.Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68e240a98e9a33b4ae161f7f25520ac3c09163f2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68e240a98e9a33b4ae161f7f25520ac3c09163f2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Trace.ExactCompensation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.ResidueDeflection.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pathCompensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/declarations/pathcompensation--8691c25f6f7dbb08022b4374.md) | 25 | `declaration-track:8691c25f6f7dbb08022b4374203636a8c20741f8ea088fd7f703192c5384abce` |
| 2 | `def` | [pathCompensationBudget](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/declarations/pathcompensationbudget--0c4dbd18930a5484e1409878.md) | 47 | `declaration-track:0c4dbd18930a5484e1409878c000d0e55d0cc8f4db3f7c96300a3fa13bbb8f4e` |
| 3 | `theorem` | [pathEnergy_difference_eq_compensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/declarations/pathenergy-difference-eq-compensation--816ca1e86e7ff91db635830d.md) | 72 | `result-track:816ca1e86e7ff91db635830d4d762549f11f54f0fb6b93608ccba30a3225db6e` |
| 4 | `theorem` | [pathEnergy_compensation_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/declarations/pathenergy-compensation-bound--14e5e63feced2235f55674a3.md) | 106 | `result-track:14e5e63feced2235f55674a3a54e394b6380366f3d355b1cf35ce165385c84d3` |
| 5 | `theorem` | [pathEnergy_invariant_of_exactCompensation](../../../../../mathematics/Analysis/FunctionalAnalysis/PathCompensation/Variant9a7179d9971384cee82436d6286247276ef20621bc6584b3187d519dbc661eb6.lean/declarations/pathenergy-invariant-of-exactcompensation--1681447da6f855b8af1afdd7.md) | 165 | `result-track:1681447da6f855b8af1afdd7d2cd7d833ad8cfce78a297c94a06290fbbd2a42b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
