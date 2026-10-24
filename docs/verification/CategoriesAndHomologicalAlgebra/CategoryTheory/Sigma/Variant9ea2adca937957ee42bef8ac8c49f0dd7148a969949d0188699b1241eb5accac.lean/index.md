# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sigma.Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1a619ccae078148bbad4639e0fca335fbce55e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1a619ccae078148bbad4639e0fca335fbce55e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sigma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/sigma--4bd51e2c49e44a754ae3ce1a.md) | 25 | `declaration-track:4bd51e2c49e44a754ae3ce1a59ad4c6ad41331ba598f27201d3a65e3f024c3d1` |
| 2 | `def` | [Pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/pi--436a2c6a0f54c49094125974.md) | 30 | `declaration-track:436a2c6a0f54c49094125974a6f3f3f3071e164800a53af1602d61fe5c9548b9` |
| 3 | `instance` | [Sigma.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/sigma-inhabited--f80a9b36a636c548f3ebda4d.md) | 33 | `declaration-track:f80a9b36a636c548f3ebda4def50a6cce046a18e791630e3a15aaf2356f0efa2` |
| 4 | `instance` | [Pi.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/pi-inhabited--d056d4c6fb472545cfff73f9.md) | 36 | `declaration-track:d056d4c6fb472545cfff73f943ef5984a840398be0fe189d56e08eb821644ace` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/instance--411a67700b756c919a05a56b.md) | 41 | `declaration-track:411a67700b756c919a05a56b2d1cc30467d0d552504cf0b3261317f8f7587ce2` |
| 6 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/p--2d5b48347619a85f228c1461.md) | 48 | `declaration-track:2d5b48347619a85f228c1461709d7c5d87aee801c77fed1d6c31d5cc8ca40644` |
| 7 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/abs--05b857e19b0f70ebb254962b.md) | 52 | `declaration-track:05b857e19b0f70ebb254962b77fe0550ec9531ddae060905c6f329bc1c8b395a` |
| 8 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/repr--824e1477688f69057c6292c6.md) | 56 | `declaration-track:824e1477688f69057c6292c66fbc778dc3b3a765f9ef91d67485f1de601fbaec` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/instance--486b18e7b020818c874f6ebf.md) | 61 | `declaration-track:486b18e7b020818c874f6ebf9f0b98b15dd9344c937b3cb22bdca521e828e080` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/instance--18796a53d91febcdf9d08b3b.md) | 73 | `declaration-track:18796a53d91febcdf9d08b3b7befe07d9ed6aceeb5915adb7aa725bd3acc424f` |
| 11 | `def` | [P](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/p--1f2a95d382a45db138a888cc.md) | 78 | `declaration-track:1f2a95d382a45db138a888cc3c1dd4497df9c9b9395f435d7679df42bd9aae8a` |
| 12 | `def` | [abs](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/abs--06e12f901699c519fe014a01.md) | 82 | `declaration-track:06e12f901699c519fe014a011c12b6c956cda26edc54fb5d57a0d1b08a51d123` |
| 13 | `def` | [repr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/repr--6e35e26bd94252b76ebf9509.md) | 86 | `declaration-track:6e35e26bd94252b76ebf9509455b13b9543412a22d797d2eec168fe53a88e6d1` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sigma/Variant9ea2adca937957ee42bef8ac8c49f0dd7148a969949d0188699b1241eb5accac.lean/declarations/instance--f80fa5d634a3e13b1d419441.md) | 89 | `declaration-track:f80fa5d634a3e13b1d419441cd0218b2a9180f9a4d2f1963a3da4633d2da0004` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
