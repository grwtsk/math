# Verification target: GRWTSK.Topology.GeneralTopology.FinTopCat.Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6e3154cf1d78c305f9c9eb8335453e86962e0a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6e3154cf1d78c305f9c9eb8335453e86962e0a`.

Source path: `GRWTSK/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTopCat](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/fintopcat--381513ef0d9101146fb396e1.md) | 23 | `declaration-track:381513ef0d9101146fb396e174149cf3e240cb50cd9a8c956c3ee8d4384e3f08` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--8e5f6a0d7d72ecb36738a292.md) | 30 | `declaration-track:8e5f6a0d7d72ecb36738a2928b96fd2aa123bb36fb4c08b376d74a16db020ea9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--8feda98f0e360ffe5e3caae9.md) | 33 | `declaration-track:8feda98f0e360ffe5e3caae991371b91e48cf56344041d6054e5dcfc8b8981b2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--a771c748ca6720961f9bf5f3.md) | 38 | `declaration-track:a771c748ca6720961f9bf5f3efa943ee6004ef4050e704d3b63c1542c57cf7d1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--fcb9fa26b51fec2d36ba2d9e.md) | 41 | `declaration-track:fcb9fa26b51fec2d36ba2d9edb5443e29e28d19ef5f4bf1f6a76e2eb371d6917` |
| 6 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/of--eecd3cb94e4614bac398e1f8.md) | 45 | `declaration-track:eecd3cb94e4614bac398e1f85a876b5114e98d0fc71a83e71641d102e6d76f79` |
| 7 | `theorem` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/coe-of--f27756fcaab96311286557f8.md) | 50 | `result-track:f27756fcaab96311286557f88fe061046ab31193c61d8c45ab6eb16cf6786651` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--bbe83b69c1463178f05813cb.md) | 55 | `declaration-track:bbe83b69c1463178f05813cbbc496d9d5e7fcb51853eb835be8f93544d10bbc2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--19ce9a5fa4d75247f86a93be.md) | 58 | `declaration-track:19ce9a5fa4d75247f86a93be6c87f70e3f47bab833f7278fe0261cb57865e051` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--fca534d5fa128d69c9327a27.md) | 62 | `declaration-track:fca534d5fa128d69c9327a2786b6e3a449fa8e536d6ff9bec20cddd832d62dfc` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--921dca0cfc5f54b2a11b09f7.md) | 65 | `declaration-track:921dca0cfc5f54b2a11b09f7332e2ba8d915d0aeba2cef09381d958c97c021a3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--c4fac0097035c2a0c8938068.md) | 74 | `declaration-track:c4fac0097035c2a0c8938068f63d8c85e6a720477a03b3e3acc6ebcff638b2a4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--ed6ae5031e44916b9bdd5c99.md) | 75 | `declaration-track:ed6ae5031e44916b9bdd5c991c703c6557d8993d08c094f8034460609ffd23d4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean/declarations/instance--0b53daabd81297802ca8df4f.md) | 79 | `declaration-track:0b53daabd81297802ca8df4fffe9e29d7ae0d369c85b29e29be61d35357c2b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
