# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5539908fff981917a655e235ff979788d6fbea7f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5539908fff981917a655e235ff979788d6fbea7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Presheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/declarations/freeyoneda--b2d270727b18e5550614214c.md) | 33 | `declaration-track:b2d270727b18e5550614214c82a127c4d34d155c817d62142e3d49a229f53c9d` |
| 2 | `def` | [freeYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/declarations/freeyonedahomequiv--afe8ca19ac27de1601df6ae9.md) | 39 | `declaration-track:afe8ca19ac27de1601df6ae91ea381fd6ea91d2be0d91aa148aecc82ebd2d3b9` |
| 3 | `lemma` | [isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/declarations/isseparating--5a5ffd816c0247277e2a0331.md) | 43 | `result-track:5a5ffd816c0247277e2a0331c0c61294a85628dc938fc74b3e2da5259e4f1122` |
| 4 | `lemma` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/declarations/isseparator--c92331bb8410377b839ccacb.md) | 52 | `result-track:c92331bb8410377b839ccacb209b9aadcbfd366ddeab7e9cf428bfcd491944a3` |
| 5 | `instance` | [hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantd0e93787ff8cbec7de1284a76d1de056bf5b930aafabb686a003efbad61bd3ab.lean/declarations/hasseparator--401946b9ac81ebbd0d67f5d8.md) | 58 | `declaration-track:401946b9ac81ebbd0d67f5d851db6c972b58664384eec32f0cc4bec65051ca23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
