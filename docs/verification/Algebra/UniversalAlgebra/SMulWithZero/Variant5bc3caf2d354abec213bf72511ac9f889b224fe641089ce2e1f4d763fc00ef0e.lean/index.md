# Verification target: GRWTSK.Algebra.UniversalAlgebra.SMulWithZero.Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd905d2a3ebd133f895e3e37bbcee4277b9b75d4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd905d2a3ebd133f895e3e37bbcee4277b9b75d4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/smulzeroclass--6a47463b1e5001a1060d4cd4.md) | 40 | `declaration-track:6a47463b1e5001a1060d4cd4dd46e42e6151a8b1f286f54e5cfe4c3734452a01` |
| 2 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/coe-smul--90e6eacf2940cea6bc8b980c.md) | 52 | `result-track:90e6eacf2940cea6bc8b980c10706a5aa3abd34303c3e1112fff806679f028b5` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/smul-apply--6af83d3709b92ee764dcf042.md) | 55 | `result-track:6af83d3709b92ee764dcf042234236e880ae552fc28c8b9ae8751baf2d4e4450` |
| 4 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/instsmulwithzero--d30b32a0b36f407696e30fad.md) | 59 | `declaration-track:d30b32a0b36f407696e30fad6ba1a0451e262ee80bcd6cd3fdbf739c68960826` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/distribsmul--c9fe52bb742275215fef06d5.md) | 64 | `declaration-track:c9fe52bb742275215fef06d5cf7e822a23cdda2b57e6dc074ba63fa1f530124a` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/isscalartower--baf14b3aca0c641115a47b98.md) | 69 | `declaration-track:baf14b3aca0c641115a47b9817643ca64a17cc574b2770a20c6bf78cd7a53255` |
| 7 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/smulcommclass--6ddea5fd81a3eb8aeedc4b5a.md) | 73 | `declaration-track:6ddea5fd81a3eb8aeedc4b5a4659e924bc734054390753bdf3c3e86a594d8261` |
| 8 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/iscentralscalar--3e59c1af299f28a9a26273c1.md) | 77 | `declaration-track:3e59c1af299f28a9a26273c1fa55c653f33552251dad72ffe4425c8a45ee5da5` |
| 9 | `theorem` | [support_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/support-smul--d390a86c7d08cfb1b5909aee.md) | 83 | `result-track:d390a86c7d08cfb1b5909aeeffb4993c09b7a0a5ad416549df4aa054cbe6f496` |
| 10 | `theorem` | [smul_single](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/smul-single--2d3dbfe784fcbe8edbc587d1.md) | 89 | `result-track:2d3dbfe784fcbe8edbc587d133ecc93d87d4ca29ecce9fe36f17d2ccdf9a96c8` |
| 11 | `theorem` | [mapRange_smul'](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/maprange-smul--5a7820f84b788f79099fc99c.md) | 93 | `result-track:5a7820f84b788f79099fc99c52c5c92a03b4d01f3a2a560aa0820952e3cf30fb` |
| 12 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/UniversalAlgebra/SMulWithZero/Variant5bc3caf2d354abec213bf72511ac9f889b224fe641089ce2e1f4d763fc00ef0e.lean/declarations/maprange-smul--d43ab406b4f1a65b6fec2a00.md) | 99 | `result-track:d43ab406b4f1a65b6fec2a00a454842523e68168c657566964711f8d706ad381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
