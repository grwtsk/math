# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "969adb23ea7804d5c1721a36d3159e8698ace622",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `969adb23ea7804d5c1721a36d3159e8698ace622`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/image--23455a45c0815cf48ce8d41b.md) | 36 | `declaration-track:23455a45c0815cf48ce8d41b9f29a526cf25da7d0fff6e2b49639e50a1f02f08` |
| 2 | `def` | [image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/image--55b575b058e8fb3db0d3b8b4.md) | 40 | `declaration-track:55b575b058e8fb3db0d3b8b495bd6b467bb29e1439ff88d775b9251f8af07ca3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/instance--b63d8e7f8598b61824595930.md) | 43 | `declaration-track:b63d8e7f8598b61824595930942d01f9ec730f497771d805e8a304c72a451bad` |
| 4 | `def` | [factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/factorthruimage--4b165eec2d876a2749704fe8.md) | 47 | `declaration-track:4b165eec2d876a2749704fe8f7099d10b2082290139d101ac4db86dae8b67692` |
| 5 | `theorem` | [image.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/image-fac--404d2f6c7ce14241fe97e1c8.md) | 50 | `result-track:404d2f6c7ce14241fe97e1c865c1c10cf622470559318108a279e3531eebaa51` |
| 6 | `def` | [image.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/image-lift--de4faaf2b561be8aa8f807c7.md) | 59 | `declaration-track:de4faaf2b561be8aa8f807c704cb4f366b354f8dcb1af98b5a30b444ce53f392` |
| 7 | `theorem` | [image.lift_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/image-lift-fac--c534217fdefd8ffbcccd8a74.md) | 80 | `result-track:c534217fdefd8ffbcccd8a746740ae065b58cac4ef6be7e6e0629f10222d1ea7` |
| 8 | `def` | [monoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/monofactorisation--b7a19e6fbe95aacc12791264.md) | 89 | `declaration-track:b7a19e6fbe95aacc12791264647b80277c2106997fe034641326122bdc995f8e` |
| 9 | `def` | [isImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/isimage--c56566c2e9a722190bc535e6.md) | 96 | `declaration-track:c56566c2e9a722190bc535e68ee14b5997d12635833c9230e5dc46358fd6e20a` |
| 10 | `def` | [imageIsoRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant6f805455715980486c6bbcb451738c6dcca391877d086906a7fd5c8974d4e72b.lean/declarations/imageisorange--d3a773eb9d94f3888ef48a9a.md) | 103 | `declaration-track:d3a773eb9d94f3888ef48a9a5f0639ff77e074819a7b51711e4824b96a35bb61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
