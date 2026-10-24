# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.IsSupported.Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7554c07f7e1d04039458b5455c116af3ac280207",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7554c07f7e1d04039458b5455c116af3ac280207`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsStrictlySupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupported--d6cfabd0e4b21366434a0f16.md) | 48 | `declaration-track:d6cfabd0e4b21366434a0f16b8f3db585a633075f8545daa4fe70c3d5a9cf199` |
| 2 | `lemma` | [isZero_X_of_isStrictlySupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/iszero-x-of-isstrictlysupported--8dc330e1ab198a079ddd9c0a.md) | 51 | `result-track:8dc330e1ab198a079ddd9c0af953759b747e1aac5da1b2fd3359b4b346318d3d` |
| 3 | `lemma` | [isStrictlySupported_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupported-of-iso--ca7eef93eefe0bc485b0f736.md) | 58 | `result-track:ca7eef93eefe0bc485b0f736e4cbf9d68f725cdfd07f276efc94f571297fd76f` |
| 4 | `lemma` | [isStrictlySupported_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupported-op-iff--46e18324f40b664a053a3676.md) | 63 | `result-track:46e18324f40b664a053a3676b28f19ce00cd03ea76a63a6a82c653c647b2a389` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/instance--00de4a753b80fc7cae5e4cd9.md) | 68 | `declaration-track:00de4a753b80fc7cae5e4cd9ef82e6d2d23c1e6ed5e4d75d0ca24f9d5105752a` |
| 6 | `class` | [IsSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/issupported--da5890321b8284770b4c3a45.md) | 76 | `declaration-track:da5890321b8284770b4c3a45845542d4e8e4fcb722abd96892c6ada20a26530a` |
| 7 | `lemma` | [exactAt_of_isSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/exactat-of-issupported--bb818179849e67e520ecd6c1.md) | 79 | `result-track:bb818179849e67e520ecd6c1177826008cf5d4c6281a1a99f1412771508f053f` |
| 8 | `lemma` | [isSupported_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/issupported-of-iso--fb40fbf0c6bcb123c020c69f.md) | 85 | `result-track:fb40fbf0c6bcb123c020c69f07ff775bc00310e184f5943711e7dd4cfcf24290` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/instance--613939792bcbfd63cc2e51c4.md) | 89 | `declaration-track:613939792bcbfd63cc2e51c45cfd039d6257fcf6f4315a1823127a8c60a293c9` |
| 10 | `lemma` | [isSupported_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/issupported-op-iff--fa7a136e94aaec39331e8b62.md) | 95 | `result-track:fa7a136e94aaec39331e8b62d564ff751a4a8737e81e829b6a3a4f81b598aa9d` |
| 11 | `structure` | [IsStrictlySupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupportedoutside--e6cd8e206526b61420b58f1e.md) | 102 | `declaration-track:e6cd8e206526b61420b58f1edc091c885dc2339d135b0e6d9a9159cf3fe7872a` |
| 12 | `lemma` | [isStrictlySupportedOutside_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupportedoutside-op-iff--6d83b3f331b12faa7182c5fb.md) | 106 | `result-track:6d83b3f331b12faa7182c5fbf848b64f8124b8b1acd03b78bbe6c0544a7ba368` |
| 13 | `structure` | [IsSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/issupportedoutside--e38e9d7aa3bede961e7d1b51.md) | 112 | `declaration-track:e38e9d7aa3bede961e7d1b518d977f37ec457f7360e199e5fc2afef378ce3f36` |
| 14 | `lemma` | [isSupportedOutside_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/issupportedoutside-op-iff--6e3f206429d5b67f5c664769.md) | 116 | `result-track:6e3f206429d5b67f5c6647693fc2aa1223b04952160ef1b16e9aaaba93ad7199` |
| 15 | `lemma` | [IsStrictlySupportedOutside.isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/isstrictlysupportedoutside-issupportedoutside--246609bed909b2de28e2fcf1.md) | 121 | `result-track:246609bed909b2de28e2fcf1526bdc3f4ab9f3cd1c34b150ea4ae37031104cae` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/instance--702d73ecf88b00783682bbb9.md) | 127 | `declaration-track:702d73ecf88b00783682bbb92c8411daa0b5282b2c66b91098df178097eef9d1` |
| 17 | `lemma` | [isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/iszero-iff-isstrictlysupported-and-isstrictlysupportedoutside--58b43574e812c003c0e98a30.md) | 130 | `result-track:58b43574e812c003c0e98a30f1727c0bc95fa30c0cb418e29c599647b9630dd4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/instance--cea601c108a26d1e841a6687.md) | 148 | `declaration-track:cea601c108a26d1e841a66876b8b08d13a40b9ae71f5d98949d028f7371660ac` |
| 19 | `instance` | [map_isStrictlySupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantcd8dbc2c2ac22a47cd8106f3e5b7b60ccccb6c32761a94aec3c9fb01635d3a0e.lean/declarations/map-isstrictlysupported--c068e1cc76f8216d05f50ed6.md) | 158 | `declaration-track:c068e1cc76f8216d05f50ed69b8fc69169dd3a1060622eb8e5ebeb20d89276aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
