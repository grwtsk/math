# Verification target: GRWTSK.Algebra.UniversalAlgebra.AbsoluteValue.Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c972fe54de43ddab4cc6ad95413b13af8117d9d1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c972fe54de43ddab4cc6ad95413b13af8117d9d1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AbsoluteValue.map_units_int](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/declarations/absolutevalue-map-units-int--bd297785614065644faaf571.md) | 35 | `result-track:bd297785614065644faaf5712f581d1848e73cf8d0ecdeaa5c1573fbe78e5f16` |
| 2 | `theorem` | [AbsoluteValue.map_units_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/declarations/absolutevalue-map-units-intcast--c8b6a9623d0dd06c55d85dca.md) | 39 | `result-track:c8b6a9623d0dd06c55d85dca1a84fa80247e0e1010312b6f6352b801abe29e20` |
| 3 | `theorem` | [AbsoluteValue.map_units_int_smul](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/declarations/absolutevalue-map-units-int-smul--dd81b323daa8875005cf9def.md) | 43 | `result-track:dd81b323daa8875005cf9def12251fac7eb0549301f80f4d49cff8df01bf17fd` |
| 4 | `def` | [Int.natAbsHom](../../../../../mathematics/Algebra/UniversalAlgebra/AbsoluteValue/Variant2091fbcdcd84585c0c4c84128fdd14b3e5ffdf4a01f7f15dd62111fc3ced31c3.lean/declarations/int-natabshom--c83945af9c20ead8774b6793.md) | 48 | `declaration-track:c83945af9c20ead8774b679309a07b9fbcaa597fc0e68a9d5568297a342c46c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
