# Verification target: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant8be0faf660c52411.PrimitiveCharacterProfileAndConjugation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae48eb17bcec611d7a8c8581ecfa461eaf7bd4a6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae48eb17bcec611d7a8c8581ecfa461eaf7bd4a6`.

Source path: `GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveDirichletCharacter](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/primitivedirichletcharacter--2558f0baed891b504e2791da.md) | 37 | `declaration-track:2558f0baed891b504e2791da6e667a99ebe464c3f9a2438c538d2108a1d2fafe` |
| 2 | `def` | [parityExponent](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/parityexponent--6b78c8211710f20a09253ce4.md) | 48 | `declaration-track:6b78c8211710f20a09253ce4e70c3d38bb9e64bcf89dbf2b8058c6c3740cbfdf` |
| 3 | `theorem` | [parityExponent_lt_two](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/parityexponent-lt-two--a34d635f292ef4db77cb216a.md) | 50 | `result-track:a34d635f292ef4db77cb216ac49eb85b201a3bffa5666fb553208bdf548ac74d` |
| 4 | `def` | [conjugate](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/conjugate--094389845cb7ebbb17abfabf.md) | 55 | `declaration-track:094389845cb7ebbb17abfabffc91f76c2a7805e067c33fc3976d45bc4c8fe0fe` |
| 5 | `theorem` | [conjugate_conductor](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/conjugate-conductor--91cda1b902f63a2bc850e253.md) | 73 | `result-track:91cda1b902f63a2bc850e25310c081e26e72a4b2b56cd16fc25d6a17d5faac6c` |
| 6 | `theorem` | [conjugate_parity](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/conjugate-parity--26beaee2095e49d725dfd49c.md) | 78 | `result-track:26beaee2095e49d725dfd49c0680c18e20f778dd6130cc7df5b26eb0ba5c61e4` |
| 7 | `theorem` | [conjugate_character](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/conjugate-character--346e816a66b239c89d36878f.md) | 83 | `result-track:346e816a66b239c89d36878fa9cae54c6fec83bb882fdff46b0f286fd4d6c26a` |
| 8 | `theorem` | [conjugate_conjugate](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/declarations/conjugate-conjugate--ced8313736a3ed3cc198173d.md) | 88 | `result-track:ced8313736a3ed3cc198173db964349af9bdd01f6a7d535ae3e847697cf33709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
