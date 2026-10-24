# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b4fa04fc5ead5b2004c574e91ee1606d37fe579",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b4fa04fc5ead5b2004c574e91ee1606d37fe579`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Perm` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm--173fa2af456fb4d36df0f5de.md) | 39 | `declaration-track:173fa2af456fb4d36df0f5dec66478616c6980c918671a7612a652ead2d36606` |
| 2 | `theorem` | [perm_iff_toArray_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-iff-toarray-perm--8713c0655eb45addeaf2e84e.md) | 45 | `result-track:8713c0655eb45addeaf2e84e8e7a9bccde4f306ec5da738fdf5c73e36d0c6ff7` |
| 3 | `theorem` | [perm_iff_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-iff-tolist-perm--f8ace0bf11bbb12d0d739771.md) | 48 | `result-track:f8ace0bf11bbb12d0d739771e57e20a13e53f2e762aefcd6327564d6fc6540be` |
| 4 | `theorem` | [Perm.of_toList_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-of-tolist-perm--01b299f71f92387579a73871.md) | 51 | `result-track:01b299f71f92387579a73871e06d3cd4c79408c9b845450713c8de1faef48787` |
| 5 | `theorem` | [Perm.toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-tolist--90506ee15b4113f4333abcae.md) | 54 | `result-track:90506ee15b4113f4333abcaef164ad7af00f27003a0c31a32eff26863bc40c77` |
| 6 | `theorem` | [perm_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-mk--c1c9d0d8e8e2f0ce3186f8b1.md) | 57 | `result-track:c1c9d0d8e8e2f0ce3186f8b11d6e937716050c940ed6f7869d8cd5c0b7c27c5c` |
| 7 | `theorem` | [toArray_perm_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/toarray-perm-iff--197752ea7f7459c418974870.md) | 61 | `result-track:197752ea7f7459c4189748700a2d6f0d969bef307b38afc61cb9c0f98f1c74d4` |
| 8 | `theorem` | [perm_toArray_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-toarray-iff--cb82fb2d153ce74c3c1a84d1.md) | 68 | `result-track:cb82fb2d153ce74c3c1a84d1d354280fea230c810e3f9f5abb8b50e41b884406` |
| 9 | `theorem` | [Perm.refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-refl--de4bb00487d0afb44b77b841.md) | 75 | `result-track:de4bb00487d0afb44b77b84140962cd6188caede32ccca57311e28477e9c5002` |
| 10 | `theorem` | [Perm.rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-rfl--9ceb3421a876b33741666853.md) | 79 | `result-track:9ceb3421a876b3374166685397e660c61d5a2fe64793c9d83bad4d636fc1ab94` |
| 11 | `theorem` | [Perm.of_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-of-eq--7271c58e6b500a62c201853c.md) | 81 | `result-track:7271c58e6b500a62c201853c575b780ed8e618bf76a8af04f8f6331b3460b1e9` |
| 12 | `theorem` | [Perm.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-symm--3cc5bae14241c30a205c2377.md) | 84 | `result-track:3cc5bae14241c30a205c2377397360856d3bbc8b7bb1b52e388aea0d2eb0ca1b` |
| 13 | `theorem` | [Perm.trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-trans--bac1f7ff9488d9382fb4a21a.md) | 89 | `result-track:bac1f7ff9488d9382fb4a21afc9d0518a618ce943e063e2937f20f495487a865` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/instance--59aa425e663ba2cbf0afb554.md) | 94 | `declaration-track:59aa425e663ba2cbf0afb554bbf39850fed64ca4e7ed93837ab6b336502c536b` |
| 15 | `theorem` | [perm_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-comm--6bf38f093a189f9ebe9a37bd.md) | 97 | `result-track:6bf38f093a189f9ebe9a37bdd0f473ad30af1d47f150bd50e7371a6cf2064972` |
| 16 | `theorem` | [Perm.mem_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-mem-iff--78cbdc6543626a3bb796505b.md) | 99 | `result-track:78cbdc6543626a3bb796505b7d62902538ef139ad89c59e2a55df87c2d29104c` |
| 17 | `theorem` | [Perm.append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-append--a35943b2f1e377e7622026ae.md) | 105 | `result-track:a35943b2f1e377e7622026aeb5ee69b5c6cb6c84211b2f75d4b05aa8b1a252a4` |
| 18 | `theorem` | [Perm.push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-push--990e9c4f2a354a0890108c48.md) | 111 | `result-track:990e9c4f2a354a0890108c48184924be1b9679a2cf0f9aff59e769e965378276` |
| 19 | `theorem` | [Perm.push_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/perm-push-comm--c2f8698cc83b5510a8afea04.md) | 117 | `result-track:c2f8698cc83b5510a8afea0444375ba69c3abdf0f9225088f38cf99427b49a17` |
| 20 | `theorem` | [swap_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/swap-perm--57acb729ef6b4dc3397bb0ce.md) | 124 | `result-track:57acb729ef6b4dc3397bb0ce1462e0a7c9f1aa8f0193fcf28fc8025d7d693c6f` |
| 21 | `theorem` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant00731dbccad7f4a52b0e940c9f2cf65ba220fda4ebdbb4397ed414dd3afe1c7c.lean/declarations/extract--75be705f08c6fdafa42c43bd.md) | 133 | `result-track:75be705f08c6fdafa42c43bd28088d866891d7264bd0309bfbdd34d6758e9f3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
