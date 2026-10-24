# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FrobeniusFractionField.Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ca022a46eb6442ec0b7e876cd64e6e0e4cbcbbc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean.json)

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
| 1 | `def` | [succNthDefiningPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/succnthdefiningpoly--3750731c669c08d5efacd89d.md) | 68 | `declaration-track:3750731c669c08d5efacd89d38b55a910cdb26088ed70f978281266090222194` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/succnthdefiningpoly-degree--f2265615fe8bd55acb871cd1.md) | 76 | `result-track:f2265615fe8bd55acb871cd161d7782ac53352ed3fe96dc0d7b79bf6dc67a609` |
| 3 | `theorem` | [root_exists](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/root-exists--a9f49185858a7bb9e59606ca.md) | 100 | `result-track:a9f49185858a7bb9e59606ca2bc18309ba5a8e7bfc698a1e6178608efd015a1d` |
| 4 | `def` | [succNthVal](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/succnthval--73c385a246c6de25f87e4aa7.md) | 107 | `declaration-track:73c385a246c6de25f87e4aa7a54976550747b4679a1daa4807b8ccded59399c3` |
| 5 | `theorem` | [succNthVal_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/succnthval-spec--2957b6d99fc688875491f3c4.md) | 111 | `result-track:2957b6d99fc688875491f3c45a85474ab7effcb6f393c40d9f35ab5149ddd83f` |
| 6 | `theorem` | [succNthVal_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/succnthval-spec--a44af8841364a7d3eaa5f790.md) | 116 | `result-track:a44af8841364a7d3eaa5f79029b5b61bf7c862d34f2a7d40bc4c3be84cb30600` |
| 7 | `theorem` | [solution_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/solution-pow--5493abb4bfe4bdb8bc97edd7.md) | 141 | `result-track:5493abb4bfe4bdb8bc97edd79451d667dbca0933586ec2695995ba508aa6922d` |
| 8 | `def` | [solution](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/solution--d2a6ca87ffd26ac2eccef848.md) | 145 | `declaration-track:d2a6ca87ffd26ac2eccef848d6b14424cf8e8f0d91686e16421c6204990ace05` |
| 9 | `theorem` | [solution_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/solution-spec--5f6f654c5803d86ca98ac1f3.md) | 148 | `result-track:5f6f654c5803d86ca98ac1f3d19dd467cf8558b1c4654b33ca85f8c42d04c150` |
| 10 | `theorem` | [solution_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/solution-nonzero--a90899a15114f1e1f430d8ca.md) | 151 | `result-track:a90899a15114f1e1f430d8cac7c25d9c124f24848cdb3c5958cf29e082ae0f1c` |
| 11 | `theorem` | [solution_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/solution-spec--58ad9a3f7fd1d8a5990bb431.md) | 159 | `result-track:58ad9a3f7fd1d8a5990bb431b114c1b73931305271b4a3189251abcf642c8d13` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/frobeniusrotationcoeff--c747a8f0e6d9b8f0a921edc4.md) | 186 | `declaration-track:c747a8f0e6d9b8f0a921edc4209ff28f0d5f63779ae7be12945c9c7beff84baa` |
| 13 | `def` | [frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/frobeniusrotation--fe6b20b6cf090ff0e8c5b7d6.md) | 194 | `declaration-track:fe6b20b6cf090ff0e8c5b7d6b2b7eaf8da8b89243d265bc1199cd71d2700ae94` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/frobeniusrotation-nonzero--2d7908165b8e10677d9b7dac.md) | 197 | `result-track:2d7908165b8e10677d9b7dac4fed9d97209262677851bbde95455ac9e90fe526` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/frobenius-frobeniusrotation--f2382f3cb7d39b7cff6cf57f.md) | 203 | `result-track:f2382f3cb7d39b7cff6cf57f5ffc0a1ffee356ad5f293831b208e12cfb352898` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/exists-frobenius-solution-fractionring-aux--442ac04c8c01bf567d553283.md) | 224 | `result-track:442ac04c8c01bf567d5532835fb99a527a69181d5cd0572a9857ebe6695ce02b` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant710cfde6d333573b70a6c3016b0aabe6c77840a68edad45b81ecec2ad87ebdf6.lean/declarations/exists-frobenius-solution-fractionring--d47409ccde37d576b953f627.md) | 250 | `result-track:d47409ccde37d576b953f62754b44b2530b1cda24ba5d87ca87380a9ff38adb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
