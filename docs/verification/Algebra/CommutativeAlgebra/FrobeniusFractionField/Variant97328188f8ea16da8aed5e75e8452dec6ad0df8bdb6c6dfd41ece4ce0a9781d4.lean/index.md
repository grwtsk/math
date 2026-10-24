# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FrobeniusFractionField.Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93033ed914fb2f5a9e12fa18c26cdba17197110b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93033ed914fb2f5a9e12fa18c26cdba17197110b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.DiscreteValuationRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succNthDefiningPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/succnthdefiningpoly--d802d4c665dea65bd9fddae0.md) | 70 | `declaration-track:d802d4c665dea65bd9fddae0b49f9ee75608526cb284fd627483950fc895277f` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/succnthdefiningpoly-degree--c9c977ad8c82434cfd637e65.md) | 79 | `result-track:c9c977ad8c82434cfd637e65ad291e3d2b60390e330e4c62245ec859422ca139` |
| 3 | `theorem` | [root_exists](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/root-exists--0be6751cafd7313ffff16d1b.md) | 104 | `result-track:0be6751cafd7313ffff16d1b0c6d296b89430d215636e89ea3d1dbb247533e7b` |
| 4 | `def` | [succNthVal](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/succnthval--34fb55112c0311f24b96786e.md) | 112 | `declaration-track:34fb55112c0311f24b96786e8595d3f58d6beb31cddb714e69f5e214bbae8eff` |
| 5 | `theorem` | [succNthVal_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/succnthval-spec--5e1b2190a0a6224d7b4e3ae7.md) | 117 | `result-track:5e1b2190a0a6224d7b4e3ae7448a75b2f4ddb60156de282e68d1f17e6301bd18` |
| 6 | `theorem` | [succNthVal_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/succnthval-spec--e7c7b5355e42354cc9dd7960.md) | 123 | `result-track:e7c7b5355e42354cc9dd79600fd76a2d70725ce9e450172f306d25dd6df72907` |
| 7 | `theorem` | [solution_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/solution-pow--be9d02eb4b3273b97c91971a.md) | 148 | `result-track:be9d02eb4b3273b97c91971a9559cc465247356d691f0788a8ed685820274fb6` |
| 8 | `def` | [solution](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/solution--7f26e0d5669e50f31ae23f3d.md) | 156 | `declaration-track:7f26e0d5669e50f31ae23f3d56c9589ecd72e733972e0a022cfcab9b9fcb4522` |
| 9 | `theorem` | [solution_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/solution-spec--4ef4cf56b51e11725458f504.md) | 160 | `result-track:4ef4cf56b51e11725458f5045b1af193eb249ebd65200b5b654f683949444ed7` |
| 10 | `theorem` | [solution_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/solution-nonzero--a2978013ce217481cdfd75e5.md) | 164 | `result-track:a2978013ce217481cdfd75e5e1c5a74ab7040da2f66f21065607c0e564bcb53c` |
| 11 | `theorem` | [solution_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/solution-spec--29e69e2c1ee2f46e099d87de.md) | 175 | `result-track:29e69e2c1ee2f46e099d87de0c7ec3fc396a63cc57eee3b6d60d747c496dec3c` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/frobeniusrotationcoeff--ee3d8f18639d7976a89c0ad4.md) | 201 | `declaration-track:ee3d8f18639d7976a89c0ad437f313624a31d4ff07ef91c8b6b6425f8b000f91` |
| 13 | `def` | [frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/frobeniusrotation--47bb702a5af5aafa07f6fc7c.md) | 211 | `declaration-track:47bb702a5af5aafa07f6fc7c7118c08aef09829048c9afabea4bf62a301d9129` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/frobeniusrotation-nonzero--96aa04977e9937b63240a0f4.md) | 215 | `result-track:96aa04977e9937b63240a0f4e830a285cc9cd7468a9a2675ae0188d2ca4e477a` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/frobenius-frobeniusrotation--afea9a01fe88357ae2e39ad2.md) | 222 | `result-track:afea9a01fe88357ae2e39ad22ae758fd49bdc48be25937277577ae18cb8f43f4` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/exists-frobenius-solution-fractionring-aux--87098140cbafd2780053d27a.md) | 245 | `result-track:87098140cbafd2780053d27ab3827f25f81dc820728e332e488505680bec0946` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/declarations/exists-frobenius-solution-fractionring--fb6e443bbb322ea8e770cc7a.md) | 274 | `result-track:fb6e443bbb322ea8e770cc7a54af40e7d98cfee9e9c4cd2211bba8a35849f69a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
