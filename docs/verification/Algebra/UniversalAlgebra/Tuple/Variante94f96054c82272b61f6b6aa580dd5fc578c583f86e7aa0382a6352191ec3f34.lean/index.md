# Verification target: GRWTSK.Algebra.UniversalAlgebra.Tuple.Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c5a046bf6068522158278cd48e89927125153d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c5a046bf6068522158278cd48e89927125153d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Phase` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SafeResidueTuple](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/saferesiduetuple--ddb808311f906d3db308aba1.md) | 15 | `declaration-track:ddb808311f906d3db308aba147a8f27735eef859eb28462fd1b8864dc603ce76` |
| 2 | `def` | [SafeResidueTuple.total](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/saferesiduetuple-total--07e4fc6887615831c99e84fa.md) | 22 | `declaration-track:07e4fc6887615831c99e84fa0ef3c9326463e1d736bc268563a2103d01f6c024` |
| 3 | `structure` | [TuplePhase](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/tuplephase--9bfbb50b2ab717504d96e386.md) | 29 | `declaration-track:9bfbb50b2ab717504d96e386eefe5fefb4f2d71e89f3b70c5aa2b4d25ccc88a4` |
| 4 | `def` | [TuplePhase.act](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/tuplephase-act--eee73323cf95eab8479f4713.md) | 34 | `declaration-track:eee73323cf95eab8479f4713ba46a41d0781df69ea7050e69027e76ba041790c` |
| 5 | `def` | [TuplePhase.PreservesTotal](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/tuplephase-preservestotal--4e7a45b694c77f780fe53165.md) | 50 | `declaration-track:4e7a45b694c77f780fe5316597d6c40e4cc684c8a4c487a84b55e52c930dac60` |
| 6 | `structure` | [TupleConstraintStabilizer](../../../../../mathematics/Algebra/UniversalAlgebra/Tuple/Variante94f96054c82272b61f6b6aa580dd5fc578c583f86e7aa0382a6352191ec3f34.lean/declarations/tupleconstraintstabilizer--c8d171a020121ded9fadb287.md) | 58 | `declaration-track:c8d171a020121ded9fadb287e8d624a93e13860f6f9f5c5206575c904788cc04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
