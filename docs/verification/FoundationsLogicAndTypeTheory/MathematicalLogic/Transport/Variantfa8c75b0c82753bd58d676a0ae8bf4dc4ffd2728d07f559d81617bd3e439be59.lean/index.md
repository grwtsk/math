# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Transport.Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a3714f1a630c974a1c6ca5efeafbb002c2fe22",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a3714f1a630c974a1c6ca5efeafbb002c2fe22`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Determinant.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [detEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv--6abe8c2caef507d877bc96b9.md) | 38 | `declaration-track:6abe8c2caef507d877bc96b947d3ca1ed093976c58170af8ec5cb168a6bfd8b7` |
| 2 | `theorem` | [detEquiv_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-id--a170aee026e1d314b67c4e54.md) | 45 | `result-track:a170aee026e1d314b67c4e543381335306a62fcee3e94d83b2c81af050c45ac4` |
| 3 | `theorem` | [detEquiv_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-comp--0aab4ed8e1c6992ed64b94fa.md) | 52 | `result-track:0aab4ed8e1c6992ed64b94fac64cd4b158434468672206052eca395fe5f612f6` |
| 4 | `def` | [detEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv--8e82965ec6fb5cee2f58b175.md) | 70 | `declaration-track:8e82965ec6fb5cee2f58b175025b0a1b008889a06bd2f2a45305d287922a4e4b` |
| 5 | `theorem` | [detEquiv_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-nil--44743d2e452543b4083bba63.md) | 81 | `result-track:44743d2e452543b4083bba63bd8e98fe3f64254e7296cee4a15b344ec675d8b4` |
| 6 | `theorem` | [detEquiv_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-cons--2b4751c005178fb33087cee4.md) | 89 | `result-track:2b4751c005178fb33087cee470ef9d31e95550fe5763ca5d640d52578893e90b` |
| 7 | `theorem` | [detEquiv_eq_composite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-eq-composite--4d05284b71923b77a17cd47e.md) | 99 | `result-track:4d05284b71923b77a17cd47eb753e330010471131414ad8ce20358702f7f8667` |
| 8 | `theorem` | [detEquiv_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Transport/Variantfa8c75b0c82753bd58d676a0ae8bf4dc4ffd2728d07f559d81617bd3e439be59.lean/declarations/detequiv-append--cd968a0c95a5a9437359df8b.md) | 112 | `result-track:cd968a0c95a5a9437359df8b502098561f8192ff06b165c450c6682783732ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
