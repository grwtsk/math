# Verification target: GRWTSK.Algebra.LinearAlgebra.Character.Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d214ba15ae923d0a2f2b8284a9005ffd95bb19",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d214ba15ae923d0a2f2b8284a9005ffd95bb19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FDRep` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Invariants` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [character](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/character--43fdbc147a201967a247bd22.md) | 48 | `declaration-track:43fdbc147a201967a247bd2269522d77be398024ea8cf9a77de9600a4f5d5f67` |
| 2 | `theorem` | [char_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-mul-comm--22319f7e57f13419371bd97b.md) | 51 | `result-track:22319f7e57f13419371bd97bf4f13db507a536d81dce2abf6dbc57e0762b22a1` |
| 3 | `theorem` | [char_one](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-one--cb4ac942527e196ada0c75a2.md) | 55 | `result-track:cb4ac942527e196ada0c75a2b88803e9e75ad6108bd516605685b68687422b1e` |
| 4 | `theorem` | [char_tensor](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-tensor--c87ebe95cb59c6a4b4d7b02b.md) | 60 | `result-track:c87ebe95cb59c6a4b4d7b02bd4f9fb342b9b295fddcd94047610f4d5c311ee66` |
| 5 | `theorem` | [char_iso](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-iso--3e27fffd37c0c5e99a711f83.md) | 64 | `result-track:3e27fffd37c0c5e99a711f83a474b679e135a80f79ab9e3c3012d225e5cacd82` |
| 6 | `theorem` | [char_conj](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-conj--c2fb7a6c78d5695d6570fc58.md) | 77 | `result-track:c2fb7a6c78d5695d6570fc5817ddc46bfc0661d5a6ca2a72e2a0fce64d1e967a` |
| 7 | `theorem` | [char_dual](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-dual--75bb6a412582a9e0c46e4bc9.md) | 81 | `result-track:75bb6a412582a9e0c46e4bc92b03a0d6a222eab73b5c653f8cfdb22077bcacf0` |
| 8 | `theorem` | [char_linHom](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-linhom--872126f572e4c8a02b4e1954.md) | 85 | `result-track:872126f572e4c8a02b4e1954c778416fa15c482903343c007c92a7bf5478fe69` |
| 9 | `theorem` | [average_char_eq_finrank_invariants](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/average-char-eq-finrank-invariants--4520e787f0636c404374cfb6.md) | 91 | `result-track:4520e787f0636c404374cfb669a8a552cb2947077c48527e47cb05d1d7d4529a` |
| 10 | `theorem` | [scalar_product_char_eq_finrank_equivariant](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/scalar-product-char-eq-finrank-equivariant--2e5a7967294764f6eba2b459.md) | 101 | `result-track:2e5a7967294764f6eba2b459a2fe5658a1c72e8491e2c37b22101444b00b887d` |
| 11 | `theorem` | [char_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean/declarations/char-orthonormal--730fb5db3feed7f2f7beb29a.md) | 124 | `result-track:730fb5db3feed7f2f7beb29a2a764b8f73c8d8bf30f204d0d2298cce5377bd60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
