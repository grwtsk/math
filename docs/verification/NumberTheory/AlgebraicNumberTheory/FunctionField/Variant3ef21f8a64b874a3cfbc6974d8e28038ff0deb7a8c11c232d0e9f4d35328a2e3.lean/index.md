# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FunctionField.Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6774cc873c4505a4513f5816892a5ae19988110",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6774cc873c4505a4513f5816892a5ae19988110`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ClassNumber.AdmissibleCardPowDegree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.FunctionField` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean/declarations/instance--0c22b2853d286c0ccb57373b.md) | 45 | `declaration-track:0c22b2853d286c0ccb57373b9963caa942f3144529058c55f1009afb2b2ebc18` |
| 2 | `def` | [classNumber](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean/declarations/classnumber--13d349b014ad68a144427ca0.md) | 53 | `declaration-track:13d349b014ad68a144427ca0f2ea77373415413011e77e78cdb4ca4cb80dee17` |
| 3 | `theorem` | [classNumber_eq_one_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FunctionField/Variant3ef21f8a64b874a3cfbc6974d8e28038ff0deb7a8c11c232d0e9f4d35328a2e3.lean/declarations/classnumber-eq-one-iff--a0d9493d68ac864dccae0127.md) | 57 | `result-track:a0d9493d68ac864dccae012757b3eb58c3fe1cfd176cb1c6c5e5240fbe56a8ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
