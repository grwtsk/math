# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pi.Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "913273fc947139481c302b1193e6cb790dbf82ef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `913273fc947139481c302b1193e6cb790dbf82ef`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Units` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/declarations/instance--2a6d97c582d92dd6630843a1.md) | 46 | `declaration-track:2a6d97c582d92dd6630843a14ff41348a97e6b22ce846bd7cbc643409f12429a` |
| 2 | `theorem` | [iff_map_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/declarations/iff-map-pievalringhom--3bd10d15e2a2d8fdce6c1257.md) | 58 | `result-track:3bd10d15e2a2d8fdce6c1257f56418fc43c43d728caa9d84247c93e90b3e0432` |
| 3 | `lemma` | [isUnit_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/declarations/isunit-piringhom-algebramap-comp-pievalringhom--2252e26923a931cd74847caa.md) | 73 | `result-track:2252e26923a931cd74847caa518de67fdd84550c2d47b89e30268142e9acc89d` |
| 4 | `theorem` | [bijective_lift_piRingHom_algebraMap_comp_piEvalRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/Pi/Variantef40d760d5b1578375f382874d15edfdcb85df77fafe8b013db5789c4e784dbd.lean/declarations/bijective-lift-piringhom-algebramap-comp-pievalringhom--84707ed24a971f0332800e44.md) | 81 | `result-track:84707ed24a971f0332800e4414a7104c72fac95320c8b528794742c55de41aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
