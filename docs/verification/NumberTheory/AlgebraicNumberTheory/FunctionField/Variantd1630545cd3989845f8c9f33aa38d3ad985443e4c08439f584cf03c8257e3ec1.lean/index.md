# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FunctionField.Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c6aecd30fe2d0242073c32e6229c04f978b04b0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c6aecd30fe2d0242073c32e6229c04f978b04b0`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleCardPowDegree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FunctionField` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean/declarations/instance--82e4ace6907da8b2b87fcf06.md) | 37 | `declaration-track:82e4ace6907da8b2b87fcf06c25bd25c49a0fa5e822843dd92c79d4db3d1ea46` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean/declarations/classnumber--143f69ce617a02ef84af7324.md) | 45 | `declaration-track:143f69ce617a02ef84af7324cc7811db2bd482fa3c28e42c6805a053e7531226` |
| 3 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variantd1630545cd3989845f8c9f33aa38d3ad985443e4c08439f584cf03c8257e3ec1.lean/declarations/classnumber-eq-one-iff--7d70db4a488bc6bcbe6bb214.md) | 49 | `result-track:7d70db4a488bc6bcbe6bb214cb7c0538d513244fa0e69234b1a2a224abe8f5cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
