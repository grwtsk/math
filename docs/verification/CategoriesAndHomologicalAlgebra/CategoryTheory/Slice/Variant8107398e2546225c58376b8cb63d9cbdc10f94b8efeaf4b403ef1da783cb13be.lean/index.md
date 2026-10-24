# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a74ac0ad03f377f388bb2a5c3474229909f781ef",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a74ac0ad03f377f388bb2a5c3474229909f781ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/syntax--2df9dddf1c5f737200850445.md) | 40 | `declaration-track:2df9dddf1c5f737200850445953167e23e0860e8dd45705b79fec7eda44422fb` |
| 2 | `def` | [evalSlice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/evalslice--edc4ef3b10038735d94a8460.md) | 52 | `declaration-track:edc4ef3b10038735d94a8460aac43da767542d26021ba90c0f22207f17089619` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/elab--e69a8332a415304d227a9e77.md) | 66 | `declaration-track:e69a8332a415304d227a9e777ecb94f562163f0cc9bc4262e3ce905ec4cf914a` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/syntax--4d3717bdc96b6c1ea2fa04a5.md) | 72 | `declaration-track:4d3717bdc96b6c1ea2fa04a5ed0fa4caf300ff4555884db6f6969203c7bec607` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/macro-rules--f8d158a704320d5156975b19.md) | 73 | `declaration-track:f8d158a704320d5156975b193ea763406d3748a73bdc9ae40ab897b515ff8026` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/syntax--ff4bb81223d5fa7b295f9968.md) | 81 | `declaration-track:ff4bb81223d5fa7b295f99683ec5fa8bae95f7ec1894efa8be33985939df9ea4` |
| 7 | `macro_rules` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant8107398e2546225c58376b8cb63d9cbdc10f94b8efeaf4b403ef1da783cb13be.lean/declarations/macro-rules--26eca7f56d2fbc3a7e636cf6.md) | 82 | `declaration-track:26eca7f56d2fbc3a7e636cf6b28b5ff29a67ab181e8dbbc893615881e16e54e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
