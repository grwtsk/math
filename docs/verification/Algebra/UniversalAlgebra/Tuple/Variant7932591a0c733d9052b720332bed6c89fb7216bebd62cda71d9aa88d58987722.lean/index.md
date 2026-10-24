# Verification target: GRWTSK.Algebra.UniversalAlgebra.Tuple.Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd27dd0c75ea028354831b36a295d5a9b86aeaf8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd27dd0c75ea028354831b36a295d5a9b86aeaf8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Phase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SafeResidueTuple](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/saferesiduetuple--b7fcd35b3033ca118be07ef5.md) | 23 | `declaration-track:b7fcd35b3033ca118be07ef55e053c1d9269348d60a136ce8e7e3e1156205b4b` |
| 2 | `def` | [SafeResidueTuple.total](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/saferesiduetuple-total--f31faaaec8117caaa5453fd3.md) | 30 | `declaration-track:f31faaaec8117caaa5453fd3e2a0c47a26291c8a07f8a21fd5e81e7c506bc5cc` |
| 3 | `structure` | [TuplePhase](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/tuplephase--4d1e100bfa91c23d51b203f1.md) | 37 | `declaration-track:4d1e100bfa91c23d51b203f13fb7ee72e111d24d7d04e095f0c7d7003f011261` |
| 4 | `def` | [TuplePhase.act](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/tuplephase-act--a03c48d281f14f561c92a2fe.md) | 42 | `declaration-track:a03c48d281f14f561c92a2fe9493200f7329440b1d43c47147207c214e4a2db6` |
| 5 | `def` | [TuplePhase.PreservesTotal](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/tuplephase-preservestotal--d032d3c17bf4e1c3ee12ed5b.md) | 58 | `declaration-track:d032d3c17bf4e1c3ee12ed5bc4662fa5dffa7c139a3a5e6e434b394664a036ba` |
| 6 | `structure` | [TupleConstraintStabilizer](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variant7932591a0c733d9052b720332bed6c89fb7216bebd62cda71d9aa88d58987722.lean/declarations/tupleconstraintstabilizer--fd31bf67abe0feabe5002e1d.md) | 66 | `declaration-track:fd31bf67abe0feabe5002e1db7532352639567f05f8c96eb7348ce5d4f808791` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
