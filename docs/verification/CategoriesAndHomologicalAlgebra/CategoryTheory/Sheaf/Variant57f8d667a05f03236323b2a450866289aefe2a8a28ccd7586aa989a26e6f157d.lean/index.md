# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8a6ad160fa7e6557864ed7da11c3467e96158dd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8a6ad160fa7e6557864ed7da11c3467e96158dd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Presheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/declarations/freeyoneda--d93bb81cf6f8e1d049de83ee.md) | 41 | `declaration-track:d93bb81cf6f8e1d049de83ee6e605f0f90dc546016fabd16be3719984e25b95f` |
| 2 | `def` | [freeYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/declarations/freeyonedahomequiv--3427486ef1b99fa6b10c89d8.md) | 47 | `declaration-track:3427486ef1b99fa6b10c89d8dce3aece26f89b4e90630a4816dd380bd46d8603` |
| 3 | `lemma` | [isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/declarations/isseparating--7a71bc181f7d509f187422ba.md) | 51 | `result-track:7a71bc181f7d509f187422ba5b52162e792af532cfed03ba2fe3fe6d098abf02` |
| 4 | `lemma` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/declarations/isseparator--f2f1b80e2872bbdfd8f338e2.md) | 60 | `result-track:f2f1b80e2872bbdfd8f338e283ce51a293640215e15e8a9a96c6e5559f161c91` |
| 5 | `instance` | [hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant57f8d667a05f03236323b2a450866289aefe2a8a28ccd7586aa989a26e6f157d.lean/declarations/hasseparator--9e9fd900662aa2ef2cd602ba.md) | 66 | `declaration-track:9e9fd900662aa2ef2cd602baf26d642c43bcf0731b3926f9f380952c87e9014b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
