# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a4edc56509122b31ba8d2a539aecb7393353af",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a4edc56509122b31ba8d2a539aecb7393353af`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/archimedean--3bf6996735224face29e0ed4.md) | 32 | `declaration-track:3bf6996735224face29e0ed46d256275e19dd3b1a76b947f6a7297330c15366c` |
| 2 | `class` | [MulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/mularchimedean--046913d644f63ac87e866986.md) | 40 | `declaration-track:046913d644f63ac87e86698696800f570493fec9f6dbd272d882477ba2bcd3d3` |
| 3 | `theorem` | [exists_lt_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-lt-pow--5d37ff6b9a8d2d46da808a53.md) | 49 | `result-track:5d37ff6b9a8d2d46da808a5385e81d7756fa3b20df76beb123297594289b8623` |
| 4 | `theorem` | [exists_pow_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-pow-lt--ef41f3f6ff994fe29be54cae.md) | 59 | `result-track:ef41f3f6ff994fe29be54cae8878fb76e197ee5281dd29823a50bba1b899bdec` |
| 5 | `theorem` | [exists_nat_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-nat-ge--4bf0eb85efb3850caf6c254d.md) | 67 | `result-track:4bf0eb85efb3850caf6c254d3da2e1261083ef75abc7402132f72e942ba3f4f3` |
| 6 | `theorem` | [exists_nat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-nat-gt--0aab6356ed99750e934d3822.md) | 76 | `result-track:0aab6356ed99750e934d38223c3ed9976c975a93a12c41125127b883807415cc` |
| 7 | `theorem` | [exists_int_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-int-ge--7aca21fc51e87c6872a88a35.md) | 84 | `result-track:7aca21fc51e87c6872a88a350b824563d086a3e0818aff1c692154750e7ebe76` |
| 8 | `theorem` | [exists_int_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-int-le--b9a36bfb2724c24ab6e5a531.md) | 86 | `result-track:b9a36bfb2724c24ab6e5a53199cc71e66b356f593e0ae8ab23a3838f9c3bf857` |
| 9 | `theorem` | [exists_int_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-int-gt--3779269a8a0051faa9bdcc6f.md) | 94 | `result-track:3779269a8a0051faa9bdcc6f41fa47f7855898c8acfaaf41b157139098384848` |
| 10 | `theorem` | [exists_int_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant792d8e81ef492132ffe4cbd31ad9cfa0cf4d2a215b47acb86f1240bba0a6525c.lean/declarations/exists-int-lt--6493b277d22b647d8656b447.md) | 98 | `result-track:6493b277d22b647d8656b44748e8d86f4fbf3780920c83e83ea12533b98269a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
