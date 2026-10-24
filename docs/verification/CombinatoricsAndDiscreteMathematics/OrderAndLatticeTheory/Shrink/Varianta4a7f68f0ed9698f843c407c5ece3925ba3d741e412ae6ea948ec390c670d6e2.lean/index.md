# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Shrink.Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4df0834397f44d9a2973c222b7e9c48a1b7171b3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4df0834397f44d9a2973c222b7e9c48a1b7171b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--89a2987e03c3e195c26a1969.md) | 29 | `declaration-track:89a2987e03c3e195c26a19695caea5046550f675a2e7f8cb558bbffb0150c968` |
| 2 | `def` | [orderIsoShrink](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/orderisoshrink--6afe1a74027290e80d993242.md) | 35 | `declaration-track:6afe1a74027290e80d993242a215c819c11a3301dbaeb10d7900ae24f194d042` |
| 3 | `lemma` | [orderIsoShrink_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/orderisoshrink-apply--07f2bc097f1b3228ff6a8b84.md) | 46 | `result-track:07f2bc097f1b3228ff6a8b8467696da773fcd2daaab1686227f68cfd6938e622` |
| 4 | `lemma` | [orderIsoShrink_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/orderisoshrink-symm-apply--bcbbc5933ccc8f16b854ce8f.md) | 50 | `result-track:bcbbc5933ccc8f16b854ce8f26f34a3d2f423e1828e5e19503719961ba2c5623` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--657ab6b836c9442640615231.md) | 53 | `declaration-track:657ab6b836c9442640615231c2841e9dad97f9e5421ebbf18817fb01c5bad12c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--cec595c5cf9d2011634ab372.md) | 56 | `declaration-track:cec595c5cf9d2011634ab3721ce5f2db3a6bd59cd7fa30c82236a517a9e377c4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--a19c1fe5400b18b48d5405ef.md) | 60 | `declaration-track:a19c1fe5400b18b48d5405ef635f783068426f84dd23adac73bbf4886d6100dd` |
| 8 | `lemma` | [equivShrink_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/equivshrink-bot--fc77098bac15a5648ccb22d1.md) | 64 | `result-track:fc77098bac15a5648ccb22d16a47121788db993fdcb8816e48a4a26853b802c4` |
| 9 | `lemma` | [equivShrink_symm_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/equivshrink-symm-bot--b541d17845214de0a5920b6c.md) | 67 | `result-track:b541d17845214de0a5920b6ce45ba78ddf38e556f20b5dbf97caef4a3b6f60f5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--a65554d36d69bc102950b709.md) | 70 | `declaration-track:a65554d36d69bc102950b70953874b74daa43c1269e45d35a277a9fd7a0fc60d` |
| 11 | `lemma` | [equivShrink_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/equivshrink-top--08d8ec67919053117e3deb11.md) | 74 | `result-track:08d8ec67919053117e3deb119780c60167bd07f4a2492c50c6ae4e577ce69c0c` |
| 12 | `lemma` | [equivShrink_symm_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/equivshrink-symm-top--6a2886f86c8f8fa1d085d745.md) | 77 | `result-track:6a2886f86c8f8fa1d085d745e9c8bf56802571ee5435b849ded6f5c175463cb2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--949b7f39c8916ab4f8be8dc4.md) | 84 | `declaration-track:949b7f39c8916ab4f8be8dc423fb220fa7e076ea91dc38aae0091f565ee183df` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--2820869dc956b150808b5329.md) | 90 | `declaration-track:2820869dc956b150808b53295a38a484bedf4b4993afa8b07d551649a6e10e80` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--969354203ea0f5795067adc4.md) | 96 | `declaration-track:969354203ea0f5795067adc4e918f1667a036c06c4ef2b355f927c83d907da58` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--b4292b777ae4ab0a6fce974d.md) | 100 | `declaration-track:b4292b777ae4ab0a6fce974dfe7b0378d79a818ed02b3b8382b874aa473a4950` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Varianta4a7f68f0ed9698f843c407c5ece3925ba3d741e412ae6ea948ec390c670d6e2.lean/declarations/instance--dc16583c179dfc9f1f739097.md) | 104 | `declaration-track:dc16583c179dfc9f1f7390977ecfe14e787fa23036911751e4ef0837c18393b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
