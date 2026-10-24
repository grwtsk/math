# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "becaff4870762d9ef8ce4460c426710b38c25df9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `becaff4870762d9ef8ce4460c426710b38c25df9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.IsCardinalForSmallObjectArgument` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSmallObjectArgument](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/hassmallobjectargument--c816201a79ee7457b1fe6583.md) | 92 | `declaration-track:c816201a79ee7457b1fe6583b94e765841d98ede3f1edb56abb854cc23a71619` |
| 2 | `def` | [smallObjectκ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/smallobject--989b3675be3e74dda46152a9.md) | 100 | `declaration-track:989b3675be3e74dda46152a9b2823bc5c6195759eb1ebcbe0368356ec3615cdf` |
| 3 | `instance` | [smallObjectκ_isRegular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/smallobject-isregular--32ce3872d4d585f9efc0676c.md) | 103 | `declaration-track:32ce3872d4d585f9efc0676c1a00a88e712380420e35ea1baf4e5029a6044001` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/instance--466d1ed83cbf62b87d1706d8.md) | 106 | `declaration-track:466d1ed83cbf62b87d1706d8184ef88918bc40cc14ebc169affdca78766637c6` |
| 5 | `instance` | [isCardinalForSmallObjectArgument_smallObjectκ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/iscardinalforsmallobjectargument-smallobject--c09ab6a7fa3795d5e5f60bef.md) | 109 | `declaration-track:c09ab6a7fa3795d5e5f60bef5ef9fb48b4ac03893172a03c6b3c0cdd55079e10` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/instance--4e1f0ec2930b78f5cfcbfc6a.md) | 113 | `declaration-track:4e1f0ec2930b78f5cfcbfc6af6a791f07ba77efc805e6401a3b50e16cd319af4` |
| 7 | `lemma` | [llp_rlp_of_hasSmallObjectArgument'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/llp-rlp-of-hassmallobjectargument--698fa534b6bb3e9810415be2.md) | 121 | `result-track:698fa534b6bb3e9810415be287d8a2f2c89ed29a36fbece97143aa99d30cf978` |
| 8 | `lemma` | [llp_rlp_of_hasSmallObjectArgument](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant938a4838c6568f7171a2b0d6e1817c650ab6e08078f503006ba3ec75f841bc3e.lean/declarations/llp-rlp-of-hassmallobjectargument--0590d15c365a94518f578f0d.md) | 131 | `result-track:0590d15c365a94518f578f0df8aa17da3a0c08eaaecade15eba47ef64ab49824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
