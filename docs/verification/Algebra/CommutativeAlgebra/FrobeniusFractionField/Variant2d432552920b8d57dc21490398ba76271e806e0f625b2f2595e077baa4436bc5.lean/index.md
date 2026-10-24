# Verification target: GRWTSK.Algebra.CommutativeAlgebra.FrobeniusFractionField.Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fdf2e85880d1e6c6aed616684ca46ed9ed9b606",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fdf2e85880d1e6c6aed616684ca46ed9ed9b606`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.DiscreteValuationRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succNthDefiningPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/succnthdefiningpoly--f5eb503224688eebe4f6b924.md) | 78 | `declaration-track:f5eb503224688eebe4f6b924dbe342a6b1c718c21828fdfbe74173169eb90e7f` |
| 2 | `theorem` | [succNthDefiningPoly_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/succnthdefiningpoly-degree--664eeb263104fb56e4377cdb.md) | 87 | `result-track:664eeb263104fb56e4377cdb18e954b4239933674a83732d4988c3aca3f41557` |
| 3 | `theorem` | [root_exists](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/root-exists--f231efa8eeaec6a35d989113.md) | 112 | `result-track:f231efa8eeaec6a35d98911335d005796364b990b74da83d42469faeae1799a6` |
| 4 | `def` | [succNthVal](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/succnthval--8b3c869cfff1f67d955afaee.md) | 120 | `declaration-track:8b3c869cfff1f67d955afaee97807d04184488879a412f50d13dc499d4566f52` |
| 5 | `theorem` | [succNthVal_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/succnthval-spec--f9fb499d9473ff0344c1755c.md) | 125 | `result-track:f9fb499d9473ff0344c1755c37a126f4b29044889d15d501a3bd172c75ed2576` |
| 6 | `theorem` | [succNthVal_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/succnthval-spec--111241cc7bc32271aac4995a.md) | 131 | `result-track:111241cc7bc32271aac4995ab6e465f8be7d083dfc44bd89589586518b9bcf03` |
| 7 | `theorem` | [solution_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/solution-pow--61d2c9868f1b4c8a84fcbdd0.md) | 156 | `result-track:61d2c9868f1b4c8a84fcbdd0b641a61f5f14dd845af0b298add10b041222e6ec` |
| 8 | `def` | [solution](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/solution--7105c8c1ceb610206bbceadf.md) | 164 | `declaration-track:7105c8c1ceb610206bbceadff69037d84c89c18efebd34ba5fa7a7a9c302f26b` |
| 9 | `theorem` | [solution_spec](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/solution-spec--cfb44a7ac429da9ca7d34882.md) | 168 | `result-track:cfb44a7ac429da9ca7d348823ff01a13844b8b0fc00aee92e1cf3600e4334610` |
| 10 | `theorem` | [solution_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/solution-nonzero--40779bacdc3a16de91c12570.md) | 172 | `result-track:40779bacdc3a16de91c125700d8eab5111971b6c965507ef01c4864449490669` |
| 11 | `theorem` | [solution_spec'](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/solution-spec--4fa2b7b77e16a0dfb11fc394.md) | 183 | `result-track:4fa2b7b77e16a0dfb11fc39417cdb446593bb1e1b6386fbba2378fe29eaafe3c` |
| 12 | `def` | [frobeniusRotationCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/frobeniusrotationcoeff--aecf1737c40b83dced9599f4.md) | 209 | `declaration-track:aecf1737c40b83dced9599f4ba2ac63f6dead0d60a4c11623986af516784357c` |
| 13 | `def` | [frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/frobeniusrotation--30ae17f9b021dd2153661024.md) | 219 | `declaration-track:30ae17f9b021dd21536610240e45e2bb400a5dfb0bc53e21fe79dc9efccc0458` |
| 14 | `theorem` | [frobeniusRotation_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/frobeniusrotation-nonzero--ce7642a695e1b1d6e0b255d5.md) | 223 | `result-track:ce7642a695e1b1d6e0b255d54aec5641f08dce80399c6238db66b077bfb41a77` |
| 15 | `theorem` | [frobenius_frobeniusRotation](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/frobenius-frobeniusrotation--8f4157379afd3b93ced80e9e.md) | 230 | `result-track:8f4157379afd3b93ced80e9e53a035819bc5caf3073c7ae6b4985437a88d7cb4` |
| 16 | `theorem` | [exists_frobenius_solution_fractionRing_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/exists-frobenius-solution-fractionring-aux--43ad71ca0b030e9a3217e3cb.md) | 253 | `result-track:43ad71ca0b030e9a3217e3cbb35dbd43c1e9ec7c3cf09e77fc27d313ad5b0d71` |
| 17 | `theorem` | [exists_frobenius_solution_fractionRing](../../../../../mathematics/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/declarations/exists-frobenius-solution-fractionring--dee2cc7db941532c40a5ccd1.md) | 282 | `result-track:dee2cc7db941532c40a5ccd1da9286e792e593f07806b269b8a42c2a70f3e256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
