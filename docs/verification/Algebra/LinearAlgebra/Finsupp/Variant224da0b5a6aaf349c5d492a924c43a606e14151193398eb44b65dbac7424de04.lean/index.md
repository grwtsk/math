# Verification target: GRWTSK.Algebra.LinearAlgebra.Finsupp.Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea62daa205b48663afc63f115b1495bf7fe99ec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea62daa205b48663afc63f115b1495bf7fe99ec`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/declarations/fg-of-fg-map-of-fg-inf-ker--4fe1bdd6567fb98b25b6e457.md) | 27 | `result-track:4fe1bdd6567fb98b25b6e4571c1927b44988367718724d2d663fd38810697eae` |
| 2 | `theorem` | [fg_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/declarations/fg-ker-comp--365c14b11a7e5657358ff688.md) | 101 | `result-track:365c14b11a7e5657358ff688c10017e8d217fe6aebdd5bfbbaa655b009f1d034` |
| 3 | `theorem` | [_root_.Module.Finite.of_submodule_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/declarations/root-module-finite-of-submodule-quotient--6d6bdeb97320a70aa76d775f.md) | 110 | `result-track:6d6bdeb97320a70aa76d775f40ea461d8edf6ef3a320616d6a65903ac9cb1650` |
| 4 | `instance` | [Module.Finite.finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Finsupp/Variant224da0b5a6aaf349c5d492a924c43a606e14151193398eb44b65dbac7424de04.lean/declarations/module-finite-finsupp--271c2b45f1269b112a28a7c8.md) | 122 | `declaration-track:271c2b45f1269b112a28a7c820315d07fd07a4ff3add03726f00793f3af659aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
