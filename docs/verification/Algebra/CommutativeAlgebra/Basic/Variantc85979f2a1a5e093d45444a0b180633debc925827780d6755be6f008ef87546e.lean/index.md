# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76969bd56d08c298320202d0e4ef0ac5aaf1afa9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76969bd56d08c298320202d0e4ef0ac5aaf1afa9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly--5db5374fdf955236638cb6cf.md) | 42 | `declaration-track:5db5374fdf955236638cb6cfdc23a64c3f70a14955d0677783efce8efcfaf187` |
| 2 | `theorem` | [charpoly_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly-def--4df83b54f4bd249d18921757.md) | 45 | `result-track:4df83b54f4bd249d1892175785960f0d5d2e670a521cbca47721798bb0e16e58` |
| 3 | `theorem` | [eval_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/eval-charpoly--e7a107b795be3607573479b1.md) | 48 | `result-track:e7a107b795be3607573479b1aa3786bfb640b0adf75dbb56eea49f2dc0200789` |
| 4 | `theorem` | [charpoly_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly-zero--5eb69afd13d1b7e0da978dcd.md) | 54 | `result-track:5eb69afd13d1b7e0da978dcd578b6fc4237390d43a1fcb4f00d0b25755f0c2c7` |
| 5 | `theorem` | [charpoly_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly-one--f548b58d25e93ba01d82d3a0.md) | 58 | `result-track:f548b58d25e93ba01d82d3a0948e9da81bf0cfdd9ef323de459fcb0049ac4768` |
| 6 | `theorem` | [charpoly_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly-monic--b22393d9b6e9362a77162df8.md) | 66 | `result-track:b22393d9b6e9362a77162df8724369436f37fb72c190215866942ae2504033b9` |
| 7 | `lemma` | [charpoly_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/charpoly-natdegree--c119a4c00eeb61f9a57a5b7f.md) | 70 | `result-track:c119a4c00eeb61f9a57a5b7f7df406ec8e929f502f5582401ce4d31e4d27bda9` |
| 8 | `theorem` | [aeval_self_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/aeval-self-charpoly--99821c11f9344cee2da9a2be.md) | 82 | `result-track:99821c11f9344cee2da9a2bee3daca927cff719f5c72f6695dd1ae6173d7c7dd` |
| 9 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/isintegral--76467ed67569efd70210ee44.md) | 88 | `result-track:76467ed67569efd70210ee44e0fdb5f2edd873a2d9a93c5e7bcdac70f9f00be8` |
| 10 | `theorem` | [minpoly_dvd_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/minpoly-dvd-charpoly--44de89b8e9bee20f514a9d24.md) | 91 | `result-track:44de89b8e9bee20f514a9d242031383d84415aac5e4471733304d1b6fbaeee5f` |
| 11 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/aeval-eq-aeval-mod-charpoly--f0b49f4f94f3fb6275884ad9.md) | 97 | `result-track:f0b49f4f94f3fb6275884ad9b99aa80fd3fce9c276729796714a7a99e0c72ed6` |
| 12 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/pow-eq-aeval-mod-charpoly--337665e7720326db70481876.md) | 102 | `result-track:337665e7720326db704818761fa703506464db4fe201195a23fef7812b611022` |
| 13 | `theorem` | [minpoly_coeff_zero_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc85979f2a1a5e093d45444a0b180633debc925827780d6755be6f008ef87546e.lean/declarations/minpoly-coeff-zero-of-injective--0d070eff407b6f6ad8f5f45b.md) | 107 | `result-track:0d070eff407b6f6ad8f5f45b4941d7ce127520fa26b500a5440e033dbe194909` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
