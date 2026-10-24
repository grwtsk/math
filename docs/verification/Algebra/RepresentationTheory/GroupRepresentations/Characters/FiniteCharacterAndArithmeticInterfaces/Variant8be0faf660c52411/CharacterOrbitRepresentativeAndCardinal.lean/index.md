# Verification target: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant8be0faf660c52411.CharacterOrbitRepresentativeAndCardinal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2adce284944ced0500179182a598e19b15d683",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2adce284944ced0500179182a598e19b15d683`.

Source path: `GRWTSK/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Bounds` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 22; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant8be0faf660c52411.PrimitiveCharacterProfileAndConjugation`](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/PrimitiveCharacterProfileAndConjugation.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterOrbit](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/declarations/characterorbit--04a3a24fd26a87eb26b7e188.md) | 39 | `declaration-track:04a3a24fd26a87eb26b7e188647c017d154924b66052e928a386888ce821603e` |
| 2 | `def` | [conjugateRepresentative](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/declarations/conjugaterepresentative--1aed910170f13bc5b4cd6102.md) | 44 | `declaration-track:1aed910170f13bc5b4cd61021a2718795a28bd7d331c1b6076e3fa8bb95baf1f` |
| 3 | `def` | [cardinal](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/declarations/cardinal--3bb642881e63f1b1024a30dc.md) | 49 | `declaration-track:3bb642881e63f1b1024a30dcbd7abd90d8a84c5079f0030e21a0afcf769bd415` |
| 4 | `theorem` | [cardinal_eq_one_or_two](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/declarations/cardinal-eq-one-or-two--59dbc29285f45ed76303c003.md) | 54 | `result-track:59dbc29285f45ed76303c0034abe121fa6b24d863409007a9d9aef5e3d384248` |
| 5 | `abbrev` | [CharacterOrbit](../../../../../../../../mathematics/Algebra/RepresentationTheory/GroupRepresentations/Characters/FiniteCharacterAndArithmeticInterfaces/Variant8be0faf660c52411/CharacterOrbitRepresentativeAndCardinal.lean/declarations/characterorbit--b41b69e83dfa9a5ab21c6252.md) | 64 | `declaration-track:b41b69e83dfa9a5ab21c6252819acb579075a91c1f6351f5bbf924ad74283e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
