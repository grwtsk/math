# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Presheaf.Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a6795c05ab1a9d1f0676b40d881dc45c08362d3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a6795c05ab1a9d1f0676b40d881dc45c08362d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Differentials.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/derivation--543cbb8ac9dc169e030864a4.md) | 53 | `declaration-track:543cbb8ac9dc169e030864a4fb5d89fbc33c5201420ac194abd8a3a1d8887866` |
| 2 | `lemma` | [congr_d](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/congr-d--40160838ee52739b15803cea.md) | 69 | `result-track:40160838ee52739b15803ceadc4c308bcffd877ef6eed89216358c5e7efb5ff3` |
| 3 | `lemma` | [d_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/d-one--b31d5ddc44c0dddb01f8e2d9.md) | 74 | `result-track:b31d5ddc44c0dddb01f8e2d9c3732a3d53b2485d7b4bbbcb7a7e9e40f294cfec` |
| 4 | `def` | [postcomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/postcomp--cceceb28eaf8b1a0b6c7619a.md) | 79 | `declaration-track:cceceb28eaf8b1a0b6c7619a44df34a2df970a7141c9c7b2a37f571c30ba9619` |
| 5 | `structure` | [Universal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/universal--d44b1925a23a45c0ad703ce4.md) | 90 | `declaration-track:d44b1925a23a45c0ad703ce4ec4724aeb0e8ecc5a1991314e8cc5da185a0e1f5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/instance--57c9444f639b036182b5d276.md) | 101 | `declaration-track:57c9444f639b036182b5d2764174f481832c679a618ca5d18b7b4968861e52d0` |
| 7 | `class` | [HasDifferentials](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/hasdifferentials--b1d497aa51c90637f36849d6.md) | 118 | `declaration-track:b1d497aa51c90637f36849d69ea520b3c96d1cd30d5e12c13d268c9045de75b3` |
| 8 | `abbrev` | [Derivation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/derivation--134b53b77df37178b3b06498.md) | 124 | `declaration-track:134b53b77df37178b3b064989e6cdaeff5bd77dd2f6744780fe816f05726b926` |
| 9 | `lemma` | [d_app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/d-app--1862ea0dbea46d9c5b76159f.md) | 131 | `result-track:1862ea0dbea46d9c5b76159f76d4196784c07efa651bba50bb43ff45bd525c3e` |
| 10 | `def` | [app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/app--c519a4d55b1aaf8feb9ecdb2.md) | 137 | `declaration-track:c519a4d55b1aaf8feb9ecdb25c5880a2734b69249289b2024274935eb89bba66` |
| 11 | `lemma` | [app_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/app-apply--a72c6e8fb221325ce2485a16.md) | 141 | `result-track:a72c6e8fb221325ce2485a166e5519eb2896b63a1435c6e31dbb75061e7891a6` |
| 12 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/mk--d6ab5d47b977dc5a27d21c8e.md) | 151 | `declaration-track:d6ab5d47b977dc5a27d21c8e9e2f4184c1efcd5be1008c45f026470ea462c8d2` |
| 13 | `lemma` | [mk_app](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/mk-app--a262295abe1f433600d7a6ee.md) | 159 | `result-track:a262295abe1f433600d7a6eeb139abfba0620c8573bedc7a30ddcccbbd6c09b8` |
| 14 | `def` | [Universal.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/universal-mk--7d5f5f22a98dad0ad6bd2146.md) | 162 | `declaration-track:7d5f5f22a98dad0ad6bd2146d3145cda04eb3c5048114c7223ddaa22e863f21d` |
| 15 | `def` | [relativeDifferentials'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/relativedifferentials--98f50028836fd058912be4af.md) | 182 | `declaration-track:98f50028836fd058912be4aff120b1399a3ea6254544a64d4ee876ec2be2cc92` |
| 16 | `lemma` | [relativeDifferentials'_map_d](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/relativedifferentials-map-d--03a2cbaabb21e7fe5f8dc76b.md) | 194 | `result-track:03a2cbaabb21e7fe5f8dc76bfa4d3100f6544dc5fd55bbd48be8482ac9d07b00` |
| 17 | `def` | [derivation'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/derivation--0264c2a0ca5ab7661197799d.md) | 203 | `declaration-track:0264c2a0ca5ab7661197799dafd0cedca5c1ebe6cf70179725515b20eb26c8a9` |
| 18 | `def` | [isUniversal'](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/isuniversal--583a07bd5f2a4d4ba47666f5.md) | 208 | `declaration-track:583a07bd5f2a4d4ba47666f5483c22c77a35b8ab0558160b9914837f8a316f96` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/declarations/instance--7eff0ec2902f8ca006d5189f.md) | 227 | `declaration-track:7eff0ec2902f8ca006d5189fe6bad40928e321c07ed4671e70ede81a76f5bff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
