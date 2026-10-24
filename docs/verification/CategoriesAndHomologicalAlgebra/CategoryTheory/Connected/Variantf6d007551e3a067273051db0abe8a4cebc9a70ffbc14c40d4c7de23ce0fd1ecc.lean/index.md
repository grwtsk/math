# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdcc1aeca34b9494bd6be8d985e2cddca0e3cddd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdcc1aeca34b9494bd6be8d985e2cddca0e3cddd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natTransInOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/nattransinover--d69197c2446d2518e0a34b5d.md) | 36 | `declaration-track:d69197c2446d2518e0a34b5d27504c0a2fb0bde4aee2941d0e66a8c3501dab6b` |
| 2 | `def` | [raiseCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/raisecone--4b118f55910a895876c609af.md) | 44 | `declaration-track:4b118f55910a895876c609afaa901c73ad1f1ba9e96c221f630a6829558cf291` |
| 3 | `theorem` | [raised_cone_lowers_to_original](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/raised-cone-lowers-to-original--da1dc80f38f28de7ccb47202.md) | 56 | `result-track:da1dc80f38f28de7ccb47202a1151c873d53ce25d09bbe6bb78d13b3338735bc` |
| 4 | `def` | [raisedConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/raisedconeislimit--f85934d2d4238a7d635f71c9.md) | 61 | `declaration-track:f85934d2d4238a7d635f71c91f39b0bcf766990d1d4f22079e139978c9f08d9d` |
| 5 | `instance` | [forgetCreatesConnectedLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/forgetcreatesconnectedlimits--8d2762dc3ac462821622e08d.md) | 74 | `declaration-track:8d2762dc3ac462821622e08d2fbcc779a2ca3a5b24cc484d9fa6cfe8ab580068` |
| 6 | `instance` | [has_connected_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc.lean/declarations/has-connected-limits--f8c4c850a3ff3dc17d9c183d.md) | 83 | `declaration-track:f8c4c850a3ff3dc17d9c183dfa25ab7a737d6ddfdc93464cdc0eba1bdd73b19a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
