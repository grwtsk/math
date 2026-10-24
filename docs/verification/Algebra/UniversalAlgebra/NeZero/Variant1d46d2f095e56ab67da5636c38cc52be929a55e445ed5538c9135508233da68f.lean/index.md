# Verification target: GRWTSK.Algebra.UniversalAlgebra.NeZero.Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NeZero.one](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/declarations/nezero-one--9c7d99b90673a462cba006c9.md) | 31 | `declaration-track:9c7d99b90673a462cba006c9ac3baa9012c74a34f96b0aff5214e7067e7fc439` |
| 2 | `theorem` | [domain_nontrivial](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/declarations/domain-nontrivial--3259ea42e7091e101e1c6524.md) | 42 | `result-track:3259ea42e7091e101e1c65245e22385b6b60975cc61d2e01a810d6c6e4e81b88` |
| 3 | `theorem` | [inv_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/declarations/inv-ne-zero--7461b3bef07fd1c8292bcc1f.md) | 55 | `result-track:7461b3bef07fd1c8292bcc1f1c7426f9b73acdce4a66ba843fbd79e34ba50e66` |
| 4 | `theorem` | [inv_mul_cancel₀](../../../../../mathematics/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/declarations/inv-mul-cancel--70d258c70472aad68212c06d.md) | 60 | `result-track:70d258c70472aad68212c06decca8794d1ce772798a6dc991db66b1f40966d06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
