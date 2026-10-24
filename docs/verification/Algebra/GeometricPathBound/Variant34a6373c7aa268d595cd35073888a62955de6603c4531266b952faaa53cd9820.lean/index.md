# Verification target: GRWTSK.Algebra.GeometricPathBound.Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3f02e6f6823be505831e56b1ed3d92a48f27c3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3f02e6f6823be505831e56b1ed3d92a48f27c3`.

Source path: `GRWTSK/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Trace.WeightedPathBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricCompensationFactor](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/geometriccompensationfactor--1aa6dff93837654e4b54fbb9.md) | 28 | `declaration-track:1aa6dff93837654e4b54fbb999f3a9aacb32b81e7f779ec6b1ba7c96e3211b5d` |
| 2 | `theorem` | [geometricCompensationFactor_nonnegative](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/geometriccompensationfactor-nonnegative--57e7021302b2bb8e16d41249.md) | 36 | `result-track:57e7021302b2bb8e16d41249649bf8ea80268d012938ea172fc501a88ed9c73d` |
| 3 | `theorem` | [geometricCompensationFactor_eq_sum](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/geometriccompensationfactor-eq-sum--4cff5feca46c276d1a8a0195.md) | 48 | `result-track:4cff5feca46c276d1a8a01951b80c5932d4b59f6b3e270944d0161cccbef32b6` |
| 4 | `theorem` | [geometricCompensationFactor_closedForm](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/geometriccompensationfactor-closedform--77813b0261ac6cc1eaf8c36e.md) | 63 | `result-track:77813b0261ac6cc1eaf8c36e933bda04e01d490995348d26c5da40c4cc3f7cde` |
| 5 | `theorem` | [weightedBudget_geometric_bound](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/weightedbudget-geometric-bound--601b347183febae7ce8d26bc.md) | 75 | `result-track:601b347183febae7ce8d26bc7d8d90655a4b89c5262d95578260a2756ef92e4a` |
| 6 | `theorem` | [pathEnergy_geometric_bound](../../../../mathematics/Algebra/GeometricPathBound/Variant34a6373c7aa268d595cd35073888a62955de6603c4531266b952faaa53cd9820.lean/declarations/pathenergy-geometric-bound--aa501c087e54c913a9176a4d.md) | 169 | `result-track:aa501c087e54c913a9176a4dd367eb561730253d1508bd193816c941bd662453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
